# HSMM_codes_and_Related_literatures
HSMMs
A hidden semi-Markov model (HSMM) is a statistical model. In this model, an observation sequence is assumed to be governed by an underlying semi-Markov process with unobserved (hidden) states. Each hidden state has a generally distributed duration, which is associated with the number of observations produced while in the state, and a probability distribution over the possible observations.

        Based on this model, the model parameters can be estimated/updated, the predicted, filtered, and smoothed probabilities of partial observation sequence can be determined, goodness of the observation sequence fitting to the model can be evaluated, and the best state sequence of the underlying semi-Markov process can be found. Due to those capabilities of the HSMM, it becomes one of the most important models in the area of artificial intelligence/machine learning.

        The first approach to HSMM was proposed by Ferguson (1980), which is partially included in the survey paper by Rabiner (1989). This approach is called the explicit duration HMM in contrast to the implicit duration of the HMM. It assumes that the state duration is generally distributed depending on the current state of the underlying semi-Markov process. It also assumes the conditional independence of outputs. Levinson (1986a) replaced the probability mass functions of duration with continuous probability density functions to form a continuously variable duration HMM. As Ferguson (1980) pointed out, an HSMM can be realized in the HMM framework in which both the state and its sojourn time since entering the state are taken as a complex HMM state. This idea was exploited in 1991 by a 2-vector HMM (Krishnamurthy et al., 1991) and a duration-dependent state transition model (Vaseghi, 1991). Since then, similar approaches were proposed in many applications. They are called in different names such as inhomogeneous HMM (Ramesh and Wilpon, 1992), nonstationary HMM (Sin and Kim, 1995), and triplet Markov chains (Pieczynski et al., 2002). These approaches, however, have the common problem of computational complexity in some applications. A more efficient algorithm was proposed in 2003 by Yu and Kobayashi (2003a), in which the forward-backward variables are defined using the notion of a state together with its remaining sojourn (or residual life) time. This makes the algorithm practical in many applications.

        The HSMM has been successfully applied in many areas. The most successful application is in speech recognition. The first application of HSMM in this area was made by Ferguson (1980). Since then, there have been more than one hundred such papers published in the literature. It is the application of HSMM in speech recognition that enriches the theory of HSMM and develops many algorithms for HSMM.

        Since the beginning of 1990s, the HSMM started being applied in many other areas. In this decade, the main application area of HSMMs is handwritten/printed text recognition (see, e.g., Chen et al., 1993a). Other application areas of HSMMs include electrocardiograph (ECG) (Thoraval et al., 1992), network traffic characterization (Leland et al., 1994), recognition of human genes in DNA (Kulp et al., 1996), language identification (Marcheret and Savic, 1997), ground target tracking (Ke and Llinas, 1999), document image comparison, and classification at the spatial layout level (Hu et al., 1999).

        From 2000 to 2009, the HSMM has been obtained more and more attentions from vast application areas. In this decade, the main applications are human activity recognition (see, e.g., Hongeng and Nevatia, 2003) and speech synthesis (see, e.g., Moore and Savic, 2004). Other application areas include change-point/end-point detection for semiconductor manufacturing (Ge and Smyth, 2000a), protein structure prediction (Schmidler et al., 2000), analysis of branching and flowering patterns in plants (Guedon et al., 2001), rain events time series model (Sansom and Thomson, 2001), brain functional MRI sequence analysis (Faisan et al., 2002), Internet traffic modelling (Yu et al., 2002), event recognition in videos (Hongeng and Nevatia, 2003), image segmentation (Lanchantin and Pieczynski, 2004), semantic learning for a mobile robot (Squire, 2004), anomaly detection for network security (Yu, 2005), symbolic plan recognition (Duong et al., 2005a), terrain modeling (Wellington et al., 2005), adaptive cumulative sum test for change detection in noninvasive mean blood pressure trend (Yang et al., 2006), equipment prognosis (Bechhoefer et al., 2006), financial time series modeling (Bulla and Bulla, 2006), remote sensing (Pieczynski, 2007), classification of music (Liu et al., 2008), and prediction of particulate matter in the air (Dong et al., 2009).

        In the recent years since 2010, the main application areas of HSMMs are equipment prognosis/diagnosis (see, e.g., Dong and Peng, 2011) and animal activity modeling (see, e.g., O'Connell et al., 2011). Other application areas include such as machine translation (Bansal et al., 2011), network performance (Wang et al., 2011), deep brain stimulation (Taghva, 2011), image recognition (Takahashi et al., 2010), icing load prognosis (Wu et al., 2014), irrigation behavior (Andriyas and McKee, 2014), dynamics of geyser (Langrock, 2012), anomaly detection of spacecraft (Tagawa et al., 2011), and prediction of earthquake (Beyreuther and Wassermann, 2011).

        The latest information, new developments, and emerging topics about HSMMs, including illustrated examples, with a more in-depth treatment and foundational approach in the understanding and application of HSMMs, can be found in Yu's recent book: "Hidden Semi-Markov Models: Theory, Algorithms and Applications" (1st Edition, 208 pages, Publisher: Elsevier, Nov. 2015, ISBN-10: 0128027673, ISBN-13: 978-0128027677.)

        The Matlab source codes for the forward-backward algorithms of HSMM are quite simple which can be found here. An R package for analyzing hidden semi-Markov models can be found in Bulla et al (2010).

        * Note: there are hundreds papers that use the HSMMs but do not contribute to the theory, modeling or algorithms of the HSMMs are not cited here.

1. Achan, K., Roweis, S., Hertzmann, A., Frey, B., 2005. A segment-based probabilistic generative model of speech. In Proc. of the 2005 IEEE International Conference on Acoustics, Speech, and Signal Processing, vol. 5, pp. 221--224, Philadelphia, PA, 2005.

2. Ait-el-Fquih, B., Desbouvries, F., 2005. Kalman filtering for triplet Markov chains: applications and extensions. In Proceedings of the International Conference on Acoustics, Speech and Signal Processing, (ICASSP 05), Vol. 4, pp. 685-688, Philadelphia, USA, 2005.

3. Alasseur, C., Husson, L., Perez-Fontan, F., 2004. Simulation of rain events time series with Markov model. In Proc. of 15th IEEE International Symposium on Personal, Indoor and Mobile Radio Communications, (PIMRC 2004), Vol. 4, pp. 2801 - 2805, 2004. 

4. Altuve, M., Carrault, G., Beuchee, A., Flamand, C., Pladys, P., Hernandez, A. I., 2012. Comparing Hidden Markov Model and Hidden Semi-Markov Model Based Detectors of Apnea-Bradycardia Episodes in Preterm Infants. Computing in Cardiology, 2012; 39:389-392.

5. Altuve, M., Carrault, G., Beuchee, A., Pladys, P., and Hernandez, A. I. , 2011. On-line apnea-bradycardia detection using hidden semi-Markov models. 33rd Annual International Conference of the IEEE EMBS, Boston, Massachusetts USA, August 30 - September 3, 2011, pp. 4374-4377.

6. Amara, N. B., Belaid, A., 1996. Printed PAW recognition based on planar hidden Markov models. In Proceedings of the 13th International Conference on Pattern Recognition, Vol. 2, pp. 220 -- 224, 1996. 

7. Anderson, J. R., Betts, S., Ferris, J. L., and Fincham, J. M., 2012a. Tracking Children¡¯s Mental States While Solving Algebra Equations. Human Brain Mapping, 33:2650¨C2665 (2012).

8. Anderson, J. R., Betts, S., Ferris, J. L., Fincham, J.M., 2010. Neural imaging to track mental states while using an intelligent tutoring system. Proc. Natl. Acad. Sci. U. S. A. 107(15), 7018¨C7023. http://dx.doi.org/10.1073/pnas.1000942107.

9. Anderson, J. R., Fincham, J. M., 2013. Discovering the sequential structure of thought. Cogn. Sci. 37 (6), 1¨C31.

10. Anderson, J. R., Fincham, J. M., Schneider, D. W., Yang, J., 2012b. Using brain imaging to track problem solving in a complex state space. NeuroImage 60 (1), 633¨C643.

11. Andreoli, J.-M., 2014. Learning Energy Consumption Profiles from Data. 2014 IEEE Symposium on Computational Intelligence and Data Mining (CIDM), 9-12 Dec. 2014, Page(s): 463 ¨C 470.

12. Andriyas, S., McKee, M., 2014. Exploring irrigation behavior at Delta, Utah using hidden Markov models. Agricultural Water Management, 143 (2014) 48¨C58.

13. Ariki, Y., Jack, M. A., 1989. Enhanced time duration constraints in hidden Markov modelling for phoneme recognition. Electronics Letters, Vol. 25, Issue 13, pp. 824-825, 22 June 1989. 

14. Askar, M., Derin, H., 1981. A recursive algorithm for the Bayes solution of the smoothing problem. IEEE Trans. Automat. Contr., vol. AC-26, pp. 558-561, Apr. 1981.

15. Austin, S. C., Fallside, F., 1988. Frame compression in hidden Markov models. In Proc. of 1988 International Conference on Acoustics, Speech, and Signal Processing, ICASSP-88, pp. 477 - 480, 11-14 April 1988. 

16. Aydin, Z., Altunbasak, Y., Borodovsky, M., 2006. Protein secondary structure prediction for a single-sequence using hidden semi-Markov models. BMC Bioinformatics, 7:178, 2006. Available: http://www. biomedcentral. com/1471-2105/7/178 

17. Azimi, M., Nasiopoulos, P., Ward, R. K., 2003. Online identification of hidden semiMarkov models. In Proceedings of the 3rd International Symposium on Image and Signal Processing and Analysis, ISPA 2003, Vol. 2, pp. 991 - 996, 18-20 Sept. 2003. 

18. Azimi, M., Nasiopoulos, P., Ward, R. K., 2004. A new signal model and identification algorithm for hidden semi-Markov signals. In Proceedings of IEEE International Conference on Acoustics, Speech, and Signal Processing, 2004, (ICASSP '04), Vol. 2, pp. ii-521-4, 17-21 May 2004. 

19. Azimi, M., Nasiopoulos, P., Ward, R. K., 2005. Offline and online identification of hidden semi-Markov models. IEEE Transactions on Signal Processing, Vol. 53, Issue 8, Part 1, pp. 2658 - 2663, Aug. 2005. 

20. Bae, K., Mallick, B. K., Elsik, C. G., 2008. Prediction of Protein Interdomain Linker Regions by a Nonstationary Hidden Markov Model. Journal of the American Statistical Association, Sep. 2008, Vol. 103, No. 483, pp. 1085-1099. 

21. Bahl, L. R., Cocke, J., Jelinek, F., Raviv, J., 1974. Optimal Decoding of Linear Codes for Minimizing Symbol Error Rate. IEEE Trans. Information Theory, vol. IT-20, pp. 284-28, March, 1974.

22. Bansal, M., Quirk, C., Moore, R. C., 2011. Gappy Phrasal Alignment by Agreement. The 49th Annual Meeting of the Association for Computational Linguistics: Human Language Technologies, 19-24 June, 2011, pp. 1308-1317.

23. Barbu, V. S., Limnios, N., 2008. Semi-Markov chains and hidden semi-Markov models toward applications: their use in reliability and DNA analysis. New York: Springer. ISBN 978-0-387-73171-1.

24. Baum, L. E., Petrie, T., 1966. Statistical inference for probabilistic functions of finite state Markov chains. Ann. Math. Stat., vol. 37, pp. 1554-1563, 1966.

25. Beal, M. J., Ghahramani, Z., Rasmussen, C. E., 2001. The Infinite Hidden Markov Model. Neural Information Processing Systems: Natural and Synthetic, NIPS 2001, Dec. 3-8, 2001, pp. 577-584, Vancouver, British Columbia, Canada. 

26. Bechhoefer, E., Bernhard, A., He, D., Banerjee, P., 2006. Use of Hidden Semi-Markov Models in the Prognostics of Shaft Failure, . In Proceedings American Helicopter Society 62 th Annual Forum, Phoenix, AZ, 2006. Available: http://www.vtol.org/pdf/62se.pdf 

27. Benouareth, A., Ennaji, A., Sellami, M., 2008. Arabic Handwritten Word Recognition Using HMMs with Explicit State Duration. EURASIP Journal on Advances in Signal Processing, Volume 2008, 1-13. 

28. Beyreuther, M., Wassermann, J., 2011. Hidden semi-Markov Model based earthquake classification system using Weighted Finite-State Transducer. Processes Geophys., 18, 81¨C89.

29. Bippus, R., Margner, V., 1999. Script recognition using inhomogeneous P2DHMM and hierarchical search space reduction. In Proceedings of the Fifth International Conference on Document Analysis and Recognition, 1999 (ICDAR '99), pp. 773 - 776, 20-22 Sept. 1999. 

30. Bonafonte, A., Ros, X., Marino, J. B., 1993. An efficient algorithm to find the best state sequence in HSMM. In Proceedings of Eurospeech'93, pp. 1547-1550, Berlin, 1993.

31. Bonafonte, A., Vidal, J., Nogueiras, A., 1996. Duration modeling with expanded HMM applied to speech recognition. In Fourth International Conference on Spoken Language, 1996(ICSLP 96), Vol. 2, pp. 1097 -- 1100, 3-6 Oct. 1996. 

32. Borodovsky, M., Lukashin, A. V., 1998. GeneMark. hmm: new solutions for gene finding.. Nucleic Acids Res., 26:1107-1115, 1998.

33. Borst, J. P., Anderson, J. R., 2015. The discovery of processing stages: Analyzing EEG data with hidden semi-Markov models. NeuroImage, 108 (2015) 60¨C73.

34. Boukra, T., Lebaroud, A., 2014. Identifying New Prognostic Features for Remaining Useful Life Prediction. 16th International Power Electronics and Motion Control Conference and Exposition Antalya, Turkey 21-24 Sept 2014, pp. 1216-1221.

35. Boussemart, Y., Cummings, M. L., 2011. Predictive models of human supervisory control behavioral patterns using hidden semi-Markov models. Engineering Applications of Artificial Intelligence, Volume 24, Issue 7, October 2011, Pages 1252¨C1262.

36. Boutillon, E., Gross, W. J., Gulak, P. G., 2003. VLSI architectures for the MAP algorithm. IEEE Transactions on Communications, vol. 51, no. 2, pp. 175-185, Feb. 2003.

37. Bouyahia, Z., Benyoussef, L., Derrode, S., 2008. Change detection in synthetic aperture radar images with a sliding hidden Markov chain model. Journal of Applied Remote Sensing, Vol. 2, 023526, 2008. 

38. Bulla, J., 2006. Application of hidden markov and hidden semi-markov models to financial time series. Ph.D. Thesis, Institute for Statistics and Econometrics, Georg-August-Universität Göttingen, http://webdoc.sub.gwdg.de/diss/2006/bulla/bulla.pdf.

39. Bulla, J., Bulla, I., 2006. Stylized facts of financial time series and hidden semi-Markov models. Computational Statistics and Data Analysis, Vol. 51, Issue 4, pp. 2192-2209, December 2006. 

40. Bulla, J., Bulla, I., O Nenadic, 2010. hsmm---An R package for analyzing hidden semi-Markov models. Computational Statistics and Data Analysis, 54 (2010) 611-619 

41. Burge, C., Karlin, S., 1997. Prediction of complete gene structures in human genomic DNA.. J. Mol. Biol., 268:78-94, 1997.

42. Burshtein, D., 1995. Robust parametric modeling of durations in hidden Markov models. In Proc. of 1995 International Conference on Acoustics, Speech, and Signal Processing, (ICASSP-95), Vol. 1, pp. 548, 9-12 May 1995.

43. Burshtein, D., 1996. Robust Parametric Modeling of Durations in Hidden Markov Models. IEEE Transactions on Speech and Audio Processing, Vol. 4, No. 3, pp. 240-242, May 1996. 

44. Cai, J., Liu, Z.-Q., 1998. Integration of structural and statistical information for unconstrained handwritten numeral recognition. In Proceedings of Fourteenth International Conference on Pattern Recognition, 1998. Vol. 1, pp. 378 - 380, 16-20 Aug. 1998. 

45. Cai, J., Liu, Z.-Q., 1999. Integration of structural and statistical information for unconstrained handwritten numeral recognition. IEEE Transactions on Pattern Analysis and Machine Intelligence, Vol. 21, Issue 3, pp. 263 -- 270, March 1999. 

46. Calinon, S., Pistillo, A., and Caldwell, D., G., 2011. Encoding the time and space constraints of a task in explicit-duration Hidden Markov Model. 2011 IEEE/RSJ International Conference on Intelligent Robots and Systems, September 25-30, 2011. San Francisco, CA, USA, pp. 3413-3418.

47. Cappe, O., Moulines, E., Ryden, T., 2005. Inference in Hidden Markov Models, . New York: Springer, 2005.

48. Chaubert-Pereira, F., Guedon, Y., Lavergne, C., and Trottier, C., 2010. Markov and semi-Markov switching linear 1 mixed models used to identify forest tree growth components. Biometrics, 66, 3 (2010) 753-762.

49. Chen, J.-H., Jiang,Y.-C., 2011. Development of hidden semi-Markov models for diagnosis of multiphase batch operation. Chemical Engineering Science, 66 (2011) 1087¨C1099.

50. Chen, K., Hasegawa-Johnson, M., Cohen, A., Borys, S., Kim, S.-S., Cole, J., Choi, J.-Y., 2006. Prosody dependent speech recognition on radio news corpus of American English. IEEE Transactions on Audio, Speech and Language Processing [see also IEEE Transactions on Speech and Audio Processing], Vol. 14, Issue 1, pp. 232 - 245, Jan. 2006. 

51. Chen, M. Y., Kundu, A., Srihari, S. N., 1995. Variable Duration Hidden Markov Model and Morphological Segmentation for Handwritten Word Recognition. IEEE Trans. Image Processing, vol. 4, pp. 1675-1688, Dec. 1995. 

52. Chen, M.-Y., Kundu, A., 1994. A complement to variable duration hidden Markov model in handwritten word recognition. In Proceedings of IEEE International Conference on Image Processing, 1994 (ICIP-94), Vol. 1, pp. 174 - 178, 13-16 Nov. 1994. 

53. Chen, M.-Y., Kundu, A., Srihari, S. N., 1993. Handwritten word recognition using continuous density variable duration hidden Markov model. In Proc. of 1993 IEEE International Conference on Acoustics, Speech, and Signal Processing (ICASSP-93), Vol. 5, pp. 105 - 108, 27-30 April 1993. 

54. Chen, M.-Y., Kundu, A., Srihari, S. N., 1993. Variable duration hidden Markov model and morphological segmentation for handwritten word recognition. In Proc. of 1993 IEEE Computer Society Conference on Computer Vision and Pattern Recognition (CVPR '93), pp. 600 - 601, 15-17 June 1993. 

55. Chien, J.-T., Huang, C.-H., 2003. Bayesian learning of speech duration models. IEEE Transactions on Speech and Audio Processing, Vol. 11, Issue 6, pp. 558 - 567, Nov. 2003. 

56. Chien, J.-T., Huang, C.-H., 2004. Bayesian duration modeling and learning for speech recognition. In Proc. of IEEE International Conference on Acoustics, Speech, and Signal Processing, 2004 (ICASSP '04), Vol. 1, pp. I - 1005-8, 17-21 May 2004.

57. Choquet, R., Gu¨¦don, Y., Besnard, A., Guillemain, M., Pradel, R., 2013. Estimating stop over duration in the presence of trap-effects. Ecological Modelling, 250 (2013) 111¨C 118.

58. Choquet, R., Viallefont, A., Rouan, L., Gaanoun, K., and Gaillard, J.-M., 2011. A semi-Markov model to assess reliably survival patterns from birth to death in free-ranging populations. Methods in Ecology and Evolution, 2011, 2, 383¨C389.

59. Chung, P. C., Liu, C. D., 2008. A daily behavior enabled hidden Markov model for human behavior understanding. Pattern Recognition, Vol. 41, 2008, pp. 1572-1580. 

60. Codogno, M., Fissore, L., 1987. Duration modelling in finite state automata for speech recognition and fast speaker adaptation. In Proc. of IEEE International Conference on Acoustics, Speech, and Signal Processing (ICASSP '87), Vol. 12, pp. 1269 - 1272, Apr 1987. 

61. Cohen, Y., Erell, A., Bistritz, Y., 1997. Enhancement of connected words in an extremely noisy environment. IEEE Transactions on Speech and Audio Processing, Vol. 5, Issue 2, pp. 141 - 148, March 1997. 

62. Culotta, A., McCallum, A., 2004. Confidence estimation for information extraction. In Human Language Technology Conference (HLT), 2004. 

63. Cuvillier, P., Cont, A., 2014. Coherent Time Modeling of Semi-Markov Models with Application to Real-Time Audio-to-Score Alignment. 2014 IEEE International Workshop on Machine Learning for Signal Processing, Sept. 21¨C24, 2014, Reims, France.

64. Dempster, A. P., Laird, N. M., Rubin, D. B., 1977. Maximum likelihood from incomplete data via the EM algorithm. Journal of the Royal Statistical Society, Series B (Methodological), vol. 39, pp. 1-38, 1977.

65. Deng, L., Aksmanovic, M., 1997. Speaker-Independent Phonetic Classification Using Hidden Markov Models with Mixtures of Trend Functions. IEEE Transactions On Speech And Audio Processing, Vol. 5, No. 4, pp. 319-324, July 1997. 

66. Deng, L., Aksmanovic, M., Sun, X., Wu, J., 1994. Speech recognition using hidden Markov models with polynomial regression functions as nonstationary states. IEEE Trans. Speech Audio Processing, 2(4):507--520, 1994.

67. Devijver, P. A., 1985. Baum's forward-backward algorithm revisited. Pattern Recogn. Lett., vol. 3, pp. 369-373, 1985.

68. Dewar, M., Wiggins, C., and Wood, F., 2012. Inference in Hidden Markov Models with Explicit State Duration Distributions. IEEE Signal Processing Letters, Vol. 19, No. 4, April 2012, pp. 235-238.

69. Ding, J.-R., Shah, S. P., 2010. Robust hidden semi-Markov modeling of array CGH data. 2010 IEEE International Conference on Bioinformatics and Biomedicine, pp. 603-608.

70. Djuric, P. M., Chun, J.-H., 1999. Estimation of nonstationary hidden Markov models by MCMC sampling. 1999 IEEE International Conference on Acoustics, Speech, and Signal Processing (ICASSP '99), Vol. 3, pp. 1737 - 1740, 15-19 March 1999. 

71. Djuric, P. M., Chun, J.-H., 2002. An MCMC sampling approach to estimation of nonstationary hidden Markov models. IEEE Transactions on Signal Processing, Vol. 50, Issue 5, pp. 1113 - 1123, May 2002. 

72. Doki, K., Hirai, T., Hashimoto, K., Doki, S., 2013. A modeling method for human actions considering their temporal and spatial differences. 4th IEEE International Conference on Cognitive Infocommunications, December 2¨C5, 2013, pp. 857-862.

73. Dong, M., 2008. A novel approach to equipment health management based on auto-regressive hidden semi-Markov model (AR-HSMM). Science in China Series F: Information Sciences, Sep. 2008, vol. 51, no. 9, 1291-1304. 

74. Dong, M., He, D., 2007. A segmental hidden semi-Markov model (HSMM)-based diagnostics and prognostics framework and methodology. \ Mechanical Systems and Signal Processing, Vol. 21, no. 5, pp. 2248-2266, July 2007. 

75. Dong, M., He, D., 2007. Hidden semi-Markov model-based methodology for multi-sensor equipment health diagnosis and prognosis. European Journal of Operational Research, Vol. 178, no. 3, pp. 858-878, 1 May 2007. 

76. Dong, M., He, D., Banerjee, P., Keller, J., 2006. Equipment health diagnosis and prognosis using hidden semi-Markov models. The International Journal of Advanced Manufacturing Technology, Vol. 30, No. 7-8, pp. 738-749 (12), October 2006.

77. Dong, M., Peng, Y., 2011. Equipment PHM using non-stationary segmental hidden semi-Markov model. Robotics and Computer-Integrated Manufacturing, 27 (2011) 581¨C590.

78. Dong, M., Yang, D., Kuang, Y., He, D., Erdal, S., Kenski, D., 2009. PM2. 5 concentration prediction using hidden semi-Markov model-based times series data mining. Expert Systems with Applications, Vol. 36, 2009, pp. 9046--9055. 

79. du Preez, J. A., 1991. Modelling durations in hidden Markov models with application to word spotting. In Proceedings of South African Symposium on Communications and Signal Processing, 1991. COMSIG 1991, pp. 1 -- 5, 30 Aug. 1991. 

80. Dumont, J., Hernandez, A. I., Fleureau, J., Carrault, G., 2008. Modelling temporal evolution of cardiac electrophysiological features using Hidden Semi-Markov Models. proceedings: Annual International Conference of the IEEE Engineering in Medicine and Biology Society, Aug. 2008, pp. 165-168. 

81. Duong, T. V., Bui, H. H., Phung, D. Q., Venkatesh, S., 2005. Activity recognition and abnormality detection with the switching hidden semi-Markov model. IEEE Computer Society Conference on Computer Vision and Pattern Recognition, 2005 (CVPR 2005), Vol. 1, pp. 838 - 845, 20-25 June 2005. 

82. Duong, T. V., Phung, D. Q., Bui, H. H., Venkatesh, S., 2005. Efficient Coxian Duration Modelling for Activity Recognition in Smart Environments with the Hidden semi-Markov Model. In Proceedings of the 2005 International Conference on Intelligent Sensors, Sensor Networks and Information Processing Conference, 2005, pp. 277 - 282, 5-8 Dec. 2005. 

83. Duong, T. V., Phung, D. Q., Bui, H. H., Venkatesh, S., 2006. Human Behavior Recognition with Generic Exponential Family Duration Modeling in the Hidden Semi-Markov Model. In Proc. of 18th International Conference on Pattern Recognition, 2006 (ICPR 2006), Vol. 3, pp. 202 - 207, 20-24 Aug. 2006. 

84. Economou, T., Bailey, T. C., Kapelan, Z., 2014. MCMC implementation for Bayesian hidden semi-Markov models with illustrative applications. Stat Comput (2014) 24:739¨C752.

85. Eldar, E., Morris, G., Niv, Y., 2011. The effects of motivation on response rate: A hidden semi-Markov model analysis of behavioral dynamics. Journal of Neuroscience Methods 201 (2011) 251¨C 261.

86. Elliott, R., Limnios, N., Swishchuk, A., 2013. Filtering hidden semi-Markov chains. Statistics and Probability Letters, 83 (2013) 2007¨C2014.

87. Ephraim, Y., Merhav, N., 2002. Hidden Markov Processes. IEEE Trans. on Information Theory, vol. 48, no. 6, pp. 1518-1569, June 2002.

88. Explicit State Duration Distributions. IEEE Signal Processing Letters, Vol. 19, No. 4, April 2012, pp. 235-238.

89. Faisan, S., Thoraval, L., Armspach, J.-P., Heitz, F., 2002. Hidden semi-Markov event sequence models: application to brain functional MRI sequence analysis. In Proceedings of 2002 International Conference on Image Processing, vol. 1, pp. I-880-I-883, Sept. 22-25, 2002. 

90. Faisan, S., Thoraval, L., Armspach, J.-P., Metz-Lutz, M.-N., Heitz, F., 2005. Unsupervised learning and mapping of active brain functional MRI signals based on hidden semi-Markov event sequence models. IEEE Transactions on Medical Imaging, Vol. 24, Issue 2, pp. 263 - 276, Feb 2005. 

91. Ferguson, J. D., 1980. Variable Duration Models for Speech. In Symp. Application of Hidden Markov Models to Text and Speech, Institute for Defense Analyses, Princeton, NJ, Oct. 1980, pp. 143-179.

92. Finesso, L., 1990. Consistent estimation of the order for Markov and hidden Markov chains. Ph.D. dissertation, Univ. Maryland, College Park, 1990.

93. Ford, J., Krishnamurthy, V., Moore, J. B., 1993. Adaptive estimation of hidden semi-Markov chains with parameterised transition probabilities and exponential decaying states. in Proc. of Conf. on Intell. Signal Processing and Communication Systems (ISPACS), Sendai, Japan, Oct. 1993, pp. 88--92.

94. Fox, E. B., 2009. Bayesian Nonparametric Learning of Complex Dynamical Phenomena. Ph.D. thesis, MIT, Cambridge, MA, 2009.

95. Gales, M., Young, S., 1993. The theory of segmental hidden Markov models. Technical Report CUED/F-INFENG/TR 133, Cambridge University Engineering Department, 1993.

96. Ge, X., Smyth, P., 2000. Deformable Markov model templates for time-series pattern matching. In Proc. of the 6th ACM SIGKDD International Conference on Knowledge Discovery and Data Mining, pp. 81--90, Boston, MA, 2000. 

97. Ge, X., Smyth, P., 2000. Segmental semimarkov models for change-point detection with applications to semiconductor manufacturing. Technical Report UCI-ICS 00-08, http://www. ics. uci. edu/~datalab/papers/trchange.pdf, Mar 2000. http://citeseer. ist. psu. edu/ge00segmental.html

98. Geramifard, O., Xu, J.-X., Zhou, J.-H., Li, X., 2011. Continuous health condition monitoring: A single Hidden Semi-Markov Model approach. 2011 IEEE Conference on Prognostics and Health Management (PHM), 20-23 June 2011, Page(s):1 - 10.

99. Ghahramani, Z., 2001. An Introduction to Hidden Markov Models and Bayesian Networks. International Journal of Pattern Recognition and Artificial Intelligence, 15(1):9-42, 2001. 

100. Gillman, M., Kejak, M., Pakos, M., 2014. Learning about Rare Disasters: Implications for Consumption and Asset Prices. February 2014. Working Paper Series, Available online at http://www.cerge-ei.cz/publications/working_papers/.

101. Gu, H.-Y., Tseng, C.-Y., Lee, L.-S., 1991. Isolated-utterance speech recognition using hidden Markov models with bounded state durations. IEEE Transactions on Signal Processing, [see also IEEE Transactions on Acoustics, Speech, and Signal Processing], Vol. 39, Issue 8, pp. 1743 - 1752, Aug. 1991. 

102. Guedon, Y., 2003. Estimating Hidden semi-Markov chains from discrete sequences. Journal of Computational and Graphical Statistics, Vol. 12, No. 3, pp. 604-639, 2003.

103. Guedon, Y., 2005. Hidden hybrid Markov\/semi-Markov chains. Computational Statistics \& Data Analysis, Vol. 49, Issue 3, pp. 663-688, 1 June 2005. 

104. Guedon, Y., 2007. Exploring the state sequence space for hidden Markov and semi-Markov chains. Computational Statistics \& Data Analysis, Vol. 51, Issue 5, pp. 2379-2409, 1 Feb 2007. 

105. Guedon, Y., Barthelemy, D., Caraglio, Y., Costes, E., 2001. Pattern analysis in branching and axillary flowering sequences. Journal of Theoretical Biology, 212(4):481-520, Oct. 2001.

106. Guedon, Y., Cocozza-Thivent, C., 1989. Use of the Derin's algorithm in hidden semi-Markov models for automatic speech recognition. In Proc. of 1989 International Conference on Acoustics, Speech, and Signal Processing (ICASSP-89), pp. 282 - 285, 23-26 May 1989. 

107. Hanazawa, T., Kita, K., Nakamura, S., Kawabata, T., Shikano, K., 1990. ATR HMM-LR continuous speech recognition system. In Proc. of 1990 International Conference on Acoustics, Speech, and Signal Processing, 1990. ICASSP-90. pp. 53 - 56, 3-6 April 1990. 

108. He, H., Wu, S., Banerjee, P., Bechhoefer, E., 2006. Probabilistic model based algorithms for prognostics. In Proc. of 2006 IEEE Aerospace Conference, 4-11 March 2006. 

109. He, J., Leich, H., 1995. A unified way in incorporating segmental feature and segmental model into HMM. In Proc. of 1995 International Conference on Acoustics, Speech, and Signal Processing, 1995. ICASSP-95, Vol. 1, pp. 532 - 535, 9-12 May 1995. 

110. Henke, D., Smyth, P., Haffke, C., Magnusdottir, G., 2012. Automated analysis of the temporal behavior of the double Intertropical Convergence Zone over the east Pacific. Remote Sensing of Environment, 123 (2012) 418¨C433.

111. Hieronymus, J. L., McKelvie, D., McInnes, F., 1992. Use of acoustic sentence level and lexical stress in HSMM speech recognition. In Proc. of 1992 IEEE International Conference on Acoustics, Speech, and Signal Processing, 1992. ICASSP-92. Vol. 1, pp. 225-227, 23-26 March 1992. 

112. Holmes, W. J., Russell, M. J., 1995. Experimental evaluation of segmental HMMs. In Proc. of International Conference on Acoustics, Speech, and Signal Processing, 1995. ICASSP-95, Vol. 1, pp. 536 - 539, 9-12 May 1995. 

113. Holmes, W. J., Russell, M. J., 1999. Probabilistic-trajectory segmental HMMs. Computer Speech and Language, 13(1):3--37, 1999.

114. Hongeng, S., Nevatia, R., 2003. Large-scale event detection using semi-hidden Markov models. In Proceedings of Ninth IEEE International Conference on Computer Vision, pp. 1455-1462, Oct. 13-16, 2003. 

115. Hongeng, S., Nevatia, R., Bremond, F., 2004. Video-based event recognition: activity representation and probabilistic methods. Comp. Vis. and Image Understanding, 96(129--162), 2004.

116. Hu, J., Kashi, R., Wilfong, G., 1999. Document classification using layout analysis. In Proc. of First Intl. Workshop on Document Analysis and Understanding for Document Databases, Florence, Italy, September 1999. 

117. Hu, J., Kashi, R., Wilfong, G., 2000. Comparison and Classification of Documents Based on Layout Similarity. Information Retrieval, 2(2):227--243, May 2000. 

118. Huang, X. D., 1992. Phoneme classification using semicontinuous hidden Markov models. IEEE Transactions on Signal Processing, [see also IEEE Transactions on Acoustics, Speech, and Signal Processing], Vol. 40, Issue 5, pp. 1062 - 1067, May 1992. 

119. Hughes, N. P., Roberts, S. J., Tarassenko, L., 2004. Semi-supervised learning of probabilistic models for ECG segmentation. In Proc. of 26th Annual International Conference of the Engineering in Medicine and Biology Society, 2004. EMBC 2004. Vol. 1, pp. 434 - 437, 2004. 

120. Hughes, N. P., Tarassenko, L., Roberts, S. J., 2003. Markov models for automated ECG interval analysis. Advances in Neural Information Processing Systems, 2003. Available: http://citeseer.ist.psu.edu/hughes03markov.html 

121. Intelligent Robots and Systems (IROS 2014), September 14-18, 2014, Chicago, IL, USA, pp. 1427-1433.

122. Jiang, R., Kim, M. J., and Makis, V., 2012. Maximum Likelihood Estimation for a Hidden Semi-Markov Model with Multivariate Observations. Qual. Reliab. Engng. Int., 2012, 28, 783¨C791.

123. Johnson, M. J., and Willsky, A. S., 2013. Bayesian Nonparametric Hidden Semi-Markov Models. Journal of Machine Learning Research, 14 (2013) 673-701.

124. Johnson, M. T., 2005. Capacity and complexity of HMM duration modeling techniques. IEEE Signal Processing Letters, Vol. 12, Issue 5, pp. 407 - 410, May 2005. 

125. Joo, R., Bertrand, S., Tam, J., Fablet, R., 2013. Hidden Markov Models: The Best Models for Forager Movements? PLOS ONE, August 2013, Vol. 8, Issue 8, e71246.

126. Ju, C.-H., and Xu, C.-H., 2013. A New Method for User Dynamic Clustering Based on HSMM in Model of SaaS. Appl. Math. Inf. Sci. 7, No. 3, 1059-1064 (2013).

127. Katagiri, S., Lee, C.-H., 1993. A new hybrid algorithm for speech recognition based on HMM segmentation and learning vector quantization. IEEE Transactions on Speech and Audio Processing, Vol. 1, Issue 4, pp. 421-430, Oct. 1993. 

128. Ke, C. C., Llinas, J., 1999. Literature survey on ground target tracking problems. Research Project Report, Center for Multisource Information Fusion, State University of New York at Buffalo, 1999. 

129. Khorram, S., Sameti, H., and King, S., 2015. Soft context clustering for F0 modeling in HMM-based speech synthesis. EURASIP Journal on Advances in Signal Processing, 2015:2, available: http://asp.eurasipjournals.com/content/2015/1/2.

130. Kim, S., Smyth, P., 2006. Segmental Hidden Markov Models with Random Effects for Waveform Modeling. Journal of Machine Learning Research, no. 7, 2006, pp. 945--969. 

131. Kim, W.-G., Yoon, J.-Y., Youn, D. H., 1994. HMM with Global Path Constraint in Viterbi Decoding for Isolated Word Recognition. In Proc. ICASSP 1994, pp. 605-608, 1994.

132. Kobayashi, H., Yu, S.-Z., 2007. Hidden Semi-Markov Models and Efficient Forward-Backward Algorithms. 2007 Hawaii and SITA Joint Conference on Information Theory, pp. 41-46, Honolulu, Hawaii, May 29-31, 2007.

133. Krishnamurthy, V., Moore, J. B., 1991. Signal Processing of semi-Markov models with exponentially decaying states. In Proceedings of the 30th Conference on Decision and Control, pp. 2744-2749, Brighton, England, Dec. 1991. 

134. Krishnamurthy, V., Moore, J. B., Chung, S. H., 1991. Hidden fractal model signal processing. Signal Processing, vol. 24, no. 2, pp. 177-192, Aug. 1991. 

135. Kulp, D., Haussler, D., Reese, M. G., Eeckman, F. H., 1996. A generalized hidden Markov model for the recognition of human genes in DNA. in Proc. 4th Int. Conf. Intell. Syst. Molecular Bio., pp. 134--142, 1996.

136. Kundu, A., He, Y., Chen, M.-Y., 1997. Efficient utilization of variable duration information in HMM based HWR systems. In Proceedings of International Conference on Image Processing, 1997, vol. 3, pp. 304-307, Oct. 26-29, 1997. 

137. Kundu, A., He, Y., Chen, M.-Y., 1998. Alternatives to variable duration HMM in handwriting recognition. IEEE Transactions on Pattern Analysis and Machine Intelligence, vol. 20, no. 11, pp. 1275-1280, Nov. 1998. 

138. Kwon, O. W., Un, C. K., 1995. Context-dependent word duration modelling for Korean connected digit recognition. Electronics Letters, Vol. 31, Issue 19, pp. 1630 - 1631, 14 Sept. 1995. 

139. Lanchantin, P., Lapuyade-Lahorguea, J., Pieczynski, W., 2008. Unsupervised segmentation of triplet Markov chains hidden with long-memory noise. Signal Processing, Vol. 88, Issue 5, pp. 1134-1151, May 2008. 

140. Lanchantin, P., Pieczynski, W., 2004. Unsupervised non stationary image segmentation using triplet Markov chains. In Proc. of Advanced Concepts for Intelligent Vision Systems (ACVIS 04), Brussels, Belgium, Aug. 31-Sept. 3, 2004. 

141. Lanchantin, P., Pieczynski, W., 2005. Unsupervised restoration of hidden non stationary Markov chain using evidential priors. IEEE Trans. on Signal Processing, Vol. 53, No. 8, pp. 3091-3098, 2005.

142. Langrock, R., 2012. Flexible Latent-State Modelling of Old Faithful¡¯s Eruption Inter-Arrival Times in 2009. Australian & New Zealand Journal of Statistics, 54(3), 2012, 261¨C279.

143. Langrock, R., King, R., Matthiopoulos, J., Thomas, L., Fortin, D., Morales, J., M., 2012. Flexible and practical modeling of animal telemetry data: hidden Markov models and extensions. Ecology, 93(11), 2012, pp. 2336¨C2342.

144. Langrock, R., Zucchini, W., 2011. Hidden Markov models with arbitrary state dwell-time distributions. Computational Statistics and Data Analysis, Vol. 55, pp. 715-724, 2011.

145. Lapuyade-Lahorgue, J., and Pieczynski, W., 2006. Unsupervised Segmentation of Hidden Semi-Markov Non Stationary Chains. Twenty Six International Workshop on Bayesian Inference and Maximum Entropy Methods in Science and Engineering, MaxEnt 2006, Paris, France, July 8-13, 2006.

146. Lapuyade-Lahorgue, J., and Pieczynski, W., 2012. Unsupervised segmentation of hidden semi-Markov non-stationary chains. Signal Processing, Vol. 92, Issue 1, pp. 29-42, 2012.

147. Laurila, K., 1997. Noise robust speech recognition with state duration constraints. In Proc. of 1997 IEEE International Conference on Acoustics, Speech, and Signal Processing, 1997. ICASSP-97., Vol. 2, pp. 871 - 874, 21-24 April 1997. 

148. Lee, C.-H., Rabiner, L. R., 1989. A frame-synchronous network search algorithm for connected word recognition. IEEE Transactions on Acoustics, Speech, and Signal Processing [see also IEEE Transactions on Signal Processing], Vol. 37, Issue 11, pp. 1649 - 1658, Nov. 1989.

149. Lee, C.-H., Soong, F. K., Juang, B.-H., 1988. A segment model based approach to speech recognition. in Proc. Int'l. Conf. on Acoust., Speech and Signal Processing, pp. 501-504, 1988.

150. Leland, W., Taqqu, M., Willinger, W., Wilson, D., 1994. On the Self-Similar Nature of Ethernet Traffic (Extended Version). IEEE/ACM Transactions on Networking, Vol. 2, No. 1, pp. 1-15, February 1994.

151. Levinson, S. E., 1986. Continuously variable duration hidden Markov models for automatic speech recognition. Computer Speech and Language, vol. 1, no. 1, pp. 29-45, 1986. 

152. Levinson, S. E., 1986. Continuously variable duration hidden Markov models for speech analysis. In Proc. of IEEE International Conference on Acoustics, Speech, and Signal Processing, ICASSP '86. Vol. 11, pp. 1241 - 1244, Apr 1986. 

153. Levinson, S. E., Liberman, M. Y., Ljolje, A., Miller, L. G., 1989. Speaker independent phonetic transcription of fluent speech for large vocabulary speech recognition. In Proc. of 1989 International Conference on Acoustics, Speech, and Signal Processing, ICASSP-89, pp. 441-444, 23-26 May 1989 

154. Levinson, S. E., Ljolje, A., Miller, L. G., 1988. Large vocabulary speech recognition using a hidden Markov model for acoustic/phonetic classification. In Proc. of 1988 International Conference on Acoustics, Speech, and Signal Processing, 1988. ICASSP-88., pp. 505 - 508, 11-14 April 1988. 

155. Levinson, S. E., Rabiner, L. R., Sondhi, M. M., 1983. An introduction to the application of the theory of probabilistic functions of a Markov process in automatic speech recognition. B. S. T. J., vol. 62, pp. 1035-1074, 1983.

156. Li B.-C., Yu S.-Z., 2015. A Robust Scaling Approach for Implementation of HsMMs. IEEE Signal Processing Letters, Vol:22 , Issue: 9, 2015, Page(s): 1264 ¨C 1268.

157. Li, M., Yu, S.-Z., 2006. A Network-wide Traffic Anomaly Detection Method Based on HSMM. In Proc. of 2006 International Conference on Communications, Circuits and Systems Proceedings, Vol. 3, pp. 1636 - 1640, June 2006

158. Liang, C., Xu, C.-S., Cheng, J., Lu, H.-Q., 2011. TVParser: An automatic TV video parsing method. The 24th IEEE Conference on Computer Vision and Pattern Recognition, CVPR 2011, Colorado Springs, CO, USA, 20-25 June 2011, pp. 3377-3384.

159. Lin, D.-T., Liao, Y.-C., 2011. On-line Handwritten Signature Verification Using Hidden Semi-Markov Model. Communications in Computer and Information Science, Volume 173,  2011, pp. 584-589.

160. Lin, H.-P., Tseng, M.-J., Tsai, F.-S., 2002. A non-stationary hidden Markov model for satellite propagation channel modeling. In Proceedings of 2002 IEEE 56th Vehicular Technology Conference, VTC 2002-Fall, Vol. 4, pp. 2485 - 2488., 24-28 Sept. 2002 

161. Liu, Q.-M., Dong, M., Peng, Y., 2012. A novel method for online health prognosis of equipment based on hidden semi-Markov model using sequential Monte Carlo methods. Mechanical Systems and Signal Processing, 32 (2012)331¨C348.

162. Liu, X. B., Yang, D. S., Chen, X. O., 2008. New approach to classification of Chinese folk music based on extension of HMM, . International Conference on Audio, Language and Image Processing, ICALIP 2008, vol., no., pp.1172-1179, 7-9 July 2008. 

163. Liu, Z., Yu, J. X., Chen, L., Wu, D., 2008. Detection of Shape Anomalies: A Probabilistic Approach Using Hidden Markov Models, . IEEE 24th International Conference on Data Engineering, ICDE 2008, vol., no., pp.1325-1327, 7-12 April 2008. 

164. Ljolje, A., Levinson, S. E., 1991. Development of an acoustic-phonetic hidden Markov model for continuous speech recognition. \ IEEE Transactions on Signal Processing, [see also IEEE Transactions on Acoustics, Speech, and Signal Processing], Vol. 39, Issue 1, pp. 29 - 39, Jan. 1991. 

165. Lu, W.-Z., Yu, S.-Z., 2006. An HTTP Flooding Detection Method Based on Browser Behavior. In Proc. of 2006 International Conference on Computational Intelligence and Security, Vol. 2, pp. 1151 - 1154, Nov. 2006.

166. Lu, W.-Z., Yu, S.-Z., 2006. Clustering Web Traffic of Request Bursts. In Proc. of 2006 IEEE Region 10 Conference on Communications, TENCON 2006. pp. 1 -- 4, Nov. 2006

167. Maeno, Y., Nose, T., Kobayashi, T., Koriyama, T., Ijima, Y., Nakajima, H., Mizuno, H., Yoshioka, O., 2014. Prosodic variation enhancement using unsupervised context labeling for HMM-based expressive speech synthesis. Speech Communication, 57 (2014) 144¨C154.

168. Makino, T. , Takaki, S. , Hashimoto, K., Nankaku, Y., and Tokuda, K., 2013. Separable lattice 2-d HMMs introducing state duration control for recognition of images with various variations. 2013 IEEE International Conference on Acoustics, Speech and Signal Processing, pp. 3203-3207, 2013.

169. Marcheret, E., Savic, M., 1997. Random walk theory applied to language identification. In Proc. of 1997 IEEE International Conference on Acoustics, Speech, and Signal Processing, ICASSP-97, vol. 2, pp. 1119-1122, April 21-24, 1997.

170. Marhasev, E., Hadad, M., Kaminka, G. A., 2006. Non-stationary Hidden Semi Markov Models in Activity Recognition. In Proceedings of the AAAI Workshop on Modeling Others from Observations (MOO-06), 2006. 

171. Mark, B. L., Zaidi, Z. R., 2002. Robust mobility tracking for cellular networks. In Proc. of IEEE International Conference on Communications, 2002. ICC 2002, vol. 1, pp. 445 - 449, April 28-May 2, 2002. 

172. McFarland, J. M., Hahn, T. T., Mehta, M. R., 2011. Explicit-duration hidden Markov model inference of UP-DOWN states from continuous signals. PLoS One. 2011;6(6):e21606. doi: 10.1371/journal.pone.0021606. 2011 Jun 28.

173. McLachlan, G. J., Krishnan, T., 2008. The EM algorithm and extensions. 2nd Ed. New York: Wiley, 2008.

174. Melnyk, I., Yadav, P., Steinbach, M., Srivastava, J., Kumar V., and Banerjee, A., 2013. Detection of Precursors to Aviation Safety Incidents Due to Human Factors. 2013 IEEE 13th International Conference on Data Mining Workshops, pp. 407-412.

175. Meshkova, E., Ansari, J., Riihijarvi, J., Nasreddine, J., and Mahonen, P., 2011. Estimating Transmitter Activity Patterns: an Empirical Study in the Indoor Environment. 2011 IEEE 22nd International Symposium on Personal, Indoor and Mobile Radio Communications, pp. 503-508.

176. Mitchell, C. D., Helzerman, R. A., Jamieson, L. H., Harper, M. P., 1993. A parallel implementation of a hidden Markov model with duration modeling for speech recognition. In Proceedings of the Fifth IEEE Symposium on Parallel and Distributed Processing, 1993. pp. 298 -- 306, 1-4 Dec. 1993. 

177. Mitchell, C., Harper, M., Jamieson, L., 1995. On the complexity of explicit duration HMMs. IEEE Transactions on Speech and Audio Processing, vol. 3, no. 2, pp. 213-217, May 1995. 

178. Mitchell, C., Jamieson, L., 1993. Modeling Duration in a Hidden Markov Model with the Exponential Family. In Proc. IEEE International Conference on Acoustics, Speech, and Signal Processing, ICASSP-93, pp. 331-334, 1993. 

179. Moghaddass, R., Zuo, M. J., 2012a. Multi-state degradation analysis for a condition monitored device with unobservable states. 2012 International Conference on Quality, Reliability, Risk, Maintenance, and Safety Engineering (ICQR2MSE), 15-18 June 2012, Page(s):549 - 554.

180. Moghaddass, R., Zuo, M. J., 2012b. A parameter estimation method for a condition-monitored device under multi-state deterioration. Reliability Engineering and System Safety, 106 (2012) 94¨C103.

181. Moghaddass, R., Zuo, M. J., 2014. An integrated framework for online diagnostic and prognostic health monitoring using a multistate deterioration process. Reliability Engineering and System Safety, 124 (2014) 92¨C104.

182. Moore, M. D., Savic, M. I., 2004. Speech reconstruction using a generalized HSMM (GHSMM). Digital Signal Processing, Vol. 14, No. 1, pp. 37-53, 2004. 

183. Murphy, K. P., 2002. Hidden semi-Markov models (HSMMs). http://www.ai.mit.edu/murphyk, Nov. 2002. 

184. Nagasaka, S., Taniguchi, T., Hitomi, K., Takenaka, K., and Bando, T., 2014. Prediction of Next Contextual Changing Point of Driving Behavior Using Unsupervised Bayesian Double Articulation Analyzer. 2014 IEEE Intelligent Vehicles Symposium (IV), June 8-11, 2014. Dearborn, Michigan, USA, pp. 924-931.

185. Nakagawa, S., Hashimoto, Y., 1988. A method for continuous speech segmentation using HMM. In Proc. of 9th International Conference on Pattern Recognition, vol. 2, pp. 960 - 962, 14-17 Nov. 1988. 

186. Natarajan, P., Nevatia, R., 2007. Coupled Hidden Semi Markov Models for Activity Recognition. IEEE Workshop on Motion and Video Computing, 2007. WMVC '07. Feb. 2007. 

187. Natarajan, P., Nevatia, R., 2007. Hierarchical Multi-channel Hidden Semi Markov Models. The twentieth International Joint Conference on Artificial Intelligence, pp. 2562-2567, Hyderabad, India, Jan 2007. 

188. Natarajan, P., Nevatia, R., 2008. Online, Real-time Tracking and Recognition of Human Actions. IEEE Workshop on Motion and video Computing, WMVC 2008,8-9 Jan. 2008, pp. 1-8. 

189. Natarajan, P., Nevatia, R., 2013. Hierarchical multi-channel hidden semi Markov graphical models for activity recognition. Computer Vision and Image Understanding 117 (2013) 1329¨C1344.

190. Nguyen, H. X., and Roughan, M., 2013. Rigorous Statistical Analysis of Internet Loss Measurements. IEEE/ACM Transactions on Networking, Vol. 21, No. 3, June 2013, pp. 734-745.

191. Niwase, N., Yamagishi, J., Kobayashi, T., 2005. Human Walking Motion Synthesis with Desired Pace and Stride Length Based on HSMM. IEICE Transactions on Information and Systems, 2005

192. Nose, T., Kato, Y., Kobayashi, T., 2007. A speaker adaptation technique for MRHSMM-based style control of synthetic speech. in Proc. ICASSP 2007, Apr. 2007, vol. IV, pp. 833-836. 

193. Nose, T., Yamagishi, J., Kobayashi, T., 2006. A style control technique for speech synthesis using multiple regression HSMM. in Proc. INTERSPEECH 2006-ICSLP, Sept. 2006, pp. 1324--1327.

194. Nose, T., Yamagishi, J., Masuko, T., Kobayashi, T., 2007. A style control technique for HMM-based expressive speech synthesis. IEICE Trans. Inf. \& Syst., vol. E90-D, no. 9, pp. 1406--1413, Sept. 2007.

195. O'Connell, J., Togersen, F. A., Friggens, N. C., Lovendahl, P., Hojsgaard, S., 2011. Combining Cattle Activity and Progesterone Measurements Using Hidden Semi-Markov Models. Journal of Agricultural, Biological, and Environmental Statistics, March 2011, Volume 16, Issue 1, pp 1-16.

196. Oliver, G., Sunehag, P., and Gedeon, T., 2012. Asynchronous Brain Computer Interface using Hidden Semi-Markov Models. 34th Annual International Conference of the IEEE EMBS,

197. Ostendorf, M., Digalakis, V. V., Kimball, O. A., 1996. From HMM's to segment models: A unified view of stochastic modeling for speech recognition. IEEE Trans. Speech Audio Processing, vol. 4, no. 5, pp. 360--378, Sep 1996. 

198. Ostendorf, M., Roukos, S., 1989. A stochastic segment model for phoneme-based continuous speech recognition. IEEE Transactions on Acoustics, Speech, and Signal Processing [see also IEEE Transactions on Signal Processing], Vol. 37, Issue 12, pp. 1857 - 1869, Dec. 1989. 

199. Oura, K., Zen, H., Nankaku, Y., Lee, A., Tokuda, K., 2006. Hidden Semi-Markov Model Based Speech Recognition System using Weighted Finite-State Transducer. IEEE International Conference on Acoustics, Speech and Signal Processing, 2006. ICASSP 2006. Vol. 1, pp. I-33 - I-36, 14-19 May 2006. 

200. Park, K., Kim, G. T., Crovella, M. E., 1997. On the Effect of Traffic Self-Similarity on Network Performance. In Proceedings of SPIE International Conference on Performance and Control of Network Systems, pp. 296-310, November 1997.

201. Park, S., and Chung, W., K., 2014. Decoding surface electromyogram into dynamic state to extract dynamic motor control strategy of human. 2014 IEEE/RSJ International Conference on

202. Park, Y. K., Un, C. K., Kwon, O. W., 1996. Modeling acoustic transitions in speech by modified hidden Markov models with state duration and state duration-dependent observation probabilities. IEEE Transactions on Speech and Audio Processing, Vol. 4, Issue 5, pp. 389 - 392, Sept. 1996. 

203. Park, Y., Yun, S., Yoo, C.D., 2010. Parametric emotional singing voice synthesis. 2010 IEEE International Conference on Acoustics Speech and Signal Processing (ICASSP), Pages: 4814 - 4817, 2010.

204. Pavel, M., Hayes, T. L., Adami, A., Jimison, H. B., Kaye, J., 2006. Unobtrusive assessment of mobility.. 28th Annual International Conference of the IEEE Engineering In Medicine and Biology Society, New York, NY, 30 August - 3 September, 2006. 

205. Peng, G., Zhang, B., Wang, W. S.-Y., 2000. Performance of Mandarin Connected Digit Recognizer with Word Duration Modeling. ASR2000 - Automatic Speech Recognition: Challenges for the new Millenium, pp. 140-144, Paris, France, Sep. 18-20, 2000. 

206. Peng, Y., Dong, M., 2011. A prognosis method using age-dependent hidden semi-Markov model for equipment health prediction. Mechanical Systems and Signal Processing, 25 (2011) 237¨C252.

207. Phung, D. Q., Duong, T. V., Venkatesh, S., Bui, H. H., 2005. Topic transition detection using hierarchical hidden Markov and semi-Markov models. In Proceedings of the 13th annual ACM international conference, pp. 11-20, 2005.

208. Phung, D., Duong, T., Bui, H., Venkatesh., S., 2005. Activitiy recognition and abnormality detection with the switching Hidden Semi-Markov Model.. In Int. Conf. on Comp. Vis. \& Pat. Recog, 2005.

209. Pieczynski, W., 2005. Modeling non stationary hidden semi-markov chains with triplet markov chains and theory of evidence. 2005 IEEE/SP 13th Workshop on Statistical Signal Processing, pp. 727 - 732, July 17-20 2005. 

210. Pieczynski, W., 2007. Multisensor triplet Markov chains and theory of evidence. International Journal of Approximate Reasoning, Vol. 45, Issue 1, pp. 1-16, May 2007. 

211. Pieczynski, W., Desbouvries, F., 2005. On triplet Markov chains. International Symposium on Applied Stochastic Models and Data Analysis, (ASMDA 2005), Brest, France, May 2005. 

212. Pieczynski, W., Hulard, C., Veit, T., 2002. Triplet Markov Chains in hidden signal restoration. SPIE's International Symposium on Remote Sensing, Crete, Greece, September 22-27, 2002. 

213. Pikrakis, A., Theodoridis, S., Kamarotos, D., 2006. Classification of musical patterns using variable duration hidden Markov models. IEEE Transactions on Audio, Speech and Language Processing [see also IEEE Transactions on Speech and Audio Processing] Vol. 14, Issue 5, pp. 1795 - 1807, Sept. 2006. 

214. Rabiner, L. R., 1989. A tutorial on hidden Markov models and selected application in speech recognition. Proceedings of the IEEE, vol. 77, no. 2, pp. 257-286, Feb. 1989.

215. Ramesh, P., Wilpon, J. G., 1992. Modeling state durations in hidden Markov models for automatic speech recognition. 1992 IEEE International Conference on Acoustics, Speech, and Signal Processing, ICASSP-92., Vol. 1, pp. 381 - 384, 23-26 March 1992. 

216. Ratnayake, N., Savic, M., Sorensen, J., 1992. Use of semi-Markov models for speaker-independent phoneme recognition. 1992 IEEE International Conference on Acoustics, Speech, and Signal Processing, 1992. ICASSP-92., Vol. 1, pp. 565-568, 23-26 March 1992. 

217. Riska, A., Squillante, M., Yu, S.-Z., Liu, Z., Zhang, L., 2002. Matrix-Analytic Analysis of a MAP/PH/1 Queue Fitted to Web Server Data. Fourth International Conference on Matrix Analytic Methods in Stochastic Models, in Matrix-Analytic Methods: Theory and Applications, G. Latouche and P. Taylor (editors), pp. 333-356, World Scientific, Adelaide, Australia, July 2002.

218. Russell S. and Norvig, P., 2010. Artificial Intelligence: A Modern Approach (Third ed.). Prentice Hall. p. 566. ISBN 978-0136042594.

219. Russell, M. J., 1993. A segmental HMM for speech pattern modelling. 1993 IEEE International Conference on Acoustics, Speech, and Signal Processing, ICASSP-93, Vol. 2, pp. 499 - 502, 27-30 April 1993. 

220. Russell, M. J., 2005. Reducing computational load in segmental hidden Markov model decoding for speech recognition. Electronics Letters, Vol. 41, Issue 25, pp. 1408 - 1409, 8 Dec. 2005. 

221. Russell, M. J., Cook, A., 1987. Experimental evaluation of duration modelling techniques for automatic speech recognition. In Proc. of \ IEEE International Conference on Acoustics, Speech, and Signal Processing, pp. 2376--2379, 1987. 

222. Russell, M. J., Moore, R. K., 1985. Explicit modelling of state occupancy in hidden Markov models for automatic speech recognition. in Proc. IEEE Int. Conf. Acoust. Speech Signal Processing, vol. 10, pp. 5-8, Apr. 1985.

223. Salzenstein, F., Collet, C., Lecam, S., Hatt, M., 2007. Non-stationary fuzzy Markov chain. Pattern Recognition Letters, Vol. 28, Issue 16, pp. 2201-2208, 1 Dec. 2007. 

224. Sansom, J., Thompson, C. S., 2008. Spatial and temporal variation of rainfall over New Zealand. J. Geophys. Res., Volume 113, Issue D6, Apr 2008.

225. Sansom, J., Thomson, P., 2001. Fitting hidden semi-markov models to breakpoint rainfall data. J. Appl. Probab, Vol. 38A, Issue (2001), pp. 142-157, 2001.

226. Sarawagi, S., Cohen, W. W., 2004. Semi-Markov Conditional Random Fields for Information Extraction. In Advances in Neural Information Processing Systems 17, NIPS 2004. 

227. Schabus, D., Pucher, M., and Hofer, G., 2014. Joint Audiovisual Hidden Semi-Markov Model-Based Speech Synthesis. IEEE Journal of Selected Topics in Signal Processing, Vol. 8, No. 2, pp. 336-347, April 2014.

228. Schmidler, S. C., Liu, J. S., Brutlag, D. L., 2000. Bayesian Segmentation of Protein Secondary Structure.. J. Comp. Biol., 7:233-248, 2000.

229. Senior, A., Subrahmonia, J., Nathan, K., 1996. Duration modeling results for an on-line handwriting recognizer. In Proceedings of 1996 IEEE International Conference on Acoustics, Speech, and Signal Processing, 1996. ICASSP-96. Vol. 6, pp. 3482 - 3485, 7-10 May 1996. 

230. Sin, B., Kim, J. H., 1995. Nonstationary hidden Markov model. Signal Processing, vol. 46, pp. 31--46, 1995.

231. Sitaram, R. N. V., Sreenivas, T. V., 1994. Phoneme recognition in continuous speech using large inhomogeneous hidden Markov models. 1994 IEEE International Conference on Acoustics, Speech, and Signal Processing, ICASSP-94, Vol. i, pp. I/41 - I/44, 19-22 April 1994. 

232. Sitaram, R., Sreenivas, T., 1997. Connected phoneme HMMs with implicit duration modelling for better speech recognition. In Proceedings of 1997 International Conference on Information, Communications and Signal Processing, ICICS 1997, pp. 1024-1028, 9-12 Sept. 1997. 

233. Squire, K., 2004. HMM-based Semantic Learning for a Mobile Robot. Ph. D. dissertation, University of Illinois at Urbana-Champaign, 2004, Available: http://www. ifp. uiuc. edu/~k-squire/thesis/Kevin\_thesis\_full.pdf 

234. Squire, K., Levinson, S. E., 2005. Recursive Maximum Likelihood Estimation for Hidden Semi-Markov Models. 2005 IEEE Workshop on Machine Learning for Signal Processing, pp. 329 - 334, 28-30 Sept. 2005. 

235. Su, C., and Shen, J.-Y., 2013. A Novel Multi-hidden Semi-Markov Model for Degradation State Identification and Remaining Useful Life Estimation. Qual. Reliab. Engng. Int., 2013, 29, 1181¨C1192.

236. Tachibana, M., Izawa, S., Nose, T., Kobayashi, T., 2008. Speaker and style adaptation using average voice model for style control in hmm-based speech synthesis. in Proc. ICASSP 2008, pp. 4633-4636. 

237. Tachibana, M., Yamagishi, J., Masuko, T., Kobayashi, T., 2005. Performance evaluation of style adaptation for hidden semi-Markov model based speech synthesis., In INTERSPEECH-2005, 2805-2808, 2005.

238. Tachibana, M., Yamagishi, J., Masuko, T., Kobayashi, T., 2006. A Style Adaptation Technique for Speech Synthesis Using HSMM and Suprasegmental Features. IEICE Transactions on Information and Systems, Vol. E89-D(3), pp. 1092-1099, 2006.

239. Tagawa, T., Yairi, T., Takata, N., Yamaguchi, Y., 2011. Data monitoring of spacecraft using mixture probabilistic principal component analysis and hidden Semi-Markov models. 2011 3rd International Conference on Data Mining and Intelligent Information Technology Applications (ICMiA), 24-26 Oct. 2011, Page(s): 141 ¨C 144.

240. Taghva, A., 2011. Hidden Semi-Markov Models in the Computerized Decoding of Microelectrode Recording Data for Deep Brain Stimulator Placement. World Neurosurgery, Vol. 75, Issues 5¨C6, May¨CJune 2011, Pages 758¨C763.e4.

241. Takahashi, Y., Tamamori, A., Nankaku, Y., Tokuda, K., 2010. Face recognition based on separable lattice 2-D HMM with state duration modeling. 2010 IEEE International Conference on Acoustics, Speech and Signal Processing, pp. 2162-2165, 2010.

242. Tan, X. R., Xi, H. S., 2008. Hidden semi-Markov model for anomaly detection. Applied Mathematics and Computation, Vol. 205, 2008, pp. 562--567. 

243. Taugourdeau, O., Caraglio, Y., Sabatier, S., Guedon, Y., 2015. Characterizing the respective importance of ontogeny and environmental constraints in forest tree development using growth phase duration distributions. Ecological Modelling, 300 (2015) 61¨C72.

244. Ter-Hovhannisyan, V., 2008. Unsupervised and semi-supervised training methods for eukaryotic gene prediction. A PhD Dissertation, Georgia Institute of Technology, 2008. 

245. Thoraval, L., 2002. Technical Report: Hidden Semi-Markov Event Sequence Models. 2002, Available: http://picabia. ustrasbg. fr/lsiit/perso/thoraval. htm

246. Thoraval, L., Carrault, G., Bellanger, J. J., 1994. Heart signal recognition by hidden Markov models: The ECG case. Meth. Inform. Med., vol. 33, pp. 10--14, 1994.

247. Thoraval, L., Carrault, G., Mora, F., 1992. Continuously variable duration hidden Markov models for ECG segmentation. Engineering in Medicine and Biology Society, 1992. vol. 14. Proceedings of the Annual International Conference of the IEEE, vol. 2, pp. 529-530, Oct. 29-Nov. 1, 1992. 

248. Tilmanne, J., and Dutoit, T., 2012a. Continuous Control of Style and Style Transitions through Linear Interpolation in Hidden Markov Model Based Walk Synthesis. M.L. Gavrilova and C.J.K. Tan (Eds.): Trans. on Comput. Sci. XVI, LNCS 7380, pp. 34¨C54, 2012.

249. Tilmanne, J., and Dutoit, T., 2012b. Walker Speed Adaptation in Gait Synthesis. M. Kallmann and K. Bekris (Eds.): MIG 2012, LNCS 7660, pp. 266¨C277, 2012.

250. Tokdar, S., Xi, P., Kelly, R. C., Kass, R. E., 2010. Detection of bursts in extracellular spike trains using hidden semi-Markov point process models. J. Comput Neurosci (2010) 29:203¨C212.

251. Tuan, T., Park, K., 1999. Multiple Time Scale Congestion Control for Self-Similar Network Traffic. Performance Evaluation, 36, pp. 359-386, 1999.

252. Tweed, D., Fisher, R., Bins, J., List, T., 2005. Efficient hidden semi-Markov model inference for structured video sequences. 2nd Joint IEEE International Workshop on Visual Surveillance and Performance Evaluation of Tracking and Surveillance, 2005 . pp. 247 -- 254, 15-16 Oct. 2005. 

253. Valentini-Botinhao, C., Yamagishi, J., King, S., Maia, R., 2014. Intelligibility enhancement of HMM-generated speech in additive noise by modifying Mel cepstral coefficients to increase the glimpse proportion. Computer Speech and Language, 28 (2014) 665¨C686

254. Vaseghi, S. V., 1991. Hidden Markov models with duration-dependent state transition probabilities. Electronics Letters, Vol. 27, Issue 8, pp. 625 - 626, 11 April 1991. 

255. Vaseghi, S. V., 1995. State duration modeling in hidden Markov models. Signal Processing, vol. 41, no. 1, pp. 31--41, 1995.

256. Vaseghi, S. V., Conner, P., 1992. On increasing structural complexity of finite state speech models. 1992 IEEE International Conference on Acoustics, Speech, and Signal Processing, 1992. ICASSP-92., Vol. 1, pp. 537 - 540, 23-26 March 1992. 

257. Veeramany, A., Pandey, M. D., 2011. Reliability analysis of nuclear component cooling water system using semi-Markov process model. Nuclear Engineering and Design. 241( 5), 2011, pp. 1799¨C1806.

258. Wang, J. B., Athitsos, V., Sclaroff, S., Betke, M., 2008. Detecting Objects of Variable Shape Structure With Hidden State Shape Models. IEEE Transactions on Pattern Analysis and Machine Intelligence, March 2008, Vol. 30, No. 3, pp. 477-492. 

259. Wang, X., 1994. Durationally constrained training of hmm without explicit state durational pdf. Proceedings of the Institute of Phonetic Sciences, University of Amsterdam, no. 18, pp. 111-130, 1994. 

260. Wang, X., ten Bosch, L. F. M., Pols, L. C. W., 1996. Integration of context-dependent durational knowledge into HMM-based speech recognition. In \ Proceedings of Fourth International Conference on Spoken Language, 1996. ICSLP 96. Vol. 2, pp. 1073-1076, 3-6 Oct. 1996. 

261. Wang, X., Wang, H.-W., Qi, C., Sivakumar, A. I., 2014. Reinforcement Learning Based Predictive Maintenance for a Machine with Multiple Deteriorating Yield Levels. Journal of Computational Information Systems, 10: 1 (2014) 9¨C19.

262. Wang, Z., Ansari, J., Atanasovski, V., Denkovski, D., et al., 2011. Self-organizing home networking based on cognitive radio technologies. 2011 IEEE Symposium on New Frontiers in Dynamic Spectrum Access Networks (DySPAN), 3-6 May 2011, Page(s): 666 ¨C 667.

263. Wellington, C., Courville, A., Stentz, A., 2005. Interacting markov random fields for simultaneous terrain modeling and obstacle detection. In Proceedings of Robotics: Science and Systems, 2005. 

264. Wong, Y. F., Drummond, T., and Sekercioglu, Y. A., 2014. Real-time load disaggregation algorithm using particle-based distribution truncation with state occupancy model. Electronics Letters, 24th April 2014, Vol. 50 No. 9 pp. 697¨C699,

265. Wu Y., Hong, G. S., Wong, Y. S., 2010. HMM with Explicit State Duration for Prognostics in Face Milling. 2010 IEEE Conference on Robotics Automation and Mechatronics (RAM), 28-30 June 2010, Page(s): 218 ¨C 223.

266. Wu, C.-H., Hsia, C.-C., Liu, T.-H., Wang, J.-F., 2006. Voice conversion using duration-embedded bi-HMMs for expressive speech synthesis. IEEE Transactions on Audio, Speech and Language Processing, [see also IEEE Transactions on Speech and Audio Processing], Vol. 14, Issue 4, pp. 1109-1116, July 2006 

267. Wu, X., Li, L., Rui, X.-M., 2014. Icing load accretion prognosis for power transmission line with modified hidden semi-Markov model. IET Gener. Transm. Distrib., 2014, Vol. 8, Iss. 3, pp. 480¨C485.

268. Xi, L.-Q., Fondufe-Mittendorf, Y., Xia, L., Flatow, J., Widom, J., and Wang, J.-P., 2010. Predicting nucleosome positioning using a duration Hidden Markov Model. BMC Bioinformatics 2010, 11:346. http://www.biomedcentral.com/1471-2105/11/346.

269. Xie, B.-L., Zhang, Q.-S., 2012. Application-layer Anomaly Detection Based on Application-layer Protocols¡¯ Keywords. 2012 2nd International Conference on Computer Science and Network Technology, pp. 2131-2135.

270. Xie, Y., Tang, S., Huang, X., Tang, C., Liu, X., 2013b. Detecting latent attack behavior from aggregated Web traffic. Computer Communications, 36 (2013) 895¨C907.

271. Xie, Y., Tang, S., Tang, C., Huang, X., 2012. An efficient algorithm for parameterizing HsMM with Gaussian and Gamma distributions. Information Processing Letters, 112 (2012) 732¨C737.

272. Xie, Y., Tang, S., Xiang, Y., and Hu, J., 2013a. Resisting Web Proxy-Based HTTP Attacks by Temporal and Spatial Locality Behavior. IEEE Transactions on Parallel and Distributed Systems, Vol. 24, No. 7, July 2013, pp. 1401-1410.

273. Xie, Y., Tang, S.-S., 2012. Online Anomaly Detection Based on Web Usage Mining. 2012 IEEE 26th International Parallel and Distributed Processing Symposium Workshops & PhD Forum, pp. 1177-1182.

274. Xie, Y., Yu, S.-Z., 2006. A Dynamic Anomaly Detection Model for Web User Behavior Based on HsMM. 10th International Conference on Computer Supported Cooperative Work in Design, pp. 1 -- 6, May 2006

275. Xie, Y., Yu, S.-Z., 2006. A Novel Model for Detecting Application Layer DDoS Attacks. First International Multi-Symposiums on Computer and Computational Sciences, IMSCCS '06. Vol. 2, pp. 56 - 63, 20-24 April 2006.

276. Xu, C., Du, C., Zhao, G. F., Yu, S., 2013. A novel model for user clicks identification based on hidden semi-Markov. Journal of Network and Computer Applications, 36 (2013) 791¨C798.

277. Xu, R.-C., Jiang, T., 2012. Keeping track of position and cell residual dwell time of cellular networks using HSMM structure and Cell-ID information. 2012 IEEE International Conference on Communications (ICC), DOI: 10.1109/ICC.2012.6364758.

278. Yamagishi, J., Kobayashi, T., 2005. Adaptive Training for Hidden Semi-Markov Model. In Proceedings of IEEE International Conference on Acoustics, Speech, and Signal Processing, 2005. (ICASSP '05). Vol. 1, pp. 365 - 368, March 18-23, 2005. 

279. Yamagishi, J., Kobayashi, T., 2007. Average-Voice-Based Speech Synthesis Using HSMM-Based Speaker Adaptation and Adaptive Training. IEICE Transactions on Information and Systems, Vol. E90-D, No. 2, pp. 533-543, 2007.

280. Yamagishi, J., Ogata, K., Nakano, Y., Isogai, J., Kobayashi, T., 2006. HSMM-Based Model Adaptation Algorithms for Average-Voice-Based Speech Synthesis. In Proceedings of 2006 IEEE International Conference on Acoustics, Speech and Signal Processing, 2006. ICASSP 2006. Vol. 1, pp. I-77 - I-80, 14-19 May 2006.

281. Yamazaki, T., Niwase, N., Yamagishi, J., Kobayashi, T., 2005. Human walking motion synthesis based on multiple regression hidden semi-Markov model. International Conference on Cyberworlds, 23-25 Nov. 2005. 

282. Yang, P., Dumont, G., Ansermino, J. M., 2006. An Adaptive Cusum Test Based on a Hidden Semi-Markov Model for Change Detection in Non-invasive Mean Blood Pressure Trend. In Proceedings of the 28th IEEE EMBS Annual International Conference, pp. 3395 - 3398, New York City, USA, Aug 30-Sept 3, 2006. 

283. Yoma, N. B., McInnes, F. R., Jack, M. A., 1998. Weighted Viterbi algorithm and state duration modelling for speech recognition in noise. In Proceedings of the 1998 IEEE International Conference on Acoustics, Speech, and Signal Processing, 1998. ICASSP '98. Vol. 2, pp. 709 - 712, 12-15 May 1998. 

284. Yoma, N. B., McInnes, F. R., Jack, M. A., Stump, S. D., Ling, L. L., 2001. On Including Temporal Constraints in Viterbi Alignment for Speech Recognition in Noise. IEEE Transactions on Speech and Audio Processing, Vol. 9, No. 2, pp. 179-182, Feb 2001.

285. Yoma, N. B., Sanchez, J. S., 2002. MAP Speaker Adaptation of State Duration Distributions for Speech Recognition. IEEE Transactions on Speech and Audio Processing, Vol. 10, No. 7, pp. 443-450, Oct 2002. 

286. Yu, S.-Z., 2005. Multiple tracking based anomaly detection of mobile nodes. 2nd International Conference on Mobile Technology, Applications and Systems, 2005, pp. 5-9, 15-17 Nov. 2005.

287. Yu, S.-Z., Kobayashi, H., 1947. Practical Implementation of an Efficient Forward-Backward Algorithm for an Explicit-Duration Hidden Markov Model. IEEE Trans. on Signal Processing, vol. 54, no. 5, pp. 1947-1951, January 2006.

288. Yu, S.-Z., Kobayashi, H., 2003. A Hidden semi-Markov model with missing data and multiple observation sequences for mobility tracking. Signal Processing, vol. 83, no. 2, pp. 235-250, Feb. 2003.

289. Yu, S.-Z., Kobayashi, H., 2003. An efficient forward-backward algorithm for an explicit duration hidden Markov model. IEEE Signal Processing Letters, vol. 10, no. 1, pp. 11-14, Jan. 2003.

290. Yu, S.-Z., Liu, Z., Squillante, M., Xia, C., Zhang, L., 2002. A hidden semi-Markov model for web workload self-similarity. 21st IEEE International Performance, Computing, and Communications Conference (IPCCC 2002), pp. 65-72, Phoenix, Arizona, April 3-5, 2002. 

291. Yu, S.-Z., Mark, B. L., Kobayashi, H., 2000. Mobility Tracking and Traffic Characterization for Efficient Wireless Internet Access. IEEE MMT'2000, Multiaccess, Mobility and Teletraffic in Wireless Communications, Vol. 5, pp. 279-290, Duck Key, Florida, Dec. 3-6, 2000.

292. Yun, Y.-S., Oh, Y.-H., 2000. A segmental-feature HMM for speech pattern modeling. IEEE Signal Processing Letters, 7(6):135--137, 2000.

293. Yurur, O., Liu, C., Perera, C., Chen, M., Liu, X., Moreno, W., 2014. Energy-Efficient and Context-Aware Smartphone Sensor Employment. IEEE Transactions on Vehicular Technology, 10.1109/TVT.2014.2364619, 2014.

294. Zappi, V., Pistillo, A., Calinon, S., Brogni A., and Caldwell, D., 2012. Music expression with a robot manipulator used as a bidirectional tangible interface. EURASIP Journal on Audio, Speech, and Music Processing, 2012:2. http://asmp.eurasipjournals.com/content/2012/1/2.

295. Zen, H., Tokuda, K., Masuko, T., Kobayashi, T., and Kitamura, T., 2007. A hidden semi-Markov model-based speech synthesis system. IEICE Trans. Inf. Syst., vol. E90-D, no. 5, pp. 825¨C834, May 2007.

296. Zen, H., Tokuda, K., Masuko, T., Kobayashi, T., Kitamura, T., 2004. Hidden semi-Markov model based speech synthesis. In Proc. of 8th International Conference on Spoken Language Processing, ICSLP, pp. 1393-1396, Jeju Island, Korea, Oct 4-8, 2004. 

297. Zha, Y.-B., Yue, S.-G., Yin, Q.-J., Liu, X.-C., 2013. Activity recognition using logical hidden semi-Markov models. 2013 10th International Computer Conference on Wavelet Active Media Technology and Information Processing (ICCWAMTIP), 17-19 Dec. 2013, Page(s): 77 ¨C 84.

298. Zhang, W., Chen, F., Xu, W., Du, Y., 2008. Learning Human Activity Containing Sparse Irrelevant Events in Long Sequence. 2008 Congress on Image and Signal Processing, CISP'08, 2008, pp. 211-215.

299. Zhang, W., Chen, F., Xu, W., Zhang, E., 2006. Real-Time Video Intelligent Surveillance System. 2006 IEEE International Conference on Multimedia and Expo, pp. 1021 - 1024, July 2006. 

300. Zhao, F., Wang, G.-N., Deng, C.-Y., Zhao, Y., 2014. A Real-Time Intelligent Abnormity Diagnosis Platform in Electric Power System. 2014 16th International Conference on Advanced Communication Technology, (ICACT), 16-19 Feb. 2014, page(s): 83 ¨C 87.

301. Zhao, Y., Liu, X., Gan S., and Zheng, W., 2010. Predicting Disk Failures with HMM- and HSMM-based Approaches. Proc. Industrial Conf. on Data Mining '10, 2010.
