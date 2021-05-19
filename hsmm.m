% Author: Shun-Zheng Yu
%
% HSMM solves three fundamental problems for Hidden Semi-Markov Model (or explicit duration hidden
% Markov model) using a new Forward-Backward algorithm published in
%    IEEE Signal Processing Letters, Vol. 10, no. 1, pp. 11-14, January 2003: 
%   ¡°An Efficient Forward-Backward Algorithm for an Explicit Duration Hidden Markov Model,¡±  
%    by  S-Z. Yu and H. Kobayashi            
% 
%  This program is free software; you can redistribute it and/or
%  modify it under the terms of the GNU General Public License
%  as published by the Free Software Foundation; either version
%  2 of the License, or (at your option) any later version.
%  http://www.gnu.org/licenses/gpl.txt
%
% Update on Nov. 2014
%
%++++++++ The hidden semi-Markov model +++++++++++
% M               Total number of states
% N               Number of observation sequences
% MT              Lengths of the observation sequences: MT=(T_1,...,T_N)
% MO              Set of the observation sequences: MO=[O^1,...,O^N], O^n is the n'th obs seq.
% D               The maximum duration of states
% K               The total number of observation values
% PAI(1:M,1:1)    the initial probability of states
%
% A(1:M,1:M)      The state Transition Probability Matrix
% for r=1:M
%     A(r,r)=0;
% end
%
% P(1:M,1:D);      The probability of state duration
%
% B(1:M,1:K)       The observation probability distribution
%
for ir=1:40      % Number of iterations (here the maximum is 40)
    A_est=zeros(M,M);
    P_est=zeros(M,D);
    B_est=zeros(M,K);
    PAI_est=zeros(M,1);
    for on=1:N	 % for each observation sequence
        O=MO(:,on);	 % the n'th observation sequence
        T=MT(on);      % the length of the n'th obs seq
        %
        %++++++++++++++++++     Forward     +++++++++++++++++
        %---------------    Initialization    ---------------
        ALPHA=zeros(M,D+1);         			% the forward variable
        ALPHA(:,1:D)=repmat((PAI.*B(:,O(1))),1,D).*P;	% Equ.(3)
        c(1)=1/sum(sum(ALPHA));     			% scaling factor to avoid possible underflows
        ALPHA=ALPHA.*c(1);
        ALPHAm1=zeros(M,T);
        ALPHAm1(:,1)=ALPHA(:,1);
        ALPHAm1Amn=zeros(M,T);
        %---------------    Induction    ---------------
        for t=2:T
            ALPHAm1Amn(:,t-1)=(ALPHA(:,1)'*A)';			
            EL=repmat((ALPHAm1Amn(:,t-1).*B(:,O(t))),1,D);
            EL=EL.*P;
            ALPHA(:,1:D)=ALPHA(:,2:D+1).*repmat(B(:,O(t)),1,D)+EL;	%Equ.(2)
            c(t)=1/sum(ALPHA(:));
            ALPHA=ALPHA.*c(t);
            ALPHAm1(:,t)=ALPHA(:,1);
        end
        %++++++++ To check if the likelihood is increased ++++++++
        lkh=-sum(log(c));       % the log likelihood
        if ir>1
            if lkh<=lkh1
                break;
            end
        end
        %++++++++ Backward and Parameter Re-estimation ++++++++
        %---------------    Initialization    ---------------
        BETA=ones(M,D);         % the backward variable and Equ.(7)
        GAMMA0=sum(ALPHA,2);						%Equ.(13)
        GAMMAmn=zeros(M,1);
        GAMMAnm=zeros(M,1);
        B_est(:,O(T))=B_est(:,O(T))+GAMMA0;
        [X,S_est(T)]=max(GAMMA0);
        %---------------    Induction    ---------------
        for t=(T-1):-1:1
            bm=B(:,O(t+1)).*c(t+1);
            EB=sum((P.*BETA),2);
            EB=bm.*EB;
            %% for estimate of A
            ROU=(ALPHAm1(:,t)*EB').*A;
            A_est=A_est+ROU;						%Equ.(8) for ZETA_{t+1}(m,n)
            %% for estimate of P
            P_est=P_est+repmat((ALPHAm1Amn(:,t).*bm),1,D).*P.*BETA;	%Equ.(9) for ETA_{t+1}(m,d)
            %% for estimate of state at time t
            GAMMAmn=GAMMAmn+sum(ROU,2);
            GAMMAnm=GAMMAnm+sum(ROU',2);
            GAMMA=GAMMA0+GAMMAmn-GAMMAnm;				%Equ.(12) for GAMMA_t(m)
            I=find(GAMMA<0);						    %Due to the calculation precision, 
                                        %GAMMAmn-GAMMAnm may introduce a 
                                        %very small negtive number. 
            GAMMA(I)=0;
            clear I;
            GAMMA=GAMMA./sum(GAMMA);
            [X,S_est(t)]=max(GAMMA);
            %% for estimate of B
            B_est(:,O(t))=B_est(:,O(t))+GAMMA;
            %% for update of backward variable
            BETA(:,2:D)=repmat(bm,1,D-1).*BETA(:,1:D-1);		%Equ.(5)
            BETA(:,1)=A*EB;						%Equ.(6)
        end
        bm=B(:,O(1)).*c(1);
        %P_est=P_est+repmat((ALPHAm1Amn(:,1).*bm),1,D).*P.*BETA;	%error
        P_est=P_est+repmat((PAI.*bm),1,D).*P.*BETA;			%Equ.(9) for t=1.
                                        %i.e.,ETA_1(m,d)=ALPHA_1(m,d).*BETA_1(m,d)
        PAI_est=PAI_est+GAMMA./sum(GAMMA);
    end								% End for multiple observation sequences
    A0=A;
    B0=B;
    P0=P;
    PAI0=PAI;
    S_est0=S_est;
    lkh0=lkh;
    PAI=PAI_est./sum(PAI_est);
    A=A_est./repmat(sum(A_est,2),1,M);
    B=B_est./repmat(sum(B_est,2),1,K);
    P=P_est./repmat(sum(P_est,2),1,D);
    %++++++++ To check if the model is improved ++++++++
    if ir>1
        if (lkh-lkh1)<0.5
            break
        end
    %    if sum(sum(abs(A-A0)))/M<=0.001
    %        break
    %    end
    end
    %++++++++++++++++++++++++++++++++++++++++++++++++++++
    lkh1=lkh;
end								% End for iteration.
Stateseq=S_est0;
Loglikelihood=lkh0;
A=A0;
B=B0;
P=P0;
PAI=PAI0;
