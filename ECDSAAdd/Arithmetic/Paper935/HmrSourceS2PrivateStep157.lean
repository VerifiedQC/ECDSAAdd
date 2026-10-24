import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep155
import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable
import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrFrontComposition
import ECDSAAdd.Arithmetic.Paper935.HmrHybridF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedArmedCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFront
import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFront
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs

namespace ECDSAAdd.Arithmetic.Paper935
private local instance privateStepDisjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

private def s2Step157CompleteMoves : List (Wire × Wire) := [(798,190),(851,702)]

private def s2Step157EarlyControlLog : HmrEarlyControlLog := ⟨[851, 798, 790, 797, 793],[804],[847],[780, 867, 877, 879, 882, 885],[]⟩

private def s2Step157FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[804], [793], [790], [797]],[[], [], [], []]⟩,[849],[778],[847],[780],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[847, 780, 867, 877]⟩

private def s2Step157CompleteLog : HmrEarlyStepLog := ⟨s2Step157FrontLog,s2Step157CompleteMoves,s2Step157EarlyControlLog⟩

private def s2Step157ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701],768⟩

private def s2Step157ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩

private def s2Step157ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189],769⟩

private def s2Step157ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private def s2Step157FrontOut : WindowBank := ⟨s2Step157ExitFOut,s2Step157ExitGOut,s2Step157ExitFvOut,s2Step157ExitGvOut⟩

private def s2Step157CompleteOut : WindowBank := s2Step157FrontOut.repacked s2Step157CompleteMoves

private def s2Step157EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step157EarlyControlPositiveArena,[804],s2Step157EarlyControlEqualityArena,[847],⟨⟨849,false⟩,[⟨⟨804,false⟩,847⟩]⟩⟩

private def s2Step157EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,851⟩,⟨⟨774,false⟩,798⟩,⟨⟨775,false⟩,790⟩,⟨⟨776,false⟩,797⟩,⟨⟨777,false⟩,793⟩]⟩

private def s2Step157EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step157EarlyControlZeroArena,s2Step157EarlyControlZeroPlan,s2Step157EarlyControlClassPlan,s2Step157EarlyControlFlagArena,s2Step157EarlyControlFittedArena,s2Step157EarlyControlHistoryArena,s2Step157EarlyControlSigmaArena,s2Step157EarlyControlOutputArena,s2Step157EarlyControlLog⟩

private def s2Step157CounterWork : List Wire := [847, 780, 867, 877]

private theorem s2Step157Counter_bounded : s2Step157CounterWork.toFinset⊆arenaWires := by norm_num [s2Step157CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step157HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157CounterDuring : Arena := ⟨s2Step157HeadFvAfter.live∪s2Step157CounterWork.toFinset,Finset.union_subset s2Step157HeadFvAfter.bounded s2Step157Counter_bounded⟩

private def s2Step157EntryFFresh : List Wire := []

private def s2Step157EntryFvFresh : List Wire := []

private def s2Step157EntryGFresh : List Wire := []

private def s2Step157EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157EntryGvAfter : Arena := s2Step157EntryFBefore

private def s2Step157EntryGvFresh : List Wire := []

private def s2Step157ExitFExtra : List Wire := [702, 793]

private def s2Step157ExitFvExtra : List Wire := [797]

private def s2Step157ExitGExtra : List Wire := [190, 804]

private def s2Step157ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<190) ∨ (191≤q ∧ q<702) ∨ (703≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157ExitGvExtra : List Wire := [790]

private def s2Step157Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157Add0Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step157Add0_bounded : s2Step157Add0Work.toFinset⊆arenaWires := by
  have h : s2Step157Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step157Add0During : Arena := ⟨s2Step157Add0Arena.live∪s2Step157Add0Work.toFinset,Finset.union_subset s2Step157Add0Arena.bounded s2Step157Add0_bounded⟩

private def s2Step157Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157Add1Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step157Add1_bounded : s2Step157Add1Work.toFinset⊆arenaWires := by
  have h : s2Step157Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step157Add1During : Arena := ⟨s2Step157Add1Arena.live∪s2Step157Add1Work.toFinset,Finset.union_subset s2Step157Add1Arena.bounded s2Step157Add1_bounded⟩

private def s2Step157F4FlagArena : Arena := ⟨s2Step157HeadFvAfter.live∪{847},Finset.union_subset s2Step157HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step157F4Plan : HmrHybridF4Plan := ⟨s2Step157F4FlagArena,[847],s2Step157Add0Arena,[780],s2Step157Add0During,s2Step157Add0Work,s2Step157Add1During,s2Step157Add1Work⟩

private def s2Step157HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 793],768⟩

private def s2Step157HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 797],770⟩

private def s2Step157HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 804],769⟩

private def s2Step157HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 790],771⟩

private def s2Step157FrontHead : WindowBank := ⟨s2Step157HeadFOut,s2Step157HeadGOut,s2Step157HeadFvOut,s2Step157HeadGvOut⟩

private def s2Step157EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702],768⟩

private def s2Step157EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩

private def s2Step157EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190],769⟩

private def s2Step157EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private def s2Step157FrontPair : WindowBank := ⟨s2Step157EntryFOut,s2Step157EntryGOut,s2Step157EntryFvOut,s2Step157EntryGvOut⟩

private def s2Step157FrontSigmaArena : Arena := ⟨s2Step157EntryGvAfter.live∪{849},Finset.union_subset s2Step157EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step157HeadFFresh : List Wire := [793]

private def s2Step157HeadFvFresh : List Wire := [797]

private def s2Step157HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157HeadGFresh : List Wire := [804]

private def s2Step157HeadGvFresh : List Wire := [790]

private def s2Step157FrontPlan : HmrSourceFront := ⟨s2Step157EntryGvAfter,s2Step157FrontPair,(growRow 768 s2Step157EntryFFresh ++ (growRow 769 s2Step157EntryGFresh ++ (growRow 770 s2Step157EntryFvFresh ++ (growRow 771 s2Step157EntryGvFresh ++ [])))),s2Step157FrontSigmaArena,[849],s2Step157HeadGBefore,[778],
  s2Step157HeadFvAfter,s2Step157FrontHead,(growRow 769 s2Step157HeadGFresh ++ (growRow 768 s2Step157HeadFFresh ++ (growRow 771 s2Step157HeadGvFresh ++ (growRow 770 s2Step157HeadFvFresh ++ [])))),s2Step157F4Plan,s2Step157CounterDuring,s2Step157CounterWork,s2Step157ExitGvAfter,s2Step157FrontOut,(shrinkRow 769 s2Step157ExitGExtra ++ (shrinkRow 768 s2Step157ExitFExtra ++ (shrinkRow 770 s2Step157ExitFvExtra ++ (shrinkRow 771 s2Step157ExitGvExtra ++ []))))⟩

private def s2Step157CompletePlan : HmrEarlyStepPlan := ⟨s2Step157FrontPlan,s2Step157EarlyControlArena,s2Step157EarlyControlPlan,s2Step157CompleteMoves⟩

private theorem s2Step157Complete_apart : List.Disjoint (s2Step157CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [849, 778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step157CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[849, 778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step157Complete_owned : (s2Step157CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step157EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step157EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step157CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,702),(703,780),(781,790),(791,793),(794,797),(799,804),(805,847),(848,867),(868,877),(878,879),(880,882),(883,885),(886,888),(889,890)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step157CompleteRelocationMove0Borrowed : Arena := ⟨s2Step157ExitGvAfter.live∪{190},Finset.union_subset s2Step157ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step157CompleteRelocationMove1Borrowed : Arena := ⟨s2Step157CompleteRelocationMove0After.live∪{702},Finset.union_subset s2Step157CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step157CompleteRelocation_move0_owned : 798∈s2Step157ExitGvAfter.live := by norm_num [s2Step157ExitGvAfter,arenaWires]

private theorem s2Step157CompleteRelocation_move0_reserve : s2Step157ExitGvAfter.reserve {190}=some s2Step157CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step157ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step157CompleteRelocation_move0_retire : s2Step157CompleteRelocationMove0Borrowed.retireSet {798}=s2Step157CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step157CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step157CompleteRelocationMove0Borrowed,s2Step157ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step157CompleteRelocation_move1_owned : 851∈s2Step157CompleteRelocationMove0After.live := by norm_num [s2Step157CompleteRelocationMove0After,arenaWires]

private theorem s2Step157CompleteRelocation_move1_reserve : s2Step157CompleteRelocationMove0After.reserve {702}=some s2Step157CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step157CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step157CompleteRelocation_move1_retire : s2Step157CompleteRelocationMove1Borrowed.retireSet {851}=s2Step157EarlyControlArena := by
  unfold Arena.retireSet s2Step157EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step157CompleteRelocationMove1Borrowed,s2Step157CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step157CompleteRelocation_checked : s2Step157ExitGvAfter.checkRepack [(798,190),(851,702)]=some s2Step157EarlyControlArena := by
  have tail2 : s2Step157EarlyControlArena.checkRepack []=some s2Step157EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step157CompleteRelocationMove0After s2Step157CompleteRelocationMove1Borrowed s2Step157EarlyControlArena s2Step157EarlyControlArena 851 702 []
    s2Step157CompleteRelocation_move1_owned s2Step157CompleteRelocation_move1_reserve s2Step157CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step157ExitGvAfter s2Step157CompleteRelocationMove0Borrowed s2Step157CompleteRelocationMove0After s2Step157EarlyControlArena 798 190 [(851,702)]
    s2Step157CompleteRelocation_move0_owned s2Step157CompleteRelocation_move0_reserve s2Step157CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step157Complete_repack : s2Step157ExitGvAfter.checkRepack s2Step157CompleteMoves=some s2Step157EarlyControlArena := by
  simpa only [s2Step157CompleteMoves] using s2Step157CompleteRelocation_checked

private theorem s2Step157EarlyControl_branchOwned : ([778] : List Wire).toFinset⊆s2Step157EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step157EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157EarlyControl_branch : compileHmrBranchRetirement s2Step157EarlyControlSigmaArena 778=some s2Step157EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step157EarlyControl_branchOwned
  · ext q
    simp [s2Step157EarlyControlOutputArena,s2Step157EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step157EarlyControl_classEqualityBorrow : s2Step157EarlyControlPositiveArena.checkBorrow (([849, 804] : List Wire).length-1) s2Step157EarlyControlLog.classWork=some s2Step157EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step157EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step157EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step157EarlyControlEqualityArena,s2Step157EarlyControlPositiveArena,s2Step157EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step157EarlyControl_classEqualityOwned : ([849, 804] : List Wire).toFinset⊆s2Step157EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step157EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157EarlyControl_classEquality : compileHmrEqualityLog s2Step157EarlyControlPositiveArena [849, 804] 0 s2Step157EarlyControlLog.classWork=some (s2Step157EarlyControlEqualityArena,s2Step157EarlyControlLog.classWork,s2Step157EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step157EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step157EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step157EarlyControl_classOwned : ([777, 793, 849] : List Wire).toFinset⊆s2Step157EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step157EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157EarlyControl_positiveBorrow : s2Step157EarlyControlZeroArena.checkBorrow (1) s2Step157EarlyControlLog.positiveWork=some s2Step157EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step157EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step157EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step157EarlyControlPositiveArena,s2Step157EarlyControlZeroArena,s2Step157EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step157EarlyControl_class : compileHmrSourceClassLog s2Step157EarlyControlZeroArena false 777 s2Step157EarlyControlZeroPlan.top 0 849 s2Step157EarlyControlLog.positiveWork s2Step157EarlyControlLog.classWork=some s2Step157EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step157EarlyControlClassPlan s2Step157EarlyControlZeroArena false 777 s2Step157EarlyControlZeroPlan.top 0 849
  constructor
  · decide +kernel
  · exact s2Step157EarlyControl_classOwned
  · exact s2Step157EarlyControl_positiveBorrow
  · exact s2Step157EarlyControl_classEquality

private theorem s2Step157EarlyControl_entryRecordOwned : ([778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step157EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step157EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157EarlyControl_entrySigmaOwned : ([849, 254] : List Wire).toFinset⊆s2Step157EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step157EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157EarlyControl_fitBorrow : s2Step157EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step157EarlyControlLog.recordFresh=some s2Step157EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step157EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step157EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step157EarlyControlFittedArena,s2Step157EarlyControlFlagArena,s2Step157EarlyControlLog,arenaWires]

private theorem s2Step157EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step157EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step157EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157EarlyControl_fit : compileHmrRecordGrowLog s2Step157EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step157EarlyControlLog.recordFresh=some s2Step157EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step157EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step157EarlyControl_fitBorrow

private theorem s2Step157EarlyControl_flagsBorrow : s2Step157EarlyControlEqualityArena.checkBorrow (6) s2Step157EarlyControlLog.flagWork=some s2Step157EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step157EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step157EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step157EarlyControlFlagArena,s2Step157EarlyControlEqualityArena,s2Step157EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step157EarlyControl_flagsOwned : ([847, 253, 252, 251] : List Wire).toFinset⊆s2Step157EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step157EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157EarlyControl_flags : compileHmrFlagsLog s2Step157EarlyControlClassPlan.equalityArena s2Step157EarlyControlClassPlan.equality.top 253 252 251 s2Step157EarlyControlLog.flagWork=some s2Step157EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step157EarlyControl_flagsOwned⟩
  · exact s2Step157EarlyControl_flagsBorrow

private theorem s2Step157EarlyControl_historyBorrow : s2Step157EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step157EarlyControlLog.recordFresh=some s2Step157EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step157EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step157EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step157EarlyControlHistoryArena,s2Step157EarlyControlArena,s2Step157EarlyControlLog,arenaWires]

private theorem s2Step157EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step157EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step157EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157EarlyControl_history : compileHmrRecordGrowLog s2Step157EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step157EarlyControlLog.recordFresh=some s2Step157EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step157EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step157EarlyControl_historyBorrow

private theorem s2Step157EarlyControl_sigmaOwned : ([254, 849] : List Wire).toFinset⊆s2Step157EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step157EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157EarlyControl_sigmaReleaseOwned : ([849] : List Wire).toFinset⊆s2Step157EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step157EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157EarlyControl_sigmaRelease : s2Step157EarlyControlHistoryArena.release {849} (fun _ => false)=some s2Step157EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step157EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step157EarlyControlSigmaArena,s2Step157EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step157EarlyControl_sigma : compileHmrSigmaDropLog s2Step157EarlyControlHistoryArena false 0 0 254 849 []=some s2Step157EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step157EarlyControl_sigmaOwned⟩
  · exact s2Step157EarlyControl_sigmaRelease

private theorem s2Step157EarlyControl_zeroBorrow : s2Step157EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step157EarlyControlLog.zeroWork=some s2Step157EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step157EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step157EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step157EarlyControlZeroArena,s2Step157EarlyControlArena,s2Step157EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step157EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step157EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step157EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157EarlyControl_zero : compileHmrEqualityLog s2Step157EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step157EarlyControlLog.zeroWork=some (s2Step157EarlyControlZeroArena,s2Step157EarlyControlLog.zeroWork,s2Step157EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step157EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step157EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step157EarlyControl_logged : s2Step157EarlyControlPlan.Logged s2Step157EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 849 254 253 252 251 778 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step157EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step157EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step157EarlyControl_zero
  · exact s2Step157EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step157EarlyControl_flags
  · exact s2Step157EarlyControl_fit
  · exact s2Step157EarlyControl_history
  · exact s2Step157EarlyControl_sigma
  · exact s2Step157EarlyControl_branch

private theorem s2Step157EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step157EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 849 254 253 252 251 778 42 s2Step157EarlyControlLog=some s2Step157EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step157EarlyControlPlan s2Step157EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 849 254 253 252 251 778 42 s2Step157EarlyControl_logged

private def s2Step157EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702],768⟩

private def s2Step157EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩

private def s2Step157EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190],769⟩

private def s2Step157EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private def s2Step157FrontBank : WindowBank := ⟨s2Step157EntryFRow,s2Step157EntryGRow,s2Step157EntryFvRow,s2Step157EntryGvRow⟩

private def s2Step157Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 793, 768]

private def s2Step157Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 804, 769]

private def s2Step157Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 797, 770]

private def s2Step157Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 790, 771]

private theorem s2Step157Counter_apart : Disjoint s2Step157HeadFvAfter.live s2Step157CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step157HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157Counter_borrowed : s2Step157HeadFvAfter.checkBorrow 4 s2Step157CounterWork=some s2Step157CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step157HeadFvAfter s2Step157CounterDuring s2Step157CounterWork.toFinset s2Step157Counter_bounded s2Step157Counter_apart rfl

private theorem s2Step157Counter_owned : (849::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step157HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step157HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157Counter_checked : compileHmrCounterStepLog s2Step157HeadFvAfter true 849 [772, 773, 774, 775, 776, 777] s2Step157CounterWork=some s2Step157CounterDuring := by
  have owned : ∀q∈849::[772, 773, 774, 775, 776, 777],q∈s2Step157HeadFvAfter.live := fun q hq => s2Step157Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step157Counter_borrowed

private def s2Step157EntryFAfter : Arena := s2Step157EntryFBefore

private theorem s2Step157EntryBank_incomingDistinct : ([s2Step157EntryFRow,s2Step157EntryGRow,s2Step157EntryFvRow,s2Step157EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157EntryF_Incoming : rowsOwned s2Step157EntryFBefore [s2Step157EntryFRow,s2Step157EntryGRow,s2Step157EntryFvRow,s2Step157EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step157EntryFRow,s2Step157EntryGRow,s2Step157EntryFvRow,s2Step157EntryGvRow] 0 s2Step157EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step157EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step157EntryBank_outgoingOwned : rowsOwned s2Step157EntryGvAfter [s2Step157EntryFOut,s2Step157EntryGOut,s2Step157EntryFvOut,s2Step157EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step157EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step157EntryF_Outgoing : rowsOwned s2Step157EntryGvAfter [s2Step157EntryFOut,s2Step157EntryGOut,s2Step157EntryFvOut,s2Step157EntryGvOut] :=
  hmrRows_owned_drop s2Step157EntryGvAfter [s2Step157EntryFOut,s2Step157EntryGOut,s2Step157EntryFvOut,s2Step157EntryGvOut] 0 s2Step157EntryBank_outgoingOwned

private theorem s2Step157EntryF_distinct : (s2Step157EntryFRow.sign::s2Step157EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157EntryF_owned : (s2Step157EntryFRow.sign::s2Step157EntryFRow.payload).toFinset⊆s2Step157EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step157EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157EntryF_reserved : s2Step157EntryFBefore.reserve s2Step157EntryFFresh.toFinset=some s2Step157EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step157EntryFFresh,arenaWires]
  · norm_num [s2Step157EntryFBefore,s2Step157EntryFFresh,arenaWires]
  · simp only [s2Step157EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step157EntryF_checked : planRowResizeLog s2Step157EntryFBefore s2Step157EntryFRow 191 s2Step157EntryFFresh=
    some (s2Step157EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702],768⟩,growRow 768 s2Step157EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step157EntryFBefore s2Step157EntryFAfter s2Step157EntryFRow 191 s2Step157EntryFFresh
    s2Step157EntryF_distinct s2Step157EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step157EntryF_reserved
  have rowEq : WindowRow.mk (s2Step157EntryFRow.payload++s2Step157EntryFFresh) s2Step157EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step157EntryFvAfter : Arena := s2Step157EntryFBefore

private def s2Step157EntryFvBefore : Arena := s2Step157EntryFBefore

private theorem s2Step157EntryFv_Incoming : rowsOwned s2Step157EntryFvBefore [s2Step157EntryFvRow,s2Step157EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step157EntryFRow,s2Step157EntryGRow,s2Step157EntryFvRow,s2Step157EntryGvRow] 2 s2Step157EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step157EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step157EntryFv_Outgoing : rowsOwned s2Step157EntryGvAfter [s2Step157EntryFvOut,s2Step157EntryGvOut] :=
  hmrRows_owned_drop s2Step157EntryGvAfter [s2Step157EntryFOut,s2Step157EntryGOut,s2Step157EntryFvOut,s2Step157EntryGvOut] 2 s2Step157EntryBank_outgoingOwned

private theorem s2Step157EntryFv_distinct : (s2Step157EntryFvRow.sign::s2Step157EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157EntryFv_owned : (s2Step157EntryFvRow.sign::s2Step157EntryFvRow.payload).toFinset⊆s2Step157EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step157EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157EntryFv_reserved : s2Step157EntryFvBefore.reserve s2Step157EntryFvFresh.toFinset=some s2Step157EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step157EntryFvFresh,arenaWires]
  · norm_num [s2Step157EntryFvBefore,s2Step157EntryFBefore,s2Step157EntryFvFresh,arenaWires]
  · simp only [s2Step157EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step157EntryFv_checked : planRowResizeLog s2Step157EntryFvBefore s2Step157EntryFvRow 93 s2Step157EntryFvFresh=
    some (s2Step157EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩,growRow 770 s2Step157EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step157EntryFvBefore s2Step157EntryFvAfter s2Step157EntryFvRow 93 s2Step157EntryFvFresh
    s2Step157EntryFv_distinct s2Step157EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step157EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step157EntryFvRow.payload++s2Step157EntryFvFresh) s2Step157EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step157EntryGAfter : Arena := s2Step157EntryFBefore

private def s2Step157EntryGBefore : Arena := s2Step157EntryFBefore

private theorem s2Step157EntryG_Incoming : rowsOwned s2Step157EntryGBefore [s2Step157EntryGRow,s2Step157EntryFvRow,s2Step157EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step157EntryFRow,s2Step157EntryGRow,s2Step157EntryFvRow,s2Step157EntryGvRow] 1 s2Step157EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step157EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step157EntryG_Outgoing : rowsOwned s2Step157EntryGvAfter [s2Step157EntryGOut,s2Step157EntryFvOut,s2Step157EntryGvOut] :=
  hmrRows_owned_drop s2Step157EntryGvAfter [s2Step157EntryFOut,s2Step157EntryGOut,s2Step157EntryFvOut,s2Step157EntryGvOut] 1 s2Step157EntryBank_outgoingOwned

private theorem s2Step157EntryG_distinct : (s2Step157EntryGRow.sign::s2Step157EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157EntryG_owned : (s2Step157EntryGRow.sign::s2Step157EntryGRow.payload).toFinset⊆s2Step157EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step157EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157EntryG_reserved : s2Step157EntryGBefore.reserve s2Step157EntryGFresh.toFinset=some s2Step157EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step157EntryGFresh,arenaWires]
  · norm_num [s2Step157EntryGBefore,s2Step157EntryFBefore,s2Step157EntryGFresh,arenaWires]
  · simp only [s2Step157EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step157EntryG_checked : planRowResizeLog s2Step157EntryGBefore s2Step157EntryGRow 191 s2Step157EntryGFresh=
    some (s2Step157EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190],769⟩,growRow 769 s2Step157EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step157EntryGBefore s2Step157EntryGAfter s2Step157EntryGRow 191 s2Step157EntryGFresh
    s2Step157EntryG_distinct s2Step157EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step157EntryG_reserved
  have rowEq : WindowRow.mk (s2Step157EntryGRow.payload++s2Step157EntryGFresh) s2Step157EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step157EntryGvBefore : Arena := s2Step157EntryFBefore

private theorem s2Step157EntryGv_Incoming : rowsOwned s2Step157EntryGvBefore [s2Step157EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step157EntryFRow,s2Step157EntryGRow,s2Step157EntryFvRow,s2Step157EntryGvRow] 3 s2Step157EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step157EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step157EntryGv_Outgoing : rowsOwned s2Step157EntryGvAfter [s2Step157EntryGvOut] :=
  hmrRows_owned_drop s2Step157EntryGvAfter [s2Step157EntryFOut,s2Step157EntryGOut,s2Step157EntryFvOut,s2Step157EntryGvOut] 3 s2Step157EntryBank_outgoingOwned

private theorem s2Step157EntryGv_distinct : (s2Step157EntryGvRow.sign::s2Step157EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157EntryGv_owned : (s2Step157EntryGvRow.sign::s2Step157EntryGvRow.payload).toFinset⊆s2Step157EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step157EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157EntryGv_reserved : s2Step157EntryGvBefore.reserve s2Step157EntryGvFresh.toFinset=some s2Step157EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step157EntryGvFresh,arenaWires]
  · norm_num [s2Step157EntryGvBefore,s2Step157EntryFBefore,s2Step157EntryGvFresh,arenaWires]
  · simp only [s2Step157EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step157EntryGv_checked : planRowResizeLog s2Step157EntryGvBefore s2Step157EntryGvRow 93 s2Step157EntryGvFresh=
    some (s2Step157EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩,growRow 771 s2Step157EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step157EntryGvBefore s2Step157EntryGvAfter s2Step157EntryGvRow 93 s2Step157EntryGvFresh
    s2Step157EntryGv_distinct s2Step157EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step157EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step157EntryGvRow.payload++s2Step157EntryGvFresh) s2Step157EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step157EntryBank_rows : planWindowRowsLog s2Step157EntryFBefore [(s2Step157EntryFRow,191),(s2Step157EntryGRow,191),(s2Step157EntryFvRow,93),(s2Step157EntryGvRow,93)] [s2Step157EntryFFresh,s2Step157EntryGFresh,s2Step157EntryFvFresh,s2Step157EntryGvFresh]=
    some (s2Step157EntryGvAfter,[s2Step157EntryFOut,s2Step157EntryGOut,s2Step157EntryFvOut,s2Step157EntryGvOut],(growRow 768 s2Step157EntryFFresh ++ (growRow 769 s2Step157EntryGFresh ++ (growRow 770 s2Step157EntryFvFresh ++ (growRow 771 s2Step157EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step157EntryGvAfter [] []=some (s2Step157EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step157EntryGvBefore s2Step157EntryGvAfter s2Step157EntryGvAfter
    s2Step157EntryGvRow s2Step157EntryGvOut 93 s2Step157EntryGvFresh [] [] []
    (growRow 771 s2Step157EntryGvFresh) ([]) s2Step157EntryGv_Incoming s2Step157EntryGv_checked h4 s2Step157EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step157EntryFvBefore s2Step157EntryFvAfter s2Step157EntryGvAfter
    s2Step157EntryFvRow s2Step157EntryFvOut 93 s2Step157EntryFvFresh [(s2Step157EntryGvRow,93)] [s2Step157EntryGvFresh] [s2Step157EntryGvOut]
    (growRow 770 s2Step157EntryFvFresh) ((growRow 771 s2Step157EntryGvFresh ++ [])) s2Step157EntryFv_Incoming s2Step157EntryFv_checked h3 s2Step157EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step157EntryGBefore s2Step157EntryGAfter s2Step157EntryGvAfter
    s2Step157EntryGRow s2Step157EntryGOut 191 s2Step157EntryGFresh [(s2Step157EntryFvRow,93),(s2Step157EntryGvRow,93)] [s2Step157EntryFvFresh,s2Step157EntryGvFresh] [s2Step157EntryFvOut,s2Step157EntryGvOut]
    (growRow 769 s2Step157EntryGFresh) ((growRow 770 s2Step157EntryFvFresh ++ (growRow 771 s2Step157EntryGvFresh ++ []))) s2Step157EntryG_Incoming s2Step157EntryG_checked h2 s2Step157EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step157EntryFBefore s2Step157EntryFAfter s2Step157EntryGvAfter
    s2Step157EntryFRow s2Step157EntryFOut 191 s2Step157EntryFFresh [(s2Step157EntryGRow,191),(s2Step157EntryFvRow,93),(s2Step157EntryGvRow,93)] [s2Step157EntryGFresh,s2Step157EntryFvFresh,s2Step157EntryGvFresh] [s2Step157EntryGOut,s2Step157EntryFvOut,s2Step157EntryGvOut]
    (growRow 768 s2Step157EntryFFresh) ((growRow 769 s2Step157EntryGFresh ++ (growRow 770 s2Step157EntryFvFresh ++ (growRow 771 s2Step157EntryGvFresh ++ [])))) s2Step157EntryF_Incoming s2Step157EntryF_checked h1 s2Step157EntryF_Outgoing
  exact h0

private theorem s2Step157EntryBank_checked : compileHmrBankResizeLog .entry s2Step157EntryFBefore ⟨s2Step157EntryFRow,s2Step157EntryGRow,s2Step157EntryFvRow,s2Step157EntryGvRow⟩ ⟨191,191,93,93⟩ [s2Step157EntryFFresh,s2Step157EntryGFresh,s2Step157EntryFvFresh,s2Step157EntryGvFresh]=
    some (s2Step157EntryGvAfter,⟨s2Step157EntryFOut,s2Step157EntryGOut,s2Step157EntryFvOut,s2Step157EntryGvOut⟩,(growRow 768 s2Step157EntryFFresh ++ (growRow 769 s2Step157EntryGFresh ++ (growRow 770 s2Step157EntryFvFresh ++ (growRow 771 s2Step157EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step157EntryBank_rows]
  rfl

private def s2Step157ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<190) ∨ (191≤q ∧ q<702) ∨ (703≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<190) ∨ (191≤q ∧ q<780) ∨ (781≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157ExitFBefore : Arena := s2Step157ExitGAfter

private def s2Step157ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 793],768⟩

private def s2Step157ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 797],770⟩

private def s2Step157ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 804],769⟩

private def s2Step157ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 790],771⟩

private theorem s2Step157ExitBank_incomingDistinct : ([s2Step157ExitGRow,s2Step157ExitFRow,s2Step157ExitFvRow,s2Step157ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157ExitF_Incoming : rowsOwned s2Step157ExitFBefore [s2Step157ExitFRow,s2Step157ExitFvRow,s2Step157ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step157ExitGRow,s2Step157ExitFRow,s2Step157ExitFvRow,s2Step157ExitGvRow] 1 s2Step157ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step157ExitFBefore (fun q => (0≤q ∧ q<190) ∨ (191≤q ∧ q<780) ∨ (781≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step157ExitBank_outgoingOwned : rowsOwned s2Step157ExitGvAfter [s2Step157ExitGOut,s2Step157ExitFOut,s2Step157ExitFvOut,s2Step157ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step157ExitGvAfter (fun q => (0≤q ∧ q<190) ∨ (191≤q ∧ q<702) ∨ (703≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step157ExitF_Outgoing : rowsOwned s2Step157ExitGvAfter [s2Step157ExitFOut,s2Step157ExitFvOut,s2Step157ExitGvOut] :=
  hmrRows_owned_drop s2Step157ExitGvAfter [s2Step157ExitGOut,s2Step157ExitFOut,s2Step157ExitFvOut,s2Step157ExitGvOut] 1 s2Step157ExitBank_outgoingOwned

private theorem s2Step157ExitF_distinct : (s2Step157ExitFRow.sign::s2Step157ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157ExitF_owned : (s2Step157ExitFRow.sign::s2Step157ExitFRow.payload).toFinset⊆s2Step157ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step157ExitFBefore (fun q => (0≤q ∧ q<190) ∨ (191≤q ∧ q<780) ∨ (781≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157ExitF_retired : s2Step157ExitFBefore.retireSet s2Step157ExitFExtra.toFinset=s2Step157ExitFAfter := by
  unfold Arena.retireSet s2Step157ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step157ExitFBefore,s2Step157ExitGAfter,s2Step157ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step157ExitF_checked : planRowResizeLog s2Step157ExitFBefore s2Step157ExitFRow 190 []=
    some (s2Step157ExitFAfter,s2Step157ExitFOut,shrinkRow 768 s2Step157ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step157ExitFBefore s2Step157ExitFRow 190 s2Step157ExitF_distinct s2Step157ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step157ExitFRow.payload.take 190) s2Step157ExitFRow.sign=s2Step157ExitFOut := by decide +kernel
  have hi : s2Step157ExitFRow.payload.drop 190=s2Step157ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step157ExitF_retired] at result
  exact result

private def s2Step157ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<190) ∨ (191≤q ∧ q<702) ∨ (703≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157ExitFvBefore : Arena := s2Step157ExitFAfter

private theorem s2Step157ExitFv_Incoming : rowsOwned s2Step157ExitFvBefore [s2Step157ExitFvRow,s2Step157ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step157ExitGRow,s2Step157ExitFRow,s2Step157ExitFvRow,s2Step157ExitGvRow] 2 s2Step157ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step157ExitFvBefore (fun q => (0≤q ∧ q<190) ∨ (191≤q ∧ q<702) ∨ (703≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step157ExitFv_Outgoing : rowsOwned s2Step157ExitGvAfter [s2Step157ExitFvOut,s2Step157ExitGvOut] :=
  hmrRows_owned_drop s2Step157ExitGvAfter [s2Step157ExitGOut,s2Step157ExitFOut,s2Step157ExitFvOut,s2Step157ExitGvOut] 2 s2Step157ExitBank_outgoingOwned

private theorem s2Step157ExitFv_distinct : (s2Step157ExitFvRow.sign::s2Step157ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157ExitFv_owned : (s2Step157ExitFvRow.sign::s2Step157ExitFvRow.payload).toFinset⊆s2Step157ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step157ExitFvBefore (fun q => (0≤q ∧ q<190) ∨ (191≤q ∧ q<702) ∨ (703≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157ExitFv_retired : s2Step157ExitFvBefore.retireSet s2Step157ExitFvExtra.toFinset=s2Step157ExitFvAfter := by
  unfold Arena.retireSet s2Step157ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step157ExitFvBefore,s2Step157ExitFAfter,s2Step157ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step157ExitFv_checked : planRowResizeLog s2Step157ExitFvBefore s2Step157ExitFvRow 93 []=
    some (s2Step157ExitFvAfter,s2Step157ExitFvOut,shrinkRow 770 s2Step157ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step157ExitFvBefore s2Step157ExitFvRow 93 s2Step157ExitFv_distinct s2Step157ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step157ExitFvRow.payload.take 93) s2Step157ExitFvRow.sign=s2Step157ExitFvOut := by decide +kernel
  have hi : s2Step157ExitFvRow.payload.drop 93=s2Step157ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step157ExitFv_retired] at result
  exact result

private def s2Step157ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step157ExitG_Incoming : rowsOwned s2Step157ExitGBefore [s2Step157ExitGRow,s2Step157ExitFRow,s2Step157ExitFvRow,s2Step157ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step157ExitGRow,s2Step157ExitFRow,s2Step157ExitFvRow,s2Step157ExitGvRow] 0 s2Step157ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step157ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step157ExitG_Outgoing : rowsOwned s2Step157ExitGvAfter [s2Step157ExitGOut,s2Step157ExitFOut,s2Step157ExitFvOut,s2Step157ExitGvOut] :=
  hmrRows_owned_drop s2Step157ExitGvAfter [s2Step157ExitGOut,s2Step157ExitFOut,s2Step157ExitFvOut,s2Step157ExitGvOut] 0 s2Step157ExitBank_outgoingOwned

private theorem s2Step157ExitG_distinct : (s2Step157ExitGRow.sign::s2Step157ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157ExitG_owned : (s2Step157ExitGRow.sign::s2Step157ExitGRow.payload).toFinset⊆s2Step157ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step157ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157ExitG_retired : s2Step157ExitGBefore.retireSet s2Step157ExitGExtra.toFinset=s2Step157ExitGAfter := by
  unfold Arena.retireSet s2Step157ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step157ExitGBefore,s2Step157ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step157ExitG_checked : planRowResizeLog s2Step157ExitGBefore s2Step157ExitGRow 190 []=
    some (s2Step157ExitGAfter,s2Step157ExitGOut,shrinkRow 769 s2Step157ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step157ExitGBefore s2Step157ExitGRow 190 s2Step157ExitG_distinct s2Step157ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step157ExitGRow.payload.take 190) s2Step157ExitGRow.sign=s2Step157ExitGOut := by decide +kernel
  have hi : s2Step157ExitGRow.payload.drop 190=s2Step157ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step157ExitG_retired] at result
  exact result

private def s2Step157ExitGvBefore : Arena := s2Step157ExitFvAfter

private theorem s2Step157ExitGv_Incoming : rowsOwned s2Step157ExitGvBefore [s2Step157ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step157ExitGRow,s2Step157ExitFRow,s2Step157ExitFvRow,s2Step157ExitGvRow] 3 s2Step157ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step157ExitGvBefore (fun q => (0≤q ∧ q<190) ∨ (191≤q ∧ q<702) ∨ (703≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step157ExitGv_Outgoing : rowsOwned s2Step157ExitGvAfter [s2Step157ExitGvOut] :=
  hmrRows_owned_drop s2Step157ExitGvAfter [s2Step157ExitGOut,s2Step157ExitFOut,s2Step157ExitFvOut,s2Step157ExitGvOut] 3 s2Step157ExitBank_outgoingOwned

private theorem s2Step157ExitGv_distinct : (s2Step157ExitGvRow.sign::s2Step157ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157ExitGv_owned : (s2Step157ExitGvRow.sign::s2Step157ExitGvRow.payload).toFinset⊆s2Step157ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step157ExitGvBefore (fun q => (0≤q ∧ q<190) ∨ (191≤q ∧ q<702) ∨ (703≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157ExitGv_retired : s2Step157ExitGvBefore.retireSet s2Step157ExitGvExtra.toFinset=s2Step157ExitGvAfter := by
  unfold Arena.retireSet s2Step157ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step157ExitGvBefore,s2Step157ExitFvAfter,s2Step157ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step157ExitGv_checked : planRowResizeLog s2Step157ExitGvBefore s2Step157ExitGvRow 93 []=
    some (s2Step157ExitGvAfter,s2Step157ExitGvOut,shrinkRow 771 s2Step157ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step157ExitGvBefore s2Step157ExitGvRow 93 s2Step157ExitGv_distinct s2Step157ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step157ExitGvRow.payload.take 93) s2Step157ExitGvRow.sign=s2Step157ExitGvOut := by decide +kernel
  have hi : s2Step157ExitGvRow.payload.drop 93=s2Step157ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step157ExitGv_retired] at result
  exact result

private theorem s2Step157ExitBank_rows : planWindowRowsLog s2Step157ExitGBefore [(s2Step157ExitGRow,190),(s2Step157ExitFRow,190),(s2Step157ExitFvRow,93),(s2Step157ExitGvRow,93)] [[],[],[],[]]=
    some (s2Step157ExitGvAfter,[s2Step157ExitGOut,s2Step157ExitFOut,s2Step157ExitFvOut,s2Step157ExitGvOut],(shrinkRow 769 s2Step157ExitGExtra ++ (shrinkRow 768 s2Step157ExitFExtra ++ (shrinkRow 770 s2Step157ExitFvExtra ++ (shrinkRow 771 s2Step157ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step157ExitGvAfter [] []=some (s2Step157ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step157ExitGvBefore s2Step157ExitGvAfter s2Step157ExitGvAfter
    s2Step157ExitGvRow s2Step157ExitGvOut 93 [] [] [] []
    (shrinkRow 771 s2Step157ExitGvExtra) ([]) s2Step157ExitGv_Incoming s2Step157ExitGv_checked h4 s2Step157ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step157ExitFvBefore s2Step157ExitFvAfter s2Step157ExitGvAfter
    s2Step157ExitFvRow s2Step157ExitFvOut 93 [] [(s2Step157ExitGvRow,93)] [[]] [s2Step157ExitGvOut]
    (shrinkRow 770 s2Step157ExitFvExtra) ((shrinkRow 771 s2Step157ExitGvExtra ++ [])) s2Step157ExitFv_Incoming s2Step157ExitFv_checked h3 s2Step157ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step157ExitFBefore s2Step157ExitFAfter s2Step157ExitGvAfter
    s2Step157ExitFRow s2Step157ExitFOut 190 [] [(s2Step157ExitFvRow,93),(s2Step157ExitGvRow,93)] [[],[]] [s2Step157ExitFvOut,s2Step157ExitGvOut]
    (shrinkRow 768 s2Step157ExitFExtra) ((shrinkRow 770 s2Step157ExitFvExtra ++ (shrinkRow 771 s2Step157ExitGvExtra ++ []))) s2Step157ExitF_Incoming s2Step157ExitF_checked h2 s2Step157ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step157ExitGBefore s2Step157ExitGAfter s2Step157ExitGvAfter
    s2Step157ExitGRow s2Step157ExitGOut 190 [] [(s2Step157ExitFRow,190),(s2Step157ExitFvRow,93),(s2Step157ExitGvRow,93)] [[],[],[]] [s2Step157ExitFOut,s2Step157ExitFvOut,s2Step157ExitGvOut]
    (shrinkRow 769 s2Step157ExitGExtra) ((shrinkRow 768 s2Step157ExitFExtra ++ (shrinkRow 770 s2Step157ExitFvExtra ++ (shrinkRow 771 s2Step157ExitGvExtra ++ [])))) s2Step157ExitG_Incoming s2Step157ExitG_checked h1 s2Step157ExitG_Outgoing
  exact h0

private theorem s2Step157ExitBank_checked : compileHmrBankResizeLog .exit s2Step157ExitGBefore ⟨s2Step157ExitFRow,s2Step157ExitGRow,s2Step157ExitFvRow,s2Step157ExitGvRow⟩ ⟨190,190,93,93⟩ [[],[],[],[]]=
    some (s2Step157ExitGvAfter,⟨s2Step157ExitFOut,s2Step157ExitGOut,s2Step157ExitFvOut,s2Step157ExitGvOut⟩,(shrinkRow 769 s2Step157ExitGExtra ++ (shrinkRow 768 s2Step157ExitFExtra ++ (shrinkRow 770 s2Step157ExitFvExtra ++ (shrinkRow 771 s2Step157ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step157ExitBank_rows]
  rfl

private theorem s2Step157Add0_apart : Disjoint s2Step157Add0Arena.live s2Step157Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step157Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157Add0_card : s2Step157Add0Arena.live.card=884 := by
  decide +kernel

private theorem s2Step157Add0_borrowed : s2Step157Add0Arena.checkBorrow (hmrHybridCount s2Step157Add0Arena s2Step157Add0B.length) s2Step157Add0Work=some s2Step157Add0During := by
  have len : s2Step157Add0Work.length=hmrHybridCount s2Step157Add0Arena s2Step157Add0B.length := by
    rw [hmrHybridCount,s2Step157Add0_card]
    decide +kernel
  have nd : s2Step157Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step157Add0Arena s2Step157Add0During s2Step157Add0Work.toFinset s2Step157Add0_bounded s2Step157Add0_apart rfl

private theorem s2Step157Add0_distinct : (847::778::780::(s2Step157Add0A++s2Step157Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157Add0_owned : (847::778::780::(s2Step157Add0A++s2Step157Add0B)).toFinset⊆s2Step157Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step157Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157Add0_checked : compileHmrHybridCinLog s2Step157Add0Arena 778 847 780 s2Step157Add0A s2Step157Add0B s2Step157Add0Work=some s2Step157Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step157Add0Arena s2Step157Add0During 778 847 780 s2Step157Add0A s2Step157Add0B s2Step157Add0Work
    (by decide +kernel) (by decide +kernel) s2Step157Add0_distinct
    (fun q hq => s2Step157Add0_owned (List.mem_toFinset.mpr hq)) s2Step157Add0_borrowed

private theorem s2Step157Add1_apart : Disjoint s2Step157Add1Arena.live s2Step157Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step157Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157Add1_card : s2Step157Add1Arena.live.card=884 := by
  decide +kernel

private theorem s2Step157Add1_borrowed : s2Step157Add1Arena.checkBorrow (hmrHybridCount s2Step157Add1Arena s2Step157Add1B.length) s2Step157Add1Work=some s2Step157Add1During := by
  have len : s2Step157Add1Work.length=hmrHybridCount s2Step157Add1Arena s2Step157Add1B.length := by
    rw [hmrHybridCount,s2Step157Add1_card]
    decide +kernel
  have nd : s2Step157Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step157Add1Arena s2Step157Add1During s2Step157Add1Work.toFinset s2Step157Add1_bounded s2Step157Add1_apart rfl

private theorem s2Step157Add1_distinct : (847::778::780::(s2Step157Add1A++s2Step157Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157Add1_owned : (847::778::780::(s2Step157Add1A++s2Step157Add1B)).toFinset⊆s2Step157Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step157Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157Add1_checked : compileHmrHybridCinLog s2Step157Add1Arena 778 847 780 s2Step157Add1A s2Step157Add1B s2Step157Add1Work=some s2Step157Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step157Add1Arena s2Step157Add1During 778 847 780 s2Step157Add1A s2Step157Add1B s2Step157Add1Work
    (by decide +kernel) (by decide +kernel) s2Step157Add1_distinct
    (fun q hq => s2Step157Add1_owned (List.mem_toFinset.mpr hq)) s2Step157Add1_borrowed

private theorem s2Step157F4_apart : Disjoint (s2Step157Add0A++s2Step157Add0B).toFinset (s2Step157Add1A++s2Step157Add1B).toFinset := by
  have nd : ((s2Step157Add0A++s2Step157Add0B)++(s2Step157Add1A++s2Step157Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step157F4_carry : s2Step157F4FlagArena.checkBorrow 1 [780]=some s2Step157Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step157F4FlagArena,s2Step157HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step157F4FlagArena,s2Step157HeadFvAfter,s2Step157Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step157F4_distinct : (849::778::847::780::((s2Step157Add0A++s2Step157Add1A)++(s2Step157Add0B++s2Step157Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157F4_flag : s2Step157HeadFvAfter.checkBorrow 1 [847]=some s2Step157F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step157HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step157F4_owned : (849::778::((s2Step157Add0A++s2Step157Add1A)++(s2Step157Add0B++s2Step157Add1B))).toFinset⊆s2Step157HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step157HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157F4_checked : compileHmrHybridF4Log s2Step157HeadFvAfter 849 778 s2Step157Add0A s2Step157Add0B s2Step157Add1A s2Step157Add1B [847] [780] s2Step157Add0Work s2Step157Add1Work=some s2Step157F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step157HeadFvAfter s2Step157F4FlagArena s2Step157Add0Arena s2Step157Add0During s2Step157Add1During 849 778
    s2Step157Add0A s2Step157Add0B s2Step157Add1A s2Step157Add1B [847] [780] s2Step157Add0Work s2Step157Add1Work
    (fun q hq => s2Step157F4_owned (List.mem_toFinset.mpr hq)) s2Step157F4_flag s2Step157F4_carry
    s2Step157F4_distinct s2Step157F4_apart s2Step157Add0_checked s2Step157Add1_checked

private theorem s2Step157Front_branch : s2Step157FrontSigmaArena.checkBorrow 1 [778]=some s2Step157HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step157FrontSigmaArena,s2Step157EntryGvAfter,s2Step157EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step157FrontSigmaArena,s2Step157EntryGvAfter,s2Step157EntryFBefore,s2Step157HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step157Front_entry : HmrFrontEntryValid s2Step157EntryFBefore s2Step157FrontBank 191 93 ⟨190,190,93,93⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step157FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step157EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step157EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step157FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step157Front_sigma : s2Step157EntryGvAfter.checkBorrow 1 [849]=some s2Step157FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step157EntryGvAfter,s2Step157EntryFBefore,arenaWires]
  · rfl

private def s2Step157HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157HeadFBefore : Arena := s2Step157HeadGAfter

private def s2Step157HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702],768⟩

private def s2Step157HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩

private def s2Step157HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190],769⟩

private def s2Step157HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private theorem s2Step157HeadBank_incomingDistinct : ([s2Step157HeadGRow,s2Step157HeadFRow,s2Step157HeadGvRow,s2Step157HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157HeadF_Incoming : rowsOwned s2Step157HeadFBefore [s2Step157HeadFRow,s2Step157HeadGvRow,s2Step157HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step157HeadGRow,s2Step157HeadFRow,s2Step157HeadGvRow,s2Step157HeadFvRow] 1 s2Step157HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step157HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step157HeadBank_outgoingOwned : rowsOwned s2Step157HeadFvAfter [s2Step157HeadGOut,s2Step157HeadFOut,s2Step157HeadGvOut,s2Step157HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step157HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step157HeadF_Outgoing : rowsOwned s2Step157HeadFvAfter [s2Step157HeadFOut,s2Step157HeadGvOut,s2Step157HeadFvOut] :=
  hmrRows_owned_drop s2Step157HeadFvAfter [s2Step157HeadGOut,s2Step157HeadFOut,s2Step157HeadGvOut,s2Step157HeadFvOut] 1 s2Step157HeadBank_outgoingOwned

private theorem s2Step157HeadF_distinct : (s2Step157HeadFRow.sign::s2Step157HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157HeadF_owned : (s2Step157HeadFRow.sign::s2Step157HeadFRow.payload).toFinset⊆s2Step157HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step157HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157HeadF_reserved : s2Step157HeadFBefore.reserve s2Step157HeadFFresh.toFinset=some s2Step157HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step157HeadFFresh,arenaWires]
  · norm_num [s2Step157HeadFBefore,s2Step157HeadGAfter,s2Step157HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step157HeadFAfter,s2Step157HeadFBefore,s2Step157HeadGAfter,s2Step157HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step157HeadF_checked : planRowResizeLog s2Step157HeadFBefore s2Step157HeadFRow 192 s2Step157HeadFFresh=
    some (s2Step157HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 793],768⟩,growRow 768 s2Step157HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step157HeadFBefore s2Step157HeadFAfter s2Step157HeadFRow 192 s2Step157HeadFFresh
    s2Step157HeadF_distinct s2Step157HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step157HeadF_reserved
  have rowEq : WindowRow.mk (s2Step157HeadFRow.payload++s2Step157HeadFFresh) s2Step157HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 793],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step157HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step157HeadFvBefore : Arena := s2Step157HeadGvAfter

private theorem s2Step157HeadFv_Incoming : rowsOwned s2Step157HeadFvBefore [s2Step157HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step157HeadGRow,s2Step157HeadFRow,s2Step157HeadGvRow,s2Step157HeadFvRow] 3 s2Step157HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step157HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step157HeadFv_Outgoing : rowsOwned s2Step157HeadFvAfter [s2Step157HeadFvOut] :=
  hmrRows_owned_drop s2Step157HeadFvAfter [s2Step157HeadGOut,s2Step157HeadFOut,s2Step157HeadGvOut,s2Step157HeadFvOut] 3 s2Step157HeadBank_outgoingOwned

private theorem s2Step157HeadFv_distinct : (s2Step157HeadFvRow.sign::s2Step157HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157HeadFv_owned : (s2Step157HeadFvRow.sign::s2Step157HeadFvRow.payload).toFinset⊆s2Step157HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step157HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157HeadFv_reserved : s2Step157HeadFvBefore.reserve s2Step157HeadFvFresh.toFinset=some s2Step157HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step157HeadFvFresh,arenaWires]
  · norm_num [s2Step157HeadFvBefore,s2Step157HeadGvAfter,s2Step157HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step157HeadFvAfter,s2Step157HeadFvBefore,s2Step157HeadGvAfter,s2Step157HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step157HeadFv_checked : planRowResizeLog s2Step157HeadFvBefore s2Step157HeadFvRow 94 s2Step157HeadFvFresh=
    some (s2Step157HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 797],770⟩,growRow 770 s2Step157HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step157HeadFvBefore s2Step157HeadFvAfter s2Step157HeadFvRow 94 s2Step157HeadFvFresh
    s2Step157HeadFv_distinct s2Step157HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step157HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step157HeadFvRow.payload++s2Step157HeadFvFresh) s2Step157HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 797],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step157HeadG_Incoming : rowsOwned s2Step157HeadGBefore [s2Step157HeadGRow,s2Step157HeadFRow,s2Step157HeadGvRow,s2Step157HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step157HeadGRow,s2Step157HeadFRow,s2Step157HeadGvRow,s2Step157HeadFvRow] 0 s2Step157HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step157HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step157HeadG_Outgoing : rowsOwned s2Step157HeadFvAfter [s2Step157HeadGOut,s2Step157HeadFOut,s2Step157HeadGvOut,s2Step157HeadFvOut] :=
  hmrRows_owned_drop s2Step157HeadFvAfter [s2Step157HeadGOut,s2Step157HeadFOut,s2Step157HeadGvOut,s2Step157HeadFvOut] 0 s2Step157HeadBank_outgoingOwned

private theorem s2Step157HeadG_distinct : (s2Step157HeadGRow.sign::s2Step157HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157HeadG_owned : (s2Step157HeadGRow.sign::s2Step157HeadGRow.payload).toFinset⊆s2Step157HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step157HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157HeadG_reserved : s2Step157HeadGBefore.reserve s2Step157HeadGFresh.toFinset=some s2Step157HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step157HeadGFresh,arenaWires]
  · norm_num [s2Step157HeadGBefore,s2Step157HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step157HeadGAfter,s2Step157HeadGBefore,s2Step157HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step157HeadG_checked : planRowResizeLog s2Step157HeadGBefore s2Step157HeadGRow 192 s2Step157HeadGFresh=
    some (s2Step157HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 804],769⟩,growRow 769 s2Step157HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step157HeadGBefore s2Step157HeadGAfter s2Step157HeadGRow 192 s2Step157HeadGFresh
    s2Step157HeadG_distinct s2Step157HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step157HeadG_reserved
  have rowEq : WindowRow.mk (s2Step157HeadGRow.payload++s2Step157HeadGFresh) s2Step157HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 804],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step157HeadGvBefore : Arena := s2Step157HeadFAfter

private theorem s2Step157HeadGv_Incoming : rowsOwned s2Step157HeadGvBefore [s2Step157HeadGvRow,s2Step157HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step157HeadGRow,s2Step157HeadFRow,s2Step157HeadGvRow,s2Step157HeadFvRow] 2 s2Step157HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step157HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step157HeadGv_Outgoing : rowsOwned s2Step157HeadFvAfter [s2Step157HeadGvOut,s2Step157HeadFvOut] :=
  hmrRows_owned_drop s2Step157HeadFvAfter [s2Step157HeadGOut,s2Step157HeadFOut,s2Step157HeadGvOut,s2Step157HeadFvOut] 2 s2Step157HeadBank_outgoingOwned

private theorem s2Step157HeadGv_distinct : (s2Step157HeadGvRow.sign::s2Step157HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step157HeadGv_owned : (s2Step157HeadGvRow.sign::s2Step157HeadGvRow.payload).toFinset⊆s2Step157HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step157HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step157HeadGv_reserved : s2Step157HeadGvBefore.reserve s2Step157HeadGvFresh.toFinset=some s2Step157HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step157HeadGvFresh,arenaWires]
  · norm_num [s2Step157HeadGvBefore,s2Step157HeadFAfter,s2Step157HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step157HeadGvAfter,s2Step157HeadGvBefore,s2Step157HeadFAfter,s2Step157HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step157HeadGv_checked : planRowResizeLog s2Step157HeadGvBefore s2Step157HeadGvRow 94 s2Step157HeadGvFresh=
    some (s2Step157HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 790],771⟩,growRow 771 s2Step157HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step157HeadGvBefore s2Step157HeadGvAfter s2Step157HeadGvRow 94 s2Step157HeadGvFresh
    s2Step157HeadGv_distinct s2Step157HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step157HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step157HeadGvRow.payload++s2Step157HeadGvFresh) s2Step157HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 790],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step157HeadBank_rows : planWindowRowsLog s2Step157HeadGBefore [(s2Step157HeadGRow,192),(s2Step157HeadFRow,192),(s2Step157HeadGvRow,94),(s2Step157HeadFvRow,94)] [s2Step157HeadGFresh,s2Step157HeadFFresh,s2Step157HeadGvFresh,s2Step157HeadFvFresh]=
    some (s2Step157HeadFvAfter,[s2Step157HeadGOut,s2Step157HeadFOut,s2Step157HeadGvOut,s2Step157HeadFvOut],(growRow 769 s2Step157HeadGFresh ++ (growRow 768 s2Step157HeadFFresh ++ (growRow 771 s2Step157HeadGvFresh ++ (growRow 770 s2Step157HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step157HeadFvAfter [] []=some (s2Step157HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step157HeadFvBefore s2Step157HeadFvAfter s2Step157HeadFvAfter
    s2Step157HeadFvRow s2Step157HeadFvOut 94 s2Step157HeadFvFresh [] [] []
    (growRow 770 s2Step157HeadFvFresh) ([]) s2Step157HeadFv_Incoming s2Step157HeadFv_checked h4 s2Step157HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step157HeadGvBefore s2Step157HeadGvAfter s2Step157HeadFvAfter
    s2Step157HeadGvRow s2Step157HeadGvOut 94 s2Step157HeadGvFresh [(s2Step157HeadFvRow,94)] [s2Step157HeadFvFresh] [s2Step157HeadFvOut]
    (growRow 771 s2Step157HeadGvFresh) ((growRow 770 s2Step157HeadFvFresh ++ [])) s2Step157HeadGv_Incoming s2Step157HeadGv_checked h3 s2Step157HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step157HeadFBefore s2Step157HeadFAfter s2Step157HeadFvAfter
    s2Step157HeadFRow s2Step157HeadFOut 192 s2Step157HeadFFresh [(s2Step157HeadGvRow,94),(s2Step157HeadFvRow,94)] [s2Step157HeadGvFresh,s2Step157HeadFvFresh] [s2Step157HeadGvOut,s2Step157HeadFvOut]
    (growRow 768 s2Step157HeadFFresh) ((growRow 771 s2Step157HeadGvFresh ++ (growRow 770 s2Step157HeadFvFresh ++ []))) s2Step157HeadF_Incoming s2Step157HeadF_checked h2 s2Step157HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step157HeadGBefore s2Step157HeadGAfter s2Step157HeadFvAfter
    s2Step157HeadGRow s2Step157HeadGOut 192 s2Step157HeadGFresh [(s2Step157HeadFRow,192),(s2Step157HeadGvRow,94),(s2Step157HeadFvRow,94)] [s2Step157HeadFFresh,s2Step157HeadGvFresh,s2Step157HeadFvFresh] [s2Step157HeadFOut,s2Step157HeadGvOut,s2Step157HeadFvOut]
    (growRow 769 s2Step157HeadGFresh) ((growRow 768 s2Step157HeadFFresh ++ (growRow 771 s2Step157HeadGvFresh ++ (growRow 770 s2Step157HeadFvFresh ++ [])))) s2Step157HeadG_Incoming s2Step157HeadG_checked h1 s2Step157HeadG_Outgoing
  exact h0

private theorem s2Step157HeadBank_checked : compileHmrBankResizeLog .headroom s2Step157HeadGBefore ⟨s2Step157HeadFRow,s2Step157HeadGRow,s2Step157HeadFvRow,s2Step157HeadGvRow⟩ ⟨192,192,94,94⟩ [s2Step157HeadGFresh,s2Step157HeadFFresh,s2Step157HeadGvFresh,s2Step157HeadFvFresh]=
    some (s2Step157HeadFvAfter,⟨s2Step157HeadFOut,s2Step157HeadGOut,s2Step157HeadFvOut,s2Step157HeadGvOut⟩,(growRow 769 s2Step157HeadGFresh ++ (growRow 768 s2Step157HeadFFresh ++ (growRow 771 s2Step157HeadGvFresh ++ (growRow 770 s2Step157HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step157HeadBank_rows]
  rfl

private theorem s2Step157Front_checked : compileHmrSourceFrontLog s2Step157EntryFBefore s2Step157FrontBank 191 93 ⟨190,190,93,93⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step157FrontLog=some s2Step157FrontPlan := by
  have pairEq : s2Step157FrontPair=⟨s2Step157HeadFRow,s2Step157HeadGRow,s2Step157HeadFvRow,s2Step157HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step157FrontHead=⟨s2Step157ExitFRow,s2Step157ExitGRow,s2Step157ExitFvRow,s2Step157ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step157Add0A=s2Step157FrontHead.f.wires := by decide +kernel
  have gEq : s2Step157Add0B=s2Step157FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step157Add1A=s2Step157FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step157Add1B=s2Step157FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step157EntryFBefore s2Step157FrontBank 191 93 ⟨190,190,93,93⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step157FrontLog s2Step157FrontPlan
  · exact s2Step157Front_entry
  · exact s2Step157EntryBank_checked
  · exact s2Step157Front_sigma
  · rfl
  · exact s2Step157Front_branch
  · rfl
  · simpa only [s2Step157FrontPlan,pairEq] using s2Step157HeadBank_checked
  · simpa only [s2Step157FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step157F4_checked
  · exact s2Step157Counter_checked
  · rfl
  · simpa only [s2Step157FrontPlan,headEq] using s2Step157ExitBank_checked

private theorem s2Step157Complete_explicit_checked : compileHmrEarlyStepLog s2Step157EntryFBefore s2Step157FrontBank 191 93 ⟨190,190,93,93⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step157CompleteLog=some s2Step157CompletePlan := by
  let Q := s2Step157EarlyControlPlan
  have hq := s2Step157EarlyControl_plan_checked
  have fv1 : s2Step157CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step157CompleteOut.fv.payload[2]?.getD s2Step157CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step157CompleteOut.fv.payload[3]?.getD s2Step157CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step157CompleteOut.fv.payload[4]?.getD s2Step157CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step157EntryFBefore s2Step157EarlyControlArena s2Step157FrontBank 191 93 ⟨190,190,93,93⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step157CompleteLog s2Step157FrontPlan Q
    s2Step157Front_checked s2Step157Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step157Complete_owned s2Step157Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step157EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 849 s2Step157CompleteOut.fv.second (s2Step157CompleteOut.fv.payload[2]?.getD s2Step157CompleteOut.fv.sign) (s2Step157CompleteOut.fv.payload[3]?.getD s2Step157CompleteOut.fv.sign) (s2Step157CompleteOut.fv.payload[4]?.getD s2Step157CompleteOut.fv.sign) 778 42 s2Step157EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep157Arena : Arena := s2Step157EntryFBefore
def s2PrivateStep157Bank : WindowBank := s2Step157FrontBank
def s2PrivateStep157Spec : HmrSourceWalkStepLog := ⟨191,93,⟨190,190,93,93⟩,42,.early s2Step157CompleteLog⟩
def s2PrivateStep157Plan : HmrSourceStepPlan := .early s2Step157CompletePlan
theorem s2PrivateStep157_source : s2PrivateStep157Spec=s2ObservedLogs144[13] := rfl
theorem s2PrivateStep157_checked : compileHmrSourceStepLog s2PrivateStep157Arena s2PrivateStep157Bank
    s2PrivateStep157Spec.fgWidth s2PrivateStep157Spec.vWidth s2PrivateStep157Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 157 s2PrivateStep157Spec.need none s2PrivateStep157Spec.log=some s2PrivateStep157Plan := by
  change compileHmrSourceStepLog s2Step157EntryFBefore s2Step157FrontBank 191 93 ⟨190,190,93,93⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 157 42 none (.early s2Step157CompleteLog)=some (.early s2Step157CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 157<498)]
  rw [s2Step157Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
