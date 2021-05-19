function [A,B,P,PAI,Vk,MO,K]=hsmmInitialize(MO,M,D,K,MT)
% 
% Author: Shun-Zheng Yu
%
% To initialize the matrixes of A,B,P,PAI for hsmm_new.m, to get 
% the observable values and to transform the observations O
% from values to their indexes.
%
% Usage: [A,B,P,PAI,Vk,O,K]=hsmmInitialize(O,M,D,K)
% 
%  N:  Number of observation sequences
%  MT: Lengths of the observation sequences: MT=(T_1,...,T_N)
%  MO: Set of the observation sequences: MO=[O^1,...,O^N], O^n is the n'th obs seq.
%  M:  total number of states
%  D:  maximum duration of states
%  K:  total number of observable values
%
%  A: initial values of state transition probability matrix
%  B: initial values of observation probability matrix
%  P: initial values of state duration probability matrix
%  PAI: initial values of starting state probability vector
%  Vk: the set of observable values
%
%  
%  Updated Nov.2014
%
%
N=size(MO,2);
O=MO(1:MT(1),1);            % a vector of multiple observation sequences
if N>1
    for on=2:N              % for each observation sequence
        T=MT(on);           % the length of the n'th obs seq
        O=[O;MO(1:T,on)];   % the n'th observation sequence
    end
end

[V,I]=sort(O);              % sort the observation
V=diff([0;V]);              % find the same observable values
Vk=V(V>0);                  % get the set of observable values
Vk=cumsum(Vk);
if length(Vk)<K             % compare K with the number of observables
    K=length(Vk);           % let K<=|Vk|
end
if K<M
    M=K;                    % num of observables must be >= num of states
end
V(V>0)=1;                   % get the cumulative distribution of observables
V=cumsum(V);
V=floor(V./max(V).*K)+1;    % divide the observables into K periods

% Associate observations with states
KM=ceil(length(Vk)/M);
Vk(KM*M)=Vk(end);
Vk1=zeros(KM,M);
Vk1(:)=Vk(1:KM*M);
lambda=mean(Vk1);
for i=1:K
    ss(i)=sum(log(1:i));
end
B=exp(log(lambda')*(1:K)-ones(M,1)*ss-lambda'*ones(1,K));
B=B+(max(B')'.*0.01)*ones(1,K);
B=B./(sum(B')'*ones(1,K));      %observation probability distribution matrix

%Map the observations to indices 
O(I)=V; 
MO(1:MT(1),1)=O(1:MT(1));
O(1:MT(1))=[];
if N>1
    for on=2:N                  % for each observation sequence
        T=MT(on);               % the length of the n'th obs seq
        MO(1:T,on)=O(1:T);      % the n'th observation sequence
        O(1:T)=[];
    end
end

% other initial probabilities
%    PAI=rand(M,1)+1;
PAI=ones(M,1);
PAI=PAI./sum(PAI);              %starting state probabilities

A=ones(M);
%   A=rand(M)+1;
%    for i=1:M
%       A(i,i)=0;
%    end
A=A./(sum(A')'*ones(1,M));      %Transition Probability Matrix of states

%   P=0.99.*exp(log(ones(M,1).*0.01)*(0:D-1));
%   P=rand(M,D)+1;
%   P=ones(M,D);
P=repmat((1:D).^2,M,1);
P=P./(sum(P')'*ones(1,D));
