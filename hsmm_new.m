function [PAI,A,B,P,Qest,lkh]=hsmm_new(PAI,A,B,P,MO,IterationNo,MT)
% 
% Author: Shun-Zheng Yu
% 
% HSMM solve three fundamental problems for Hidden Semi-Markov Model using a new Forward-Backward algorithm
% Usage: [PAI,A,B,P,Stateseq,Loglikelihood]=hsmm_new(PAI,A,B,P,O,IterationNo,MT)
% MaxIterationNo=0: estimate StateSeq and calculate Loglikelihood only; 
% MaxIterationNo>1: re-estimate parameters, estimate StateSeq and Loglikelihood.
% First use [A,B,P,PAI,Vk,O,K]=hsmmInitialize(O,M,D,K) to initialize
% 
% Ref: Practical Implementation of an Efficient Forward-Backward Algorithm for an Explicit Duration Hidden Markov Model
% by Shun-Zheng Yu and H. Kobayashi
% IEEE Transactions on Signal Processing, Vol. 54, No. 5, MAY 2006, pp. 1947-1951 
% 
%  This program is free software; you can redistribute it and/or
%  modify it under the terms of the GNU General Public License
%  as published by the Free Software Foundation; either version
%  2 of the License, or (at your option) any later version.
%  http://www.gnu.org/licenses/gpl.txt
%  
%  Updated Nov.2014
%
%  N               Number of observation sequences
%  MT              Lengths of the observation sequences: MT=(T_1,...,T_N)
%  MO              Set of the observation sequences: MO=[O^1,...,O^N], O^n is the n'th obs seq.
%++++++++ Markov Model +++++++++++
M=length(PAI);               %The total number of states
N=size(O,2);                 %Number of observation sequences
D=size(P,2);                 %The maximum duration of states
K=size(B,2);                 %The total number of observation values
%----------------------------------------------------
ALPHA=zeros(M,D);
bmx=zeros(M,T);
S=zeros(M,T);
E=zeros(M,T);
BETA=ones(M,D);
Ex=ones(M,D);
Sx=ones(M,D);
GAMMA=zeros(M,1);
Pest=zeros(M,D);
Aest=zeros(M,M);
Best=zeros(M,K);
PAIest=zeros(M,1);
Qest=zeros(T,1);

ir1=max(1,IterationNo);

for ir=1:ir1
    Aest(:)=0;
    Pest(:)=0;
    Best(:)=0;
    PAIest(:)=0;
    for on=1:N	 % for each observation sequence
        O=MO(:,on);	 % the n'th observation sequence
        T=MT(on);        % the length of the n'th obs seq
        
        %    starttime=clock;
        %++++++++++++++++++     Forward     +++++++++++++++++
        %---------------    Initialization    ---------------
        ALPHA(:)=0; ALPHA=repmat(PAI,1,D).*P;		%Equation (13)
        r=(B(:,O(1))'*sum(ALPHA,2));			%Equation (3)
        bmx(:,1)=B(:,O(1))./r;				%Equation (2)
        E(:)=0; E(:,1)=bmx(:,1).*ALPHA(:,1);		%Equation (5)
        S(:)=0; S(:,1)=A'*E(:,1);			%Equation (6)
        lkh=log(r);
        %---------------    Induction    ---------------
        for t=2:T
            ALPHA=[repmat(S(:,t-1),1,D-1).*P(:,1:D-1)+repmat(bmx(:,t-1),1,D-1).*ALPHA(:,2:D),S(:,t-1).*P(:,D)];		%Equation (12)
            r=(B(:,O(t))'*sum(ALPHA,2));		%Equation (3)
            bmx(:,t)=B(:,O(t))./r;			%Equation (2)
            E(:,t)=bmx(:,t).*ALPHA(:,1);		%Equation (5)
            S(:,t)=A'*E(:,t);				%Equation (6)
            lkh=lkh+log(r);
        end
        %++++++++ To check if the likelihood is increased ++++++++
        if ir>1
            %    clock-starttime
            if (lkh-lkh1)/T<0.001
                break
            end
        end
        lkh1=lkh;
        %++++++++ Backward and Parameter Restimation ++++++++
        %---------------    Initialization    ---------------
        
        Aest=Aest+E(:,T)*ones(1,M);  %Since T_{T|T}(m,n) = E_{T}(m) a_{mn}
        GAMMA=bmx(:,T).*sum(ALPHA,2);
        Best(:,O(T))=Best(:,O(T))+GAMMA;
        [X,Qest(T)]=max(GAMMA);
        
        BETA=repmat(bmx(:,T),1,D);				%Equation (7)
        Ex=sum(P.*BETA,2);					%Equation (8)
        Sx=A*Ex;						%Equation (9)
        
        %---------------    Induction    ---------------
        for t=(T-1):-1:1
            %% for estimate of A
            Aest=Aest+E(:,t)*Ex';
            %% for estimate of P
            Pest=Pest+repmat(S(:,t),1,D).*BETA;
            %% for estimate of state at time t
            GAMMA=GAMMA+E(:,t).*Sx-S(:,t).*Ex;
            GAMMA(GAMMA<0)=0;           % eleminate errors due to inaccurace of the computation.
            [X,Qest(t)]=max(GAMMA);
            %% for estimate of B
            Best(:,O(t))=Best(:,O(t))+GAMMA;
            
            BETA=repmat(bmx(:,t),1,D).*[Sx,BETA(:,1:D-1)];	%Equation (14)
            Ex=sum(P.*BETA,2);					%Equation (8)
            Sx=A*Ex;						%Equation (9)
        end
        
        Pest=Pest+repmat(PAI,1,D).*BETA;    %Since D_{1|T}(m,d) = \PAI(m) P_{m}(d) \Beta_{1}(m,d)
        PAIest=PAIest+GAMMA./sum(GAMMA);
    end								% End for multiple observation sequences

    if IterationNo>0            % re-estimate parameters
        PAI=PAIest./sum(PAIest);
        Aest=Aest.*A;   A=Aest./repmat(sum(Aest,2),1,M);
        B=Best./repmat(sum(Best,2),1,K);
        Pest=Pest.*P;   P=Pest./repmat(sum(Pest,2),1,D);
    end

end
