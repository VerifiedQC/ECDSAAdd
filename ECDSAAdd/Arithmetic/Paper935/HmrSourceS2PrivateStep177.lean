import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep175
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

private def s2Step177CompleteMoves : List (Wire × Wire) := [(792,180),(819,692)]

private def s2Step177EarlyControlLog : HmrEarlyControlLog := ⟨[819, 792, 785, 806, 830],[794],[803],[799, 867, 877, 879, 882, 885],[]⟩

private def s2Step177FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[806], [785], [847], [793]],[[], [], [], []]⟩,[807],[846],[830],[794],[803, 799, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[803, 799, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 794, 803, 799]⟩

private def s2Step177CompleteLog : HmrEarlyStepLog := ⟨s2Step177FrontLog,s2Step177CompleteMoves,s2Step177EarlyControlLog⟩

private def s2Step177ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691],768⟩

private def s2Step177ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩

private def s2Step177ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179],769⟩

private def s2Step177ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847],771⟩

private def s2Step177FrontOut : WindowBank := ⟨s2Step177ExitFOut,s2Step177ExitGOut,s2Step177ExitFvOut,s2Step177ExitGvOut⟩

private def s2Step177CompleteOut : WindowBank := s2Step177FrontOut.repacked s2Step177CompleteMoves

private def s2Step177EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step177EarlyControlPositiveArena,[794],s2Step177EarlyControlEqualityArena,[803],⟨⟨807,false⟩,[⟨⟨794,false⟩,803⟩]⟩⟩

private def s2Step177EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,819⟩,⟨⟨774,false⟩,792⟩,⟨⟨775,false⟩,785⟩,⟨⟨776,false⟩,806⟩,⟨⟨777,false⟩,830⟩]⟩

private def s2Step177EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step177EarlyControlZeroArena,s2Step177EarlyControlZeroPlan,s2Step177EarlyControlClassPlan,s2Step177EarlyControlFlagArena,s2Step177EarlyControlFittedArena,s2Step177EarlyControlHistoryArena,s2Step177EarlyControlSigmaArena,s2Step177EarlyControlOutputArena,s2Step177EarlyControlLog⟩

private def s2Step177CounterWork : List Wire := [830, 794, 803, 799]

private theorem s2Step177Counter_bounded : s2Step177CounterWork.toFinset⊆arenaWires := by norm_num [s2Step177CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step177HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177CounterDuring : Arena := ⟨s2Step177HeadFvAfter.live∪s2Step177CounterWork.toFinset,Finset.union_subset s2Step177HeadFvAfter.bounded s2Step177Counter_bounded⟩

private def s2Step177EntryFFresh : List Wire := []

private def s2Step177EntryFvFresh : List Wire := []

private def s2Step177EntryGFresh : List Wire := []

private def s2Step177EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177EntryGvAfter : Arena := s2Step177EntryFBefore

private def s2Step177EntryGvFresh : List Wire := []

private def s2Step177ExitFExtra : List Wire := [692, 785]

private def s2Step177ExitGExtra : List Wire := [180, 806]

private def s2Step177ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<180) ∨ (181≤q ∧ q<692) ∨ (693≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177ExitGvAfter : Arena := s2Step177ExitFAfter

private def s2Step177Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177Add0Work : List Wire := [803, 799, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step177Add0_bounded : s2Step177Add0Work.toFinset⊆arenaWires := by
  have h : s2Step177Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step177Add0During : Arena := ⟨s2Step177Add0Arena.live∪s2Step177Add0Work.toFinset,Finset.union_subset s2Step177Add0Arena.bounded s2Step177Add0_bounded⟩

private def s2Step177Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177Add1Work : List Wire := [803, 799, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step177Add1_bounded : s2Step177Add1Work.toFinset⊆arenaWires := by
  have h : s2Step177Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step177Add1During : Arena := ⟨s2Step177Add1Arena.live∪s2Step177Add1Work.toFinset,Finset.union_subset s2Step177Add1Arena.bounded s2Step177Add1_bounded⟩

private def s2Step177F4FlagArena : Arena := ⟨s2Step177HeadFvAfter.live∪{830},Finset.union_subset s2Step177HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step177F4Plan : HmrHybridF4Plan := ⟨s2Step177F4FlagArena,[830],s2Step177Add0Arena,[794],s2Step177Add0During,s2Step177Add0Work,s2Step177Add1During,s2Step177Add1Work⟩

private def s2Step177HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 785],768⟩

private def s2Step177HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩

private def s2Step177HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 806],769⟩

private def s2Step177HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847],771⟩

private def s2Step177FrontHead : WindowBank := ⟨s2Step177HeadFOut,s2Step177HeadGOut,s2Step177HeadFvOut,s2Step177HeadGvOut⟩

private def s2Step177EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692],768⟩

private def s2Step177EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩

private def s2Step177EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180],769⟩

private def s2Step177EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821],771⟩

private def s2Step177FrontPair : WindowBank := ⟨s2Step177EntryFOut,s2Step177EntryGOut,s2Step177EntryFvOut,s2Step177EntryGvOut⟩

private def s2Step177FrontSigmaArena : Arena := ⟨s2Step177EntryGvAfter.live∪{807},Finset.union_subset s2Step177EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step177HeadFFresh : List Wire := [785]

private def s2Step177HeadFvFresh : List Wire := [793]

private def s2Step177HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177HeadGFresh : List Wire := [806]

private def s2Step177HeadGvFresh : List Wire := [847]

private def s2Step177FrontPlan : HmrSourceFront := ⟨s2Step177EntryGvAfter,s2Step177FrontPair,(growRow 768 s2Step177EntryFFresh ++ (growRow 769 s2Step177EntryGFresh ++ (growRow 770 s2Step177EntryFvFresh ++ (growRow 771 s2Step177EntryGvFresh ++ [])))),s2Step177FrontSigmaArena,[807],s2Step177HeadGBefore,[846],
  s2Step177HeadFvAfter,s2Step177FrontHead,(growRow 769 s2Step177HeadGFresh ++ (growRow 768 s2Step177HeadFFresh ++ (growRow 771 s2Step177HeadGvFresh ++ (growRow 770 s2Step177HeadFvFresh ++ [])))),s2Step177F4Plan,s2Step177CounterDuring,s2Step177CounterWork,s2Step177ExitGvAfter,s2Step177FrontOut,(shrinkRow 769 s2Step177ExitGExtra ++ (shrinkRow 768 s2Step177ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step177CompletePlan : HmrEarlyStepPlan := ⟨s2Step177FrontPlan,s2Step177EarlyControlArena,s2Step177EarlyControlPlan,s2Step177CompleteMoves⟩

private theorem s2Step177Complete_apart : List.Disjoint (s2Step177CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [807, 846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step177CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[807, 846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step177Complete_owned : (s2Step177CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step177EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step177EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step177CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,692),(693,785),(786,792),(793,794),(795,799),(800,803),(804,806),(807,830),(831,867),(868,877),(878,879),(880,882),(883,885),(886,888),(889,890)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step177CompleteRelocationMove0Borrowed : Arena := ⟨s2Step177ExitGvAfter.live∪{180},Finset.union_subset s2Step177ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step177CompleteRelocationMove1Borrowed : Arena := ⟨s2Step177CompleteRelocationMove0After.live∪{692},Finset.union_subset s2Step177CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step177CompleteRelocation_move0_owned : 792∈s2Step177ExitGvAfter.live := by norm_num [s2Step177ExitGvAfter,s2Step177ExitFAfter,arenaWires]

private theorem s2Step177CompleteRelocation_move0_reserve : s2Step177ExitGvAfter.reserve {180}=some s2Step177CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step177ExitGvAfter,s2Step177ExitFAfter,arenaWires]
  · rfl

private theorem s2Step177CompleteRelocation_move0_retire : s2Step177CompleteRelocationMove0Borrowed.retireSet {792}=s2Step177CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step177CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step177CompleteRelocationMove0Borrowed,s2Step177ExitGvAfter,s2Step177ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step177CompleteRelocation_move1_owned : 819∈s2Step177CompleteRelocationMove0After.live := by norm_num [s2Step177CompleteRelocationMove0After,arenaWires]

private theorem s2Step177CompleteRelocation_move1_reserve : s2Step177CompleteRelocationMove0After.reserve {692}=some s2Step177CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step177CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step177CompleteRelocation_move1_retire : s2Step177CompleteRelocationMove1Borrowed.retireSet {819}=s2Step177EarlyControlArena := by
  unfold Arena.retireSet s2Step177EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step177CompleteRelocationMove1Borrowed,s2Step177CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step177CompleteRelocation_checked : s2Step177ExitGvAfter.checkRepack [(792,180),(819,692)]=some s2Step177EarlyControlArena := by
  have tail2 : s2Step177EarlyControlArena.checkRepack []=some s2Step177EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step177CompleteRelocationMove0After s2Step177CompleteRelocationMove1Borrowed s2Step177EarlyControlArena s2Step177EarlyControlArena 819 692 []
    s2Step177CompleteRelocation_move1_owned s2Step177CompleteRelocation_move1_reserve s2Step177CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step177ExitGvAfter s2Step177CompleteRelocationMove0Borrowed s2Step177CompleteRelocationMove0After s2Step177EarlyControlArena 792 180 [(819,692)]
    s2Step177CompleteRelocation_move0_owned s2Step177CompleteRelocation_move0_reserve s2Step177CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step177Complete_repack : s2Step177ExitGvAfter.checkRepack s2Step177CompleteMoves=some s2Step177EarlyControlArena := by
  simpa only [s2Step177CompleteMoves] using s2Step177CompleteRelocation_checked

private theorem s2Step177EarlyControl_branchOwned : ([846] : List Wire).toFinset⊆s2Step177EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step177EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177EarlyControl_branch : compileHmrBranchRetirement s2Step177EarlyControlSigmaArena 846=some s2Step177EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step177EarlyControl_branchOwned
  · ext q
    simp [s2Step177EarlyControlOutputArena,s2Step177EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step177EarlyControl_classEqualityBorrow : s2Step177EarlyControlPositiveArena.checkBorrow (([807, 794] : List Wire).length-1) s2Step177EarlyControlLog.classWork=some s2Step177EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step177EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step177EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step177EarlyControlEqualityArena,s2Step177EarlyControlPositiveArena,s2Step177EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step177EarlyControl_classEqualityOwned : ([807, 794] : List Wire).toFinset⊆s2Step177EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step177EarlyControlPositiveArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177EarlyControl_classEquality : compileHmrEqualityLog s2Step177EarlyControlPositiveArena [807, 794] 0 s2Step177EarlyControlLog.classWork=some (s2Step177EarlyControlEqualityArena,s2Step177EarlyControlLog.classWork,s2Step177EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step177EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step177EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step177EarlyControl_classOwned : ([777, 830, 807] : List Wire).toFinset⊆s2Step177EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step177EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177EarlyControl_positiveBorrow : s2Step177EarlyControlZeroArena.checkBorrow (1) s2Step177EarlyControlLog.positiveWork=some s2Step177EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step177EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step177EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step177EarlyControlPositiveArena,s2Step177EarlyControlZeroArena,s2Step177EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step177EarlyControl_class : compileHmrSourceClassLog s2Step177EarlyControlZeroArena false 777 s2Step177EarlyControlZeroPlan.top 0 807 s2Step177EarlyControlLog.positiveWork s2Step177EarlyControlLog.classWork=some s2Step177EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step177EarlyControlClassPlan s2Step177EarlyControlZeroArena false 777 s2Step177EarlyControlZeroPlan.top 0 807
  constructor
  · decide +kernel
  · exact s2Step177EarlyControl_classOwned
  · exact s2Step177EarlyControl_positiveBorrow
  · exact s2Step177EarlyControl_classEquality

private theorem s2Step177EarlyControl_entryRecordOwned : ([846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step177EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step177EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177EarlyControl_entrySigmaOwned : ([807, 254] : List Wire).toFinset⊆s2Step177EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step177EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177EarlyControl_fitBorrow : s2Step177EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step177EarlyControlLog.recordFresh=some s2Step177EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step177EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step177EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step177EarlyControlFittedArena,s2Step177EarlyControlFlagArena,s2Step177EarlyControlLog,arenaWires]

private theorem s2Step177EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step177EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step177EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177EarlyControl_fit : compileHmrRecordGrowLog s2Step177EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step177EarlyControlLog.recordFresh=some s2Step177EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step177EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step177EarlyControl_fitBorrow

private theorem s2Step177EarlyControl_flagsBorrow : s2Step177EarlyControlEqualityArena.checkBorrow (6) s2Step177EarlyControlLog.flagWork=some s2Step177EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step177EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step177EarlyControlEqualityArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step177EarlyControlFlagArena,s2Step177EarlyControlEqualityArena,s2Step177EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step177EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s2Step177EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step177EarlyControlEqualityArena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177EarlyControl_flags : compileHmrFlagsLog s2Step177EarlyControlClassPlan.equalityArena s2Step177EarlyControlClassPlan.equality.top 253 252 251 s2Step177EarlyControlLog.flagWork=some s2Step177EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step177EarlyControl_flagsOwned⟩
  · exact s2Step177EarlyControl_flagsBorrow

private theorem s2Step177EarlyControl_historyBorrow : s2Step177EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step177EarlyControlLog.recordFresh=some s2Step177EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step177EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step177EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step177EarlyControlHistoryArena,s2Step177EarlyControlArena,s2Step177EarlyControlLog,arenaWires]

private theorem s2Step177EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step177EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step177EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177EarlyControl_history : compileHmrRecordGrowLog s2Step177EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step177EarlyControlLog.recordFresh=some s2Step177EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step177EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step177EarlyControl_historyBorrow

private theorem s2Step177EarlyControl_sigmaOwned : ([254, 807] : List Wire).toFinset⊆s2Step177EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step177EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177EarlyControl_sigmaReleaseOwned : ([807] : List Wire).toFinset⊆s2Step177EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step177EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177EarlyControl_sigmaRelease : s2Step177EarlyControlHistoryArena.release {807} (fun _ => false)=some s2Step177EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step177EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step177EarlyControlSigmaArena,s2Step177EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step177EarlyControl_sigma : compileHmrSigmaDropLog s2Step177EarlyControlHistoryArena false 0 0 254 807 []=some s2Step177EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step177EarlyControl_sigmaOwned⟩
  · exact s2Step177EarlyControl_sigmaRelease

private theorem s2Step177EarlyControl_zeroBorrow : s2Step177EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step177EarlyControlLog.zeroWork=some s2Step177EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step177EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step177EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step177EarlyControlZeroArena,s2Step177EarlyControlArena,s2Step177EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step177EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step177EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step177EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177EarlyControl_zero : compileHmrEqualityLog s2Step177EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step177EarlyControlLog.zeroWork=some (s2Step177EarlyControlZeroArena,s2Step177EarlyControlLog.zeroWork,s2Step177EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step177EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step177EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step177EarlyControl_logged : s2Step177EarlyControlPlan.Logged s2Step177EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 807 254 253 252 251 846 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step177EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step177EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step177EarlyControl_zero
  · exact s2Step177EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step177EarlyControl_flags
  · exact s2Step177EarlyControl_fit
  · exact s2Step177EarlyControl_history
  · exact s2Step177EarlyControl_sigma
  · exact s2Step177EarlyControl_branch

private theorem s2Step177EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step177EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 807 254 253 252 251 846 42 s2Step177EarlyControlLog=some s2Step177EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step177EarlyControlPlan s2Step177EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 807 254 253 252 251 846 42 s2Step177EarlyControl_logged

private def s2Step177EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692],768⟩

private def s2Step177EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩

private def s2Step177EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180],769⟩

private def s2Step177EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821],771⟩

private def s2Step177FrontBank : WindowBank := ⟨s2Step177EntryFRow,s2Step177EntryGRow,s2Step177EntryFvRow,s2Step177EntryGvRow⟩

private def s2Step177Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 785, 768]

private def s2Step177Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 806, 769]

private def s2Step177Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 770]

private def s2Step177Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 771]

private theorem s2Step177Counter_apart : Disjoint s2Step177HeadFvAfter.live s2Step177CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step177HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177Counter_borrowed : s2Step177HeadFvAfter.checkBorrow 4 s2Step177CounterWork=some s2Step177CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step177HeadFvAfter s2Step177CounterDuring s2Step177CounterWork.toFinset s2Step177Counter_bounded s2Step177Counter_apart rfl

private theorem s2Step177Counter_owned : (807::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step177HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step177HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177Counter_checked : compileHmrCounterStepLog s2Step177HeadFvAfter true 807 [772, 773, 774, 775, 776, 777] s2Step177CounterWork=some s2Step177CounterDuring := by
  have owned : ∀q∈807::[772, 773, 774, 775, 776, 777],q∈s2Step177HeadFvAfter.live := fun q hq => s2Step177Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step177Counter_borrowed

private def s2Step177EntryFAfter : Arena := s2Step177EntryFBefore

private theorem s2Step177EntryBank_incomingDistinct : ([s2Step177EntryFRow,s2Step177EntryGRow,s2Step177EntryFvRow,s2Step177EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177EntryF_Incoming : rowsOwned s2Step177EntryFBefore [s2Step177EntryFRow,s2Step177EntryGRow,s2Step177EntryFvRow,s2Step177EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step177EntryFRow,s2Step177EntryGRow,s2Step177EntryFvRow,s2Step177EntryGvRow] 0 s2Step177EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step177EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step177EntryBank_outgoingOwned : rowsOwned s2Step177EntryGvAfter [s2Step177EntryFOut,s2Step177EntryGOut,s2Step177EntryFvOut,s2Step177EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step177EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step177EntryF_Outgoing : rowsOwned s2Step177EntryGvAfter [s2Step177EntryFOut,s2Step177EntryGOut,s2Step177EntryFvOut,s2Step177EntryGvOut] :=
  hmrRows_owned_drop s2Step177EntryGvAfter [s2Step177EntryFOut,s2Step177EntryGOut,s2Step177EntryFvOut,s2Step177EntryGvOut] 0 s2Step177EntryBank_outgoingOwned

private theorem s2Step177EntryF_distinct : (s2Step177EntryFRow.sign::s2Step177EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177EntryF_owned : (s2Step177EntryFRow.sign::s2Step177EntryFRow.payload).toFinset⊆s2Step177EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step177EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177EntryF_reserved : s2Step177EntryFBefore.reserve s2Step177EntryFFresh.toFinset=some s2Step177EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step177EntryFFresh,arenaWires]
  · norm_num [s2Step177EntryFBefore,s2Step177EntryFFresh,arenaWires]
  · simp only [s2Step177EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step177EntryF_checked : planRowResizeLog s2Step177EntryFBefore s2Step177EntryFRow 181 s2Step177EntryFFresh=
    some (s2Step177EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692],768⟩,growRow 768 s2Step177EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step177EntryFBefore s2Step177EntryFAfter s2Step177EntryFRow 181 s2Step177EntryFFresh
    s2Step177EntryF_distinct s2Step177EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step177EntryF_reserved
  have rowEq : WindowRow.mk (s2Step177EntryFRow.payload++s2Step177EntryFFresh) s2Step177EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step177EntryFvAfter : Arena := s2Step177EntryFBefore

private def s2Step177EntryFvBefore : Arena := s2Step177EntryFBefore

private theorem s2Step177EntryFv_Incoming : rowsOwned s2Step177EntryFvBefore [s2Step177EntryFvRow,s2Step177EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step177EntryFRow,s2Step177EntryGRow,s2Step177EntryFvRow,s2Step177EntryGvRow] 2 s2Step177EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step177EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step177EntryFv_Outgoing : rowsOwned s2Step177EntryGvAfter [s2Step177EntryFvOut,s2Step177EntryGvOut] :=
  hmrRows_owned_drop s2Step177EntryGvAfter [s2Step177EntryFOut,s2Step177EntryGOut,s2Step177EntryFvOut,s2Step177EntryGvOut] 2 s2Step177EntryBank_outgoingOwned

private theorem s2Step177EntryFv_distinct : (s2Step177EntryFvRow.sign::s2Step177EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177EntryFv_owned : (s2Step177EntryFvRow.sign::s2Step177EntryFvRow.payload).toFinset⊆s2Step177EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step177EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177EntryFv_reserved : s2Step177EntryFvBefore.reserve s2Step177EntryFvFresh.toFinset=some s2Step177EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step177EntryFvFresh,arenaWires]
  · norm_num [s2Step177EntryFvBefore,s2Step177EntryFBefore,s2Step177EntryFvFresh,arenaWires]
  · simp only [s2Step177EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step177EntryFv_checked : planRowResizeLog s2Step177EntryFvBefore s2Step177EntryFvRow 102 s2Step177EntryFvFresh=
    some (s2Step177EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩,growRow 770 s2Step177EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step177EntryFvBefore s2Step177EntryFvAfter s2Step177EntryFvRow 102 s2Step177EntryFvFresh
    s2Step177EntryFv_distinct s2Step177EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step177EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step177EntryFvRow.payload++s2Step177EntryFvFresh) s2Step177EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step177EntryGAfter : Arena := s2Step177EntryFBefore

private def s2Step177EntryGBefore : Arena := s2Step177EntryFBefore

private theorem s2Step177EntryG_Incoming : rowsOwned s2Step177EntryGBefore [s2Step177EntryGRow,s2Step177EntryFvRow,s2Step177EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step177EntryFRow,s2Step177EntryGRow,s2Step177EntryFvRow,s2Step177EntryGvRow] 1 s2Step177EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step177EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step177EntryG_Outgoing : rowsOwned s2Step177EntryGvAfter [s2Step177EntryGOut,s2Step177EntryFvOut,s2Step177EntryGvOut] :=
  hmrRows_owned_drop s2Step177EntryGvAfter [s2Step177EntryFOut,s2Step177EntryGOut,s2Step177EntryFvOut,s2Step177EntryGvOut] 1 s2Step177EntryBank_outgoingOwned

private theorem s2Step177EntryG_distinct : (s2Step177EntryGRow.sign::s2Step177EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177EntryG_owned : (s2Step177EntryGRow.sign::s2Step177EntryGRow.payload).toFinset⊆s2Step177EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step177EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177EntryG_reserved : s2Step177EntryGBefore.reserve s2Step177EntryGFresh.toFinset=some s2Step177EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step177EntryGFresh,arenaWires]
  · norm_num [s2Step177EntryGBefore,s2Step177EntryFBefore,s2Step177EntryGFresh,arenaWires]
  · simp only [s2Step177EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step177EntryG_checked : planRowResizeLog s2Step177EntryGBefore s2Step177EntryGRow 181 s2Step177EntryGFresh=
    some (s2Step177EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180],769⟩,growRow 769 s2Step177EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step177EntryGBefore s2Step177EntryGAfter s2Step177EntryGRow 181 s2Step177EntryGFresh
    s2Step177EntryG_distinct s2Step177EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step177EntryG_reserved
  have rowEq : WindowRow.mk (s2Step177EntryGRow.payload++s2Step177EntryGFresh) s2Step177EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step177EntryGvBefore : Arena := s2Step177EntryFBefore

private theorem s2Step177EntryGv_Incoming : rowsOwned s2Step177EntryGvBefore [s2Step177EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step177EntryFRow,s2Step177EntryGRow,s2Step177EntryFvRow,s2Step177EntryGvRow] 3 s2Step177EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step177EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step177EntryGv_Outgoing : rowsOwned s2Step177EntryGvAfter [s2Step177EntryGvOut] :=
  hmrRows_owned_drop s2Step177EntryGvAfter [s2Step177EntryFOut,s2Step177EntryGOut,s2Step177EntryFvOut,s2Step177EntryGvOut] 3 s2Step177EntryBank_outgoingOwned

private theorem s2Step177EntryGv_distinct : (s2Step177EntryGvRow.sign::s2Step177EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177EntryGv_owned : (s2Step177EntryGvRow.sign::s2Step177EntryGvRow.payload).toFinset⊆s2Step177EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step177EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177EntryGv_reserved : s2Step177EntryGvBefore.reserve s2Step177EntryGvFresh.toFinset=some s2Step177EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step177EntryGvFresh,arenaWires]
  · norm_num [s2Step177EntryGvBefore,s2Step177EntryFBefore,s2Step177EntryGvFresh,arenaWires]
  · simp only [s2Step177EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step177EntryGv_checked : planRowResizeLog s2Step177EntryGvBefore s2Step177EntryGvRow 102 s2Step177EntryGvFresh=
    some (s2Step177EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821],771⟩,growRow 771 s2Step177EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step177EntryGvBefore s2Step177EntryGvAfter s2Step177EntryGvRow 102 s2Step177EntryGvFresh
    s2Step177EntryGv_distinct s2Step177EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step177EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step177EntryGvRow.payload++s2Step177EntryGvFresh) s2Step177EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step177EntryBank_rows : planWindowRowsLog s2Step177EntryFBefore [(s2Step177EntryFRow,181),(s2Step177EntryGRow,181),(s2Step177EntryFvRow,102),(s2Step177EntryGvRow,102)] [s2Step177EntryFFresh,s2Step177EntryGFresh,s2Step177EntryFvFresh,s2Step177EntryGvFresh]=
    some (s2Step177EntryGvAfter,[s2Step177EntryFOut,s2Step177EntryGOut,s2Step177EntryFvOut,s2Step177EntryGvOut],(growRow 768 s2Step177EntryFFresh ++ (growRow 769 s2Step177EntryGFresh ++ (growRow 770 s2Step177EntryFvFresh ++ (growRow 771 s2Step177EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step177EntryGvAfter [] []=some (s2Step177EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step177EntryGvBefore s2Step177EntryGvAfter s2Step177EntryGvAfter
    s2Step177EntryGvRow s2Step177EntryGvOut 102 s2Step177EntryGvFresh [] [] []
    (growRow 771 s2Step177EntryGvFresh) ([]) s2Step177EntryGv_Incoming s2Step177EntryGv_checked h4 s2Step177EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step177EntryFvBefore s2Step177EntryFvAfter s2Step177EntryGvAfter
    s2Step177EntryFvRow s2Step177EntryFvOut 102 s2Step177EntryFvFresh [(s2Step177EntryGvRow,102)] [s2Step177EntryGvFresh] [s2Step177EntryGvOut]
    (growRow 770 s2Step177EntryFvFresh) ((growRow 771 s2Step177EntryGvFresh ++ [])) s2Step177EntryFv_Incoming s2Step177EntryFv_checked h3 s2Step177EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step177EntryGBefore s2Step177EntryGAfter s2Step177EntryGvAfter
    s2Step177EntryGRow s2Step177EntryGOut 181 s2Step177EntryGFresh [(s2Step177EntryFvRow,102),(s2Step177EntryGvRow,102)] [s2Step177EntryFvFresh,s2Step177EntryGvFresh] [s2Step177EntryFvOut,s2Step177EntryGvOut]
    (growRow 769 s2Step177EntryGFresh) ((growRow 770 s2Step177EntryFvFresh ++ (growRow 771 s2Step177EntryGvFresh ++ []))) s2Step177EntryG_Incoming s2Step177EntryG_checked h2 s2Step177EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step177EntryFBefore s2Step177EntryFAfter s2Step177EntryGvAfter
    s2Step177EntryFRow s2Step177EntryFOut 181 s2Step177EntryFFresh [(s2Step177EntryGRow,181),(s2Step177EntryFvRow,102),(s2Step177EntryGvRow,102)] [s2Step177EntryGFresh,s2Step177EntryFvFresh,s2Step177EntryGvFresh] [s2Step177EntryGOut,s2Step177EntryFvOut,s2Step177EntryGvOut]
    (growRow 768 s2Step177EntryFFresh) ((growRow 769 s2Step177EntryGFresh ++ (growRow 770 s2Step177EntryFvFresh ++ (growRow 771 s2Step177EntryGvFresh ++ [])))) s2Step177EntryF_Incoming s2Step177EntryF_checked h1 s2Step177EntryF_Outgoing
  exact h0

private theorem s2Step177EntryBank_checked : compileHmrBankResizeLog .entry s2Step177EntryFBefore ⟨s2Step177EntryFRow,s2Step177EntryGRow,s2Step177EntryFvRow,s2Step177EntryGvRow⟩ ⟨181,181,102,102⟩ [s2Step177EntryFFresh,s2Step177EntryGFresh,s2Step177EntryFvFresh,s2Step177EntryGvFresh]=
    some (s2Step177EntryGvAfter,⟨s2Step177EntryFOut,s2Step177EntryGOut,s2Step177EntryFvOut,s2Step177EntryGvOut⟩,(growRow 768 s2Step177EntryFFresh ++ (growRow 769 s2Step177EntryGFresh ++ (growRow 770 s2Step177EntryFvFresh ++ (growRow 771 s2Step177EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step177EntryBank_rows]
  rfl

private def s2Step177ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<180) ∨ (181≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177ExitFBefore : Arena := s2Step177ExitGAfter

private def s2Step177ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 785],768⟩

private def s2Step177ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩

private def s2Step177ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 806],769⟩

private def s2Step177ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847],771⟩

private theorem s2Step177ExitBank_incomingDistinct : ([s2Step177ExitGRow,s2Step177ExitFRow,s2Step177ExitFvRow,s2Step177ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177ExitF_Incoming : rowsOwned s2Step177ExitFBefore [s2Step177ExitFRow,s2Step177ExitFvRow,s2Step177ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step177ExitGRow,s2Step177ExitFRow,s2Step177ExitFvRow,s2Step177ExitGvRow] 1 s2Step177ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step177ExitFBefore (fun q => (0≤q ∧ q<180) ∨ (181≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step177ExitBank_outgoingOwned : rowsOwned s2Step177ExitGvAfter [s2Step177ExitGOut,s2Step177ExitFOut,s2Step177ExitFvOut,s2Step177ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step177ExitGvAfter (fun q => (0≤q ∧ q<180) ∨ (181≤q ∧ q<692) ∨ (693≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step177ExitF_Outgoing : rowsOwned s2Step177ExitGvAfter [s2Step177ExitFOut,s2Step177ExitFvOut,s2Step177ExitGvOut] :=
  hmrRows_owned_drop s2Step177ExitGvAfter [s2Step177ExitGOut,s2Step177ExitFOut,s2Step177ExitFvOut,s2Step177ExitGvOut] 1 s2Step177ExitBank_outgoingOwned

private theorem s2Step177ExitF_distinct : (s2Step177ExitFRow.sign::s2Step177ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177ExitF_owned : (s2Step177ExitFRow.sign::s2Step177ExitFRow.payload).toFinset⊆s2Step177ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step177ExitFBefore (fun q => (0≤q ∧ q<180) ∨ (181≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177ExitF_retired : s2Step177ExitFBefore.retireSet s2Step177ExitFExtra.toFinset=s2Step177ExitFAfter := by
  unfold Arena.retireSet s2Step177ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step177ExitFBefore,s2Step177ExitGAfter,s2Step177ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step177ExitF_checked : planRowResizeLog s2Step177ExitFBefore s2Step177ExitFRow 180 []=
    some (s2Step177ExitFAfter,s2Step177ExitFOut,shrinkRow 768 s2Step177ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step177ExitFBefore s2Step177ExitFRow 180 s2Step177ExitF_distinct s2Step177ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step177ExitFRow.payload.take 180) s2Step177ExitFRow.sign=s2Step177ExitFOut := by decide +kernel
  have hi : s2Step177ExitFRow.payload.drop 180=s2Step177ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step177ExitF_retired] at result
  exact result

private def s2Step177ExitFvAfter : Arena := s2Step177ExitFAfter

private def s2Step177ExitFvBefore : Arena := s2Step177ExitFAfter

private theorem s2Step177ExitFv_Incoming : rowsOwned s2Step177ExitFvBefore [s2Step177ExitFvRow,s2Step177ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step177ExitGRow,s2Step177ExitFRow,s2Step177ExitFvRow,s2Step177ExitGvRow] 2 s2Step177ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step177ExitFvBefore (fun q => (0≤q ∧ q<180) ∨ (181≤q ∧ q<692) ∨ (693≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step177ExitFv_Outgoing : rowsOwned s2Step177ExitGvAfter [s2Step177ExitFvOut,s2Step177ExitGvOut] :=
  hmrRows_owned_drop s2Step177ExitGvAfter [s2Step177ExitGOut,s2Step177ExitFOut,s2Step177ExitFvOut,s2Step177ExitGvOut] 2 s2Step177ExitBank_outgoingOwned

private theorem s2Step177ExitFv_distinct : (s2Step177ExitFvRow.sign::s2Step177ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177ExitFv_owned : (s2Step177ExitFvRow.sign::s2Step177ExitFvRow.payload).toFinset⊆s2Step177ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step177ExitFvBefore (fun q => (0≤q ∧ q<180) ∨ (181≤q ∧ q<692) ∨ (693≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177ExitFv_reserved : s2Step177ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step177ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step177ExitFv_checked : planRowResizeLog s2Step177ExitFvBefore s2Step177ExitFvRow 103 []=
    some (s2Step177ExitFvAfter,s2Step177ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step177ExitFvBefore s2Step177ExitFvAfter s2Step177ExitFvRow 103 []
    s2Step177ExitFv_distinct s2Step177ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step177ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step177ExitFvRow.payload++[]) s2Step177ExitFvRow.sign=s2Step177ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step177ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step177ExitG_Incoming : rowsOwned s2Step177ExitGBefore [s2Step177ExitGRow,s2Step177ExitFRow,s2Step177ExitFvRow,s2Step177ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step177ExitGRow,s2Step177ExitFRow,s2Step177ExitFvRow,s2Step177ExitGvRow] 0 s2Step177ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step177ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step177ExitG_Outgoing : rowsOwned s2Step177ExitGvAfter [s2Step177ExitGOut,s2Step177ExitFOut,s2Step177ExitFvOut,s2Step177ExitGvOut] :=
  hmrRows_owned_drop s2Step177ExitGvAfter [s2Step177ExitGOut,s2Step177ExitFOut,s2Step177ExitFvOut,s2Step177ExitGvOut] 0 s2Step177ExitBank_outgoingOwned

private theorem s2Step177ExitG_distinct : (s2Step177ExitGRow.sign::s2Step177ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177ExitG_owned : (s2Step177ExitGRow.sign::s2Step177ExitGRow.payload).toFinset⊆s2Step177ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step177ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177ExitG_retired : s2Step177ExitGBefore.retireSet s2Step177ExitGExtra.toFinset=s2Step177ExitGAfter := by
  unfold Arena.retireSet s2Step177ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step177ExitGBefore,s2Step177ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step177ExitG_checked : planRowResizeLog s2Step177ExitGBefore s2Step177ExitGRow 180 []=
    some (s2Step177ExitGAfter,s2Step177ExitGOut,shrinkRow 769 s2Step177ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step177ExitGBefore s2Step177ExitGRow 180 s2Step177ExitG_distinct s2Step177ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step177ExitGRow.payload.take 180) s2Step177ExitGRow.sign=s2Step177ExitGOut := by decide +kernel
  have hi : s2Step177ExitGRow.payload.drop 180=s2Step177ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step177ExitG_retired] at result
  exact result

private def s2Step177ExitGvBefore : Arena := s2Step177ExitFAfter

private theorem s2Step177ExitGv_Incoming : rowsOwned s2Step177ExitGvBefore [s2Step177ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step177ExitGRow,s2Step177ExitFRow,s2Step177ExitFvRow,s2Step177ExitGvRow] 3 s2Step177ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step177ExitGvBefore (fun q => (0≤q ∧ q<180) ∨ (181≤q ∧ q<692) ∨ (693≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step177ExitGv_Outgoing : rowsOwned s2Step177ExitGvAfter [s2Step177ExitGvOut] :=
  hmrRows_owned_drop s2Step177ExitGvAfter [s2Step177ExitGOut,s2Step177ExitFOut,s2Step177ExitFvOut,s2Step177ExitGvOut] 3 s2Step177ExitBank_outgoingOwned

private theorem s2Step177ExitGv_distinct : (s2Step177ExitGvRow.sign::s2Step177ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177ExitGv_owned : (s2Step177ExitGvRow.sign::s2Step177ExitGvRow.payload).toFinset⊆s2Step177ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step177ExitGvBefore (fun q => (0≤q ∧ q<180) ∨ (181≤q ∧ q<692) ∨ (693≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177ExitGv_reserved : s2Step177ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step177ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step177ExitGv_checked : planRowResizeLog s2Step177ExitGvBefore s2Step177ExitGvRow 103 []=
    some (s2Step177ExitGvAfter,s2Step177ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step177ExitGvBefore s2Step177ExitGvAfter s2Step177ExitGvRow 103 []
    s2Step177ExitGv_distinct s2Step177ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step177ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step177ExitGvRow.payload++[]) s2Step177ExitGvRow.sign=s2Step177ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step177ExitBank_rows : planWindowRowsLog s2Step177ExitGBefore [(s2Step177ExitGRow,180),(s2Step177ExitFRow,180),(s2Step177ExitFvRow,103),(s2Step177ExitGvRow,103)] [[],[],[],[]]=
    some (s2Step177ExitGvAfter,[s2Step177ExitGOut,s2Step177ExitFOut,s2Step177ExitFvOut,s2Step177ExitGvOut],(shrinkRow 769 s2Step177ExitGExtra ++ (shrinkRow 768 s2Step177ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step177ExitGvAfter [] []=some (s2Step177ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step177ExitGvBefore s2Step177ExitGvAfter s2Step177ExitGvAfter
    s2Step177ExitGvRow s2Step177ExitGvOut 103 [] [] [] []
    (growRow 771 []) ([]) s2Step177ExitGv_Incoming s2Step177ExitGv_checked h4 s2Step177ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step177ExitFvBefore s2Step177ExitFvAfter s2Step177ExitGvAfter
    s2Step177ExitFvRow s2Step177ExitFvOut 103 [] [(s2Step177ExitGvRow,103)] [[]] [s2Step177ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step177ExitFv_Incoming s2Step177ExitFv_checked h3 s2Step177ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step177ExitFBefore s2Step177ExitFAfter s2Step177ExitGvAfter
    s2Step177ExitFRow s2Step177ExitFOut 180 [] [(s2Step177ExitFvRow,103),(s2Step177ExitGvRow,103)] [[],[]] [s2Step177ExitFvOut,s2Step177ExitGvOut]
    (shrinkRow 768 s2Step177ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step177ExitF_Incoming s2Step177ExitF_checked h2 s2Step177ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step177ExitGBefore s2Step177ExitGAfter s2Step177ExitGvAfter
    s2Step177ExitGRow s2Step177ExitGOut 180 [] [(s2Step177ExitFRow,180),(s2Step177ExitFvRow,103),(s2Step177ExitGvRow,103)] [[],[],[]] [s2Step177ExitFOut,s2Step177ExitFvOut,s2Step177ExitGvOut]
    (shrinkRow 769 s2Step177ExitGExtra) ((shrinkRow 768 s2Step177ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step177ExitG_Incoming s2Step177ExitG_checked h1 s2Step177ExitG_Outgoing
  exact h0

private theorem s2Step177ExitBank_checked : compileHmrBankResizeLog .exit s2Step177ExitGBefore ⟨s2Step177ExitFRow,s2Step177ExitGRow,s2Step177ExitFvRow,s2Step177ExitGvRow⟩ ⟨180,180,103,103⟩ [[],[],[],[]]=
    some (s2Step177ExitGvAfter,⟨s2Step177ExitFOut,s2Step177ExitGOut,s2Step177ExitFvOut,s2Step177ExitGvOut⟩,(shrinkRow 769 s2Step177ExitGExtra ++ (shrinkRow 768 s2Step177ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step177ExitBank_rows]
  rfl

private theorem s2Step177Add0_apart : Disjoint s2Step177Add0Arena.live s2Step177Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step177Add0Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177Add0_card : s2Step177Add0Arena.live.card=882 := by
  decide +kernel

private theorem s2Step177Add0_borrowed : s2Step177Add0Arena.checkBorrow (hmrHybridCount s2Step177Add0Arena s2Step177Add0B.length) s2Step177Add0Work=some s2Step177Add0During := by
  have len : s2Step177Add0Work.length=hmrHybridCount s2Step177Add0Arena s2Step177Add0B.length := by
    rw [hmrHybridCount,s2Step177Add0_card]
    decide +kernel
  have nd : s2Step177Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step177Add0Arena s2Step177Add0During s2Step177Add0Work.toFinset s2Step177Add0_bounded s2Step177Add0_apart rfl

private theorem s2Step177Add0_distinct : (830::846::794::(s2Step177Add0A++s2Step177Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177Add0_owned : (830::846::794::(s2Step177Add0A++s2Step177Add0B)).toFinset⊆s2Step177Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step177Add0Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177Add0_checked : compileHmrHybridCinLog s2Step177Add0Arena 846 830 794 s2Step177Add0A s2Step177Add0B s2Step177Add0Work=some s2Step177Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step177Add0Arena s2Step177Add0During 846 830 794 s2Step177Add0A s2Step177Add0B s2Step177Add0Work
    (by decide +kernel) (by decide +kernel) s2Step177Add0_distinct
    (fun q hq => s2Step177Add0_owned (List.mem_toFinset.mpr hq)) s2Step177Add0_borrowed

private theorem s2Step177Add1_apart : Disjoint s2Step177Add1Arena.live s2Step177Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step177Add1Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177Add1_card : s2Step177Add1Arena.live.card=882 := by
  decide +kernel

private theorem s2Step177Add1_borrowed : s2Step177Add1Arena.checkBorrow (hmrHybridCount s2Step177Add1Arena s2Step177Add1B.length) s2Step177Add1Work=some s2Step177Add1During := by
  have len : s2Step177Add1Work.length=hmrHybridCount s2Step177Add1Arena s2Step177Add1B.length := by
    rw [hmrHybridCount,s2Step177Add1_card]
    decide +kernel
  have nd : s2Step177Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step177Add1Arena s2Step177Add1During s2Step177Add1Work.toFinset s2Step177Add1_bounded s2Step177Add1_apart rfl

private theorem s2Step177Add1_distinct : (830::846::794::(s2Step177Add1A++s2Step177Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177Add1_owned : (830::846::794::(s2Step177Add1A++s2Step177Add1B)).toFinset⊆s2Step177Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step177Add1Arena (fun q => (0≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177Add1_checked : compileHmrHybridCinLog s2Step177Add1Arena 846 830 794 s2Step177Add1A s2Step177Add1B s2Step177Add1Work=some s2Step177Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step177Add1Arena s2Step177Add1During 846 830 794 s2Step177Add1A s2Step177Add1B s2Step177Add1Work
    (by decide +kernel) (by decide +kernel) s2Step177Add1_distinct
    (fun q hq => s2Step177Add1_owned (List.mem_toFinset.mpr hq)) s2Step177Add1_borrowed

private theorem s2Step177F4_apart : Disjoint (s2Step177Add0A++s2Step177Add0B).toFinset (s2Step177Add1A++s2Step177Add1B).toFinset := by
  have nd : ((s2Step177Add0A++s2Step177Add0B)++(s2Step177Add1A++s2Step177Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step177F4_carry : s2Step177F4FlagArena.checkBorrow 1 [794]=some s2Step177Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step177F4FlagArena,s2Step177HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step177F4FlagArena,s2Step177HeadFvAfter,s2Step177Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step177F4_distinct : (807::846::830::794::((s2Step177Add0A++s2Step177Add1A)++(s2Step177Add0B++s2Step177Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177F4_flag : s2Step177HeadFvAfter.checkBorrow 1 [830]=some s2Step177F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step177HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step177F4_owned : (807::846::((s2Step177Add0A++s2Step177Add1A)++(s2Step177Add0B++s2Step177Add1B))).toFinset⊆s2Step177HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step177HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177F4_checked : compileHmrHybridF4Log s2Step177HeadFvAfter 807 846 s2Step177Add0A s2Step177Add0B s2Step177Add1A s2Step177Add1B [830] [794] s2Step177Add0Work s2Step177Add1Work=some s2Step177F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step177HeadFvAfter s2Step177F4FlagArena s2Step177Add0Arena s2Step177Add0During s2Step177Add1During 807 846
    s2Step177Add0A s2Step177Add0B s2Step177Add1A s2Step177Add1B [830] [794] s2Step177Add0Work s2Step177Add1Work
    (fun q hq => s2Step177F4_owned (List.mem_toFinset.mpr hq)) s2Step177F4_flag s2Step177F4_carry
    s2Step177F4_distinct s2Step177F4_apart s2Step177Add0_checked s2Step177Add1_checked

private theorem s2Step177Front_branch : s2Step177FrontSigmaArena.checkBorrow 1 [846]=some s2Step177HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step177FrontSigmaArena,s2Step177EntryGvAfter,s2Step177EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step177FrontSigmaArena,s2Step177EntryGvAfter,s2Step177EntryFBefore,s2Step177HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step177Front_entry : HmrFrontEntryValid s2Step177EntryFBefore s2Step177FrontBank 181 102 ⟨180,180,103,103⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step177FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step177EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step177EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step177FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step177Front_sigma : s2Step177EntryGvAfter.checkBorrow 1 [807]=some s2Step177FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step177EntryGvAfter,s2Step177EntryFBefore,arenaWires]
  · rfl

private def s2Step177HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177HeadFBefore : Arena := s2Step177HeadGAfter

private def s2Step177HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692],768⟩

private def s2Step177HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787],770⟩

private def s2Step177HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180],769⟩

private def s2Step177HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821],771⟩

private theorem s2Step177HeadBank_incomingDistinct : ([s2Step177HeadGRow,s2Step177HeadFRow,s2Step177HeadGvRow,s2Step177HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177HeadF_Incoming : rowsOwned s2Step177HeadFBefore [s2Step177HeadFRow,s2Step177HeadGvRow,s2Step177HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step177HeadGRow,s2Step177HeadFRow,s2Step177HeadGvRow,s2Step177HeadFvRow] 1 s2Step177HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step177HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step177HeadBank_outgoingOwned : rowsOwned s2Step177HeadFvAfter [s2Step177HeadGOut,s2Step177HeadFOut,s2Step177HeadGvOut,s2Step177HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step177HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step177HeadF_Outgoing : rowsOwned s2Step177HeadFvAfter [s2Step177HeadFOut,s2Step177HeadGvOut,s2Step177HeadFvOut] :=
  hmrRows_owned_drop s2Step177HeadFvAfter [s2Step177HeadGOut,s2Step177HeadFOut,s2Step177HeadGvOut,s2Step177HeadFvOut] 1 s2Step177HeadBank_outgoingOwned

private theorem s2Step177HeadF_distinct : (s2Step177HeadFRow.sign::s2Step177HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177HeadF_owned : (s2Step177HeadFRow.sign::s2Step177HeadFRow.payload).toFinset⊆s2Step177HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step177HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177HeadF_reserved : s2Step177HeadFBefore.reserve s2Step177HeadFFresh.toFinset=some s2Step177HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step177HeadFFresh,arenaWires]
  · norm_num [s2Step177HeadFBefore,s2Step177HeadGAfter,s2Step177HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step177HeadFAfter,s2Step177HeadFBefore,s2Step177HeadGAfter,s2Step177HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step177HeadF_checked : planRowResizeLog s2Step177HeadFBefore s2Step177HeadFRow 182 s2Step177HeadFFresh=
    some (s2Step177HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 785],768⟩,growRow 768 s2Step177HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step177HeadFBefore s2Step177HeadFAfter s2Step177HeadFRow 182 s2Step177HeadFFresh
    s2Step177HeadF_distinct s2Step177HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step177HeadF_reserved
  have rowEq : WindowRow.mk (s2Step177HeadFRow.payload++s2Step177HeadFFresh) s2Step177HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 785],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step177HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step177HeadFvBefore : Arena := s2Step177HeadGvAfter

private theorem s2Step177HeadFv_Incoming : rowsOwned s2Step177HeadFvBefore [s2Step177HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step177HeadGRow,s2Step177HeadFRow,s2Step177HeadGvRow,s2Step177HeadFvRow] 3 s2Step177HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step177HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step177HeadFv_Outgoing : rowsOwned s2Step177HeadFvAfter [s2Step177HeadFvOut] :=
  hmrRows_owned_drop s2Step177HeadFvAfter [s2Step177HeadGOut,s2Step177HeadFOut,s2Step177HeadGvOut,s2Step177HeadFvOut] 3 s2Step177HeadBank_outgoingOwned

private theorem s2Step177HeadFv_distinct : (s2Step177HeadFvRow.sign::s2Step177HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177HeadFv_owned : (s2Step177HeadFvRow.sign::s2Step177HeadFvRow.payload).toFinset⊆s2Step177HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step177HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177HeadFv_reserved : s2Step177HeadFvBefore.reserve s2Step177HeadFvFresh.toFinset=some s2Step177HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step177HeadFvFresh,arenaWires]
  · norm_num [s2Step177HeadFvBefore,s2Step177HeadGvAfter,s2Step177HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step177HeadFvAfter,s2Step177HeadFvBefore,s2Step177HeadGvAfter,s2Step177HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step177HeadFv_checked : planRowResizeLog s2Step177HeadFvBefore s2Step177HeadFvRow 103 s2Step177HeadFvFresh=
    some (s2Step177HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩,growRow 770 s2Step177HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step177HeadFvBefore s2Step177HeadFvAfter s2Step177HeadFvRow 103 s2Step177HeadFvFresh
    s2Step177HeadFv_distinct s2Step177HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step177HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step177HeadFvRow.payload++s2Step177HeadFvFresh) s2Step177HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step177HeadG_Incoming : rowsOwned s2Step177HeadGBefore [s2Step177HeadGRow,s2Step177HeadFRow,s2Step177HeadGvRow,s2Step177HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step177HeadGRow,s2Step177HeadFRow,s2Step177HeadGvRow,s2Step177HeadFvRow] 0 s2Step177HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step177HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step177HeadG_Outgoing : rowsOwned s2Step177HeadFvAfter [s2Step177HeadGOut,s2Step177HeadFOut,s2Step177HeadGvOut,s2Step177HeadFvOut] :=
  hmrRows_owned_drop s2Step177HeadFvAfter [s2Step177HeadGOut,s2Step177HeadFOut,s2Step177HeadGvOut,s2Step177HeadFvOut] 0 s2Step177HeadBank_outgoingOwned

private theorem s2Step177HeadG_distinct : (s2Step177HeadGRow.sign::s2Step177HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177HeadG_owned : (s2Step177HeadGRow.sign::s2Step177HeadGRow.payload).toFinset⊆s2Step177HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step177HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177HeadG_reserved : s2Step177HeadGBefore.reserve s2Step177HeadGFresh.toFinset=some s2Step177HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step177HeadGFresh,arenaWires]
  · norm_num [s2Step177HeadGBefore,s2Step177HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step177HeadGAfter,s2Step177HeadGBefore,s2Step177HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step177HeadG_checked : planRowResizeLog s2Step177HeadGBefore s2Step177HeadGRow 182 s2Step177HeadGFresh=
    some (s2Step177HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 806],769⟩,growRow 769 s2Step177HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step177HeadGBefore s2Step177HeadGAfter s2Step177HeadGRow 182 s2Step177HeadGFresh
    s2Step177HeadG_distinct s2Step177HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step177HeadG_reserved
  have rowEq : WindowRow.mk (s2Step177HeadGRow.payload++s2Step177HeadGFresh) s2Step177HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 806],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step177HeadGvBefore : Arena := s2Step177HeadFAfter

private theorem s2Step177HeadGv_Incoming : rowsOwned s2Step177HeadGvBefore [s2Step177HeadGvRow,s2Step177HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step177HeadGRow,s2Step177HeadFRow,s2Step177HeadGvRow,s2Step177HeadFvRow] 2 s2Step177HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step177HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step177HeadGv_Outgoing : rowsOwned s2Step177HeadFvAfter [s2Step177HeadGvOut,s2Step177HeadFvOut] :=
  hmrRows_owned_drop s2Step177HeadFvAfter [s2Step177HeadGOut,s2Step177HeadFOut,s2Step177HeadGvOut,s2Step177HeadFvOut] 2 s2Step177HeadBank_outgoingOwned

private theorem s2Step177HeadGv_distinct : (s2Step177HeadGvRow.sign::s2Step177HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step177HeadGv_owned : (s2Step177HeadGvRow.sign::s2Step177HeadGvRow.payload).toFinset⊆s2Step177HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step177HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<830) ∨ (831≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step177HeadGv_reserved : s2Step177HeadGvBefore.reserve s2Step177HeadGvFresh.toFinset=some s2Step177HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step177HeadGvFresh,arenaWires]
  · norm_num [s2Step177HeadGvBefore,s2Step177HeadFAfter,s2Step177HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step177HeadGvAfter,s2Step177HeadGvBefore,s2Step177HeadFAfter,s2Step177HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step177HeadGv_checked : planRowResizeLog s2Step177HeadGvBefore s2Step177HeadGvRow 103 s2Step177HeadGvFresh=
    some (s2Step177HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847],771⟩,growRow 771 s2Step177HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step177HeadGvBefore s2Step177HeadGvAfter s2Step177HeadGvRow 103 s2Step177HeadGvFresh
    s2Step177HeadGv_distinct s2Step177HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step177HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step177HeadGvRow.payload++s2Step177HeadGvFresh) s2Step177HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step177HeadBank_rows : planWindowRowsLog s2Step177HeadGBefore [(s2Step177HeadGRow,182),(s2Step177HeadFRow,182),(s2Step177HeadGvRow,103),(s2Step177HeadFvRow,103)] [s2Step177HeadGFresh,s2Step177HeadFFresh,s2Step177HeadGvFresh,s2Step177HeadFvFresh]=
    some (s2Step177HeadFvAfter,[s2Step177HeadGOut,s2Step177HeadFOut,s2Step177HeadGvOut,s2Step177HeadFvOut],(growRow 769 s2Step177HeadGFresh ++ (growRow 768 s2Step177HeadFFresh ++ (growRow 771 s2Step177HeadGvFresh ++ (growRow 770 s2Step177HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step177HeadFvAfter [] []=some (s2Step177HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step177HeadFvBefore s2Step177HeadFvAfter s2Step177HeadFvAfter
    s2Step177HeadFvRow s2Step177HeadFvOut 103 s2Step177HeadFvFresh [] [] []
    (growRow 770 s2Step177HeadFvFresh) ([]) s2Step177HeadFv_Incoming s2Step177HeadFv_checked h4 s2Step177HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step177HeadGvBefore s2Step177HeadGvAfter s2Step177HeadFvAfter
    s2Step177HeadGvRow s2Step177HeadGvOut 103 s2Step177HeadGvFresh [(s2Step177HeadFvRow,103)] [s2Step177HeadFvFresh] [s2Step177HeadFvOut]
    (growRow 771 s2Step177HeadGvFresh) ((growRow 770 s2Step177HeadFvFresh ++ [])) s2Step177HeadGv_Incoming s2Step177HeadGv_checked h3 s2Step177HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step177HeadFBefore s2Step177HeadFAfter s2Step177HeadFvAfter
    s2Step177HeadFRow s2Step177HeadFOut 182 s2Step177HeadFFresh [(s2Step177HeadGvRow,103),(s2Step177HeadFvRow,103)] [s2Step177HeadGvFresh,s2Step177HeadFvFresh] [s2Step177HeadGvOut,s2Step177HeadFvOut]
    (growRow 768 s2Step177HeadFFresh) ((growRow 771 s2Step177HeadGvFresh ++ (growRow 770 s2Step177HeadFvFresh ++ []))) s2Step177HeadF_Incoming s2Step177HeadF_checked h2 s2Step177HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step177HeadGBefore s2Step177HeadGAfter s2Step177HeadFvAfter
    s2Step177HeadGRow s2Step177HeadGOut 182 s2Step177HeadGFresh [(s2Step177HeadFRow,182),(s2Step177HeadGvRow,103),(s2Step177HeadFvRow,103)] [s2Step177HeadFFresh,s2Step177HeadGvFresh,s2Step177HeadFvFresh] [s2Step177HeadFOut,s2Step177HeadGvOut,s2Step177HeadFvOut]
    (growRow 769 s2Step177HeadGFresh) ((growRow 768 s2Step177HeadFFresh ++ (growRow 771 s2Step177HeadGvFresh ++ (growRow 770 s2Step177HeadFvFresh ++ [])))) s2Step177HeadG_Incoming s2Step177HeadG_checked h1 s2Step177HeadG_Outgoing
  exact h0

private theorem s2Step177HeadBank_checked : compileHmrBankResizeLog .headroom s2Step177HeadGBefore ⟨s2Step177HeadFRow,s2Step177HeadGRow,s2Step177HeadFvRow,s2Step177HeadGvRow⟩ ⟨182,182,103,103⟩ [s2Step177HeadGFresh,s2Step177HeadFFresh,s2Step177HeadGvFresh,s2Step177HeadFvFresh]=
    some (s2Step177HeadFvAfter,⟨s2Step177HeadFOut,s2Step177HeadGOut,s2Step177HeadFvOut,s2Step177HeadGvOut⟩,(growRow 769 s2Step177HeadGFresh ++ (growRow 768 s2Step177HeadFFresh ++ (growRow 771 s2Step177HeadGvFresh ++ (growRow 770 s2Step177HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step177HeadBank_rows]
  rfl

private theorem s2Step177Front_checked : compileHmrSourceFrontLog s2Step177EntryFBefore s2Step177FrontBank 181 102 ⟨180,180,103,103⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step177FrontLog=some s2Step177FrontPlan := by
  have pairEq : s2Step177FrontPair=⟨s2Step177HeadFRow,s2Step177HeadGRow,s2Step177HeadFvRow,s2Step177HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step177FrontHead=⟨s2Step177ExitFRow,s2Step177ExitGRow,s2Step177ExitFvRow,s2Step177ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step177Add0A=s2Step177FrontHead.f.wires := by decide +kernel
  have gEq : s2Step177Add0B=s2Step177FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step177Add1A=s2Step177FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step177Add1B=s2Step177FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step177EntryFBefore s2Step177FrontBank 181 102 ⟨180,180,103,103⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step177FrontLog s2Step177FrontPlan
  · exact s2Step177Front_entry
  · exact s2Step177EntryBank_checked
  · exact s2Step177Front_sigma
  · rfl
  · exact s2Step177Front_branch
  · rfl
  · simpa only [s2Step177FrontPlan,pairEq] using s2Step177HeadBank_checked
  · simpa only [s2Step177FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step177F4_checked
  · exact s2Step177Counter_checked
  · rfl
  · simpa only [s2Step177FrontPlan,headEq] using s2Step177ExitBank_checked

private theorem s2Step177Complete_explicit_checked : compileHmrEarlyStepLog s2Step177EntryFBefore s2Step177FrontBank 181 102 ⟨180,180,103,103⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step177CompleteLog=some s2Step177CompletePlan := by
  let Q := s2Step177EarlyControlPlan
  have hq := s2Step177EarlyControl_plan_checked
  have fv1 : s2Step177CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step177CompleteOut.fv.payload[2]?.getD s2Step177CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step177CompleteOut.fv.payload[3]?.getD s2Step177CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step177CompleteOut.fv.payload[4]?.getD s2Step177CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step177EntryFBefore s2Step177EarlyControlArena s2Step177FrontBank 181 102 ⟨180,180,103,103⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step177CompleteLog s2Step177FrontPlan Q
    s2Step177Front_checked s2Step177Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step177Complete_owned s2Step177Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step177EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 807 s2Step177CompleteOut.fv.second (s2Step177CompleteOut.fv.payload[2]?.getD s2Step177CompleteOut.fv.sign) (s2Step177CompleteOut.fv.payload[3]?.getD s2Step177CompleteOut.fv.sign) (s2Step177CompleteOut.fv.payload[4]?.getD s2Step177CompleteOut.fv.sign) 846 42 s2Step177EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep177Arena : Arena := s2Step177EntryFBefore
def s2PrivateStep177Bank : WindowBank := s2Step177FrontBank
def s2PrivateStep177Spec : HmrSourceWalkStepLog := ⟨181,102,⟨180,180,103,103⟩,42,.early s2Step177CompleteLog⟩
def s2PrivateStep177Plan : HmrSourceStepPlan := .early s2Step177CompletePlan
theorem s2PrivateStep177_source : s2PrivateStep177Spec=s2ObservedLogs176[1] := rfl
theorem s2PrivateStep177_checked : compileHmrSourceStepLog s2PrivateStep177Arena s2PrivateStep177Bank
    s2PrivateStep177Spec.fgWidth s2PrivateStep177Spec.vWidth s2PrivateStep177Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 177 s2PrivateStep177Spec.need none s2PrivateStep177Spec.log=some s2PrivateStep177Plan := by
  change compileHmrSourceStepLog s2Step177EntryFBefore s2Step177FrontBank 181 102 ⟨180,180,103,103⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 177 42 none (.early s2Step177CompleteLog)=some (.early s2Step177CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 177<498)]
  rw [s2Step177Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
