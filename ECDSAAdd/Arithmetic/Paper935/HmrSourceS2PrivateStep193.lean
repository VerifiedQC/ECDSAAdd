import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep191
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

private def s2Step193CompleteMoves : List (Wire × Wire) := [(826,172),(814,684)]

private def s2Step193EarlyControlLog : HmrEarlyControlLog := ⟨[814, 826, 829, 784, 807],[827],[840],[794, 867, 877, 879, 882, 885],[]⟩

private def s2Step193FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [782]],[[827], [807], [829], [784]],[[], [], [], []]⟩,[817],[822],[840],[794],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[840, 794, 867, 877]⟩

private def s2Step193CompleteLog : HmrEarlyStepLog := ⟨s2Step193FrontLog,s2Step193CompleteMoves,s2Step193EarlyControlLog⟩

private def s2Step193ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩

private def s2Step193ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803],770⟩

private def s2Step193ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171],769⟩

private def s2Step193ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782],771⟩

private def s2Step193FrontOut : WindowBank := ⟨s2Step193ExitFOut,s2Step193ExitGOut,s2Step193ExitFvOut,s2Step193ExitGvOut⟩

private def s2Step193CompleteOut : WindowBank := s2Step193FrontOut.repacked s2Step193CompleteMoves

private def s2Step193EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step193EarlyControlPositiveArena,[827],s2Step193EarlyControlEqualityArena,[840],⟨⟨817,false⟩,[⟨⟨827,false⟩,840⟩]⟩⟩

private def s2Step193EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,814⟩,⟨⟨774,false⟩,826⟩,⟨⟨775,false⟩,829⟩,⟨⟨776,false⟩,784⟩,⟨⟨777,false⟩,807⟩]⟩

private def s2Step193EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step193EarlyControlZeroArena,s2Step193EarlyControlZeroPlan,s2Step193EarlyControlClassPlan,s2Step193EarlyControlFlagArena,s2Step193EarlyControlFittedArena,s2Step193EarlyControlHistoryArena,s2Step193EarlyControlSigmaArena,s2Step193EarlyControlOutputArena,s2Step193EarlyControlLog⟩

private def s2Step193CounterWork : List Wire := [840, 794, 867, 877]

private theorem s2Step193Counter_bounded : s2Step193CounterWork.toFinset⊆arenaWires := by norm_num [s2Step193CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step193HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193CounterDuring : Arena := ⟨s2Step193HeadFvAfter.live∪s2Step193CounterWork.toFinset,Finset.union_subset s2Step193HeadFvAfter.bounded s2Step193Counter_bounded⟩

private def s2Step193EntryFFresh : List Wire := []

private def s2Step193EntryFvFresh : List Wire := []

private def s2Step193EntryGFresh : List Wire := []

private def s2Step193EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193EntryGvFresh : List Wire := [782]

private def s2Step193ExitFExtra : List Wire := [684, 807]

private def s2Step193ExitFvExtra : List Wire := [784]

private def s2Step193ExitGExtra : List Wire := [172, 827]

private def s2Step193ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<172) ∨ (173≤q ∧ q<684) ∨ (685≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193ExitGvExtra : List Wire := [829]

private def s2Step193Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193Add0Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step193Add0_bounded : s2Step193Add0Work.toFinset⊆arenaWires := by
  have h : s2Step193Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step193Add0During : Arena := ⟨s2Step193Add0Arena.live∪s2Step193Add0Work.toFinset,Finset.union_subset s2Step193Add0Arena.bounded s2Step193Add0_bounded⟩

private def s2Step193Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193Add1Work : List Wire := [867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step193Add1_bounded : s2Step193Add1Work.toFinset⊆arenaWires := by
  have h : s2Step193Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step193Add1During : Arena := ⟨s2Step193Add1Arena.live∪s2Step193Add1Work.toFinset,Finset.union_subset s2Step193Add1Arena.bounded s2Step193Add1_bounded⟩

private def s2Step193F4FlagArena : Arena := ⟨s2Step193HeadFvAfter.live∪{840},Finset.union_subset s2Step193HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step193F4Plan : HmrHybridF4Plan := ⟨s2Step193F4FlagArena,[840],s2Step193Add0Arena,[794],s2Step193Add0During,s2Step193Add0Work,s2Step193Add1During,s2Step193Add1Work⟩

private def s2Step193HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 807],768⟩

private def s2Step193HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784],770⟩

private def s2Step193HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 827],769⟩

private def s2Step193HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 829],771⟩

private def s2Step193FrontHead : WindowBank := ⟨s2Step193HeadFOut,s2Step193HeadGOut,s2Step193HeadFvOut,s2Step193HeadGvOut⟩

private def s2Step193EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684],768⟩

private def s2Step193EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803],770⟩

private def s2Step193EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172],769⟩

private def s2Step193EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782],771⟩

private def s2Step193FrontPair : WindowBank := ⟨s2Step193EntryFOut,s2Step193EntryGOut,s2Step193EntryFvOut,s2Step193EntryGvOut⟩

private def s2Step193FrontSigmaArena : Arena := ⟨s2Step193EntryGvAfter.live∪{817},Finset.union_subset s2Step193EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step193HeadFFresh : List Wire := [807]

private def s2Step193HeadFvFresh : List Wire := [784]

private def s2Step193HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193HeadGFresh : List Wire := [827]

private def s2Step193HeadGvFresh : List Wire := [829]

private def s2Step193FrontPlan : HmrSourceFront := ⟨s2Step193EntryGvAfter,s2Step193FrontPair,(growRow 768 s2Step193EntryFFresh ++ (growRow 769 s2Step193EntryGFresh ++ (growRow 770 s2Step193EntryFvFresh ++ (growRow 771 s2Step193EntryGvFresh ++ [])))),s2Step193FrontSigmaArena,[817],s2Step193HeadGBefore,[822],
  s2Step193HeadFvAfter,s2Step193FrontHead,(growRow 769 s2Step193HeadGFresh ++ (growRow 768 s2Step193HeadFFresh ++ (growRow 771 s2Step193HeadGvFresh ++ (growRow 770 s2Step193HeadFvFresh ++ [])))),s2Step193F4Plan,s2Step193CounterDuring,s2Step193CounterWork,s2Step193ExitGvAfter,s2Step193FrontOut,(shrinkRow 769 s2Step193ExitGExtra ++ (shrinkRow 768 s2Step193ExitFExtra ++ (shrinkRow 770 s2Step193ExitFvExtra ++ (shrinkRow 771 s2Step193ExitGvExtra ++ []))))⟩

private def s2Step193CompletePlan : HmrEarlyStepPlan := ⟨s2Step193FrontPlan,s2Step193EarlyControlArena,s2Step193EarlyControlPlan,s2Step193CompleteMoves⟩

private theorem s2Step193Complete_apart : List.Disjoint (s2Step193CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [817, 822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] := by
  have nd : ((s2Step193CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[817, 822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step193Complete_owned : (s2Step193CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step193EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step193EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step193CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,684),(685,784),(785,794),(795,807),(808,826),(828,829),(830,840),(841,867),(868,877),(878,879),(880,882),(883,885),(886,890)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step193CompleteRelocationMove0Borrowed : Arena := ⟨s2Step193ExitGvAfter.live∪{172},Finset.union_subset s2Step193ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step193CompleteRelocationMove1Borrowed : Arena := ⟨s2Step193CompleteRelocationMove0After.live∪{684},Finset.union_subset s2Step193CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step193CompleteRelocation_move0_owned : 826∈s2Step193ExitGvAfter.live := by norm_num [s2Step193ExitGvAfter,arenaWires]

private theorem s2Step193CompleteRelocation_move0_reserve : s2Step193ExitGvAfter.reserve {172}=some s2Step193CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step193ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step193CompleteRelocation_move0_retire : s2Step193CompleteRelocationMove0Borrowed.retireSet {826}=s2Step193CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step193CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step193CompleteRelocationMove0Borrowed,s2Step193ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step193CompleteRelocation_move1_owned : 814∈s2Step193CompleteRelocationMove0After.live := by norm_num [s2Step193CompleteRelocationMove0After,arenaWires]

private theorem s2Step193CompleteRelocation_move1_reserve : s2Step193CompleteRelocationMove0After.reserve {684}=some s2Step193CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step193CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step193CompleteRelocation_move1_retire : s2Step193CompleteRelocationMove1Borrowed.retireSet {814}=s2Step193EarlyControlArena := by
  unfold Arena.retireSet s2Step193EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step193CompleteRelocationMove1Borrowed,s2Step193CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step193CompleteRelocation_checked : s2Step193ExitGvAfter.checkRepack [(826,172),(814,684)]=some s2Step193EarlyControlArena := by
  have tail2 : s2Step193EarlyControlArena.checkRepack []=some s2Step193EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step193CompleteRelocationMove0After s2Step193CompleteRelocationMove1Borrowed s2Step193EarlyControlArena s2Step193EarlyControlArena 814 684 []
    s2Step193CompleteRelocation_move1_owned s2Step193CompleteRelocation_move1_reserve s2Step193CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step193ExitGvAfter s2Step193CompleteRelocationMove0Borrowed s2Step193CompleteRelocationMove0After s2Step193EarlyControlArena 826 172 [(814,684)]
    s2Step193CompleteRelocation_move0_owned s2Step193CompleteRelocation_move0_reserve s2Step193CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step193Complete_repack : s2Step193ExitGvAfter.checkRepack s2Step193CompleteMoves=some s2Step193EarlyControlArena := by
  simpa only [s2Step193CompleteMoves] using s2Step193CompleteRelocation_checked

private theorem s2Step193EarlyControl_branchOwned : ([822] : List Wire).toFinset⊆s2Step193EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step193EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193EarlyControl_branch : compileHmrBranchRetirement s2Step193EarlyControlSigmaArena 822=some s2Step193EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step193EarlyControl_branchOwned
  · ext q
    simp [s2Step193EarlyControlOutputArena,s2Step193EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step193EarlyControl_classEqualityBorrow : s2Step193EarlyControlPositiveArena.checkBorrow (([817, 827] : List Wire).length-1) s2Step193EarlyControlLog.classWork=some s2Step193EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step193EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step193EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step193EarlyControlEqualityArena,s2Step193EarlyControlPositiveArena,s2Step193EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step193EarlyControl_classEqualityOwned : ([817, 827] : List Wire).toFinset⊆s2Step193EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step193EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193EarlyControl_classEquality : compileHmrEqualityLog s2Step193EarlyControlPositiveArena [817, 827] 0 s2Step193EarlyControlLog.classWork=some (s2Step193EarlyControlEqualityArena,s2Step193EarlyControlLog.classWork,s2Step193EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step193EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step193EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step193EarlyControl_classOwned : ([777, 807, 817] : List Wire).toFinset⊆s2Step193EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step193EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193EarlyControl_positiveBorrow : s2Step193EarlyControlZeroArena.checkBorrow (1) s2Step193EarlyControlLog.positiveWork=some s2Step193EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step193EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step193EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step193EarlyControlPositiveArena,s2Step193EarlyControlZeroArena,s2Step193EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step193EarlyControl_class : compileHmrSourceClassLog s2Step193EarlyControlZeroArena false 777 s2Step193EarlyControlZeroPlan.top 0 817 s2Step193EarlyControlLog.positiveWork s2Step193EarlyControlLog.classWork=some s2Step193EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step193EarlyControlClassPlan s2Step193EarlyControlZeroArena false 777 s2Step193EarlyControlZeroPlan.top 0 817
  constructor
  · decide +kernel
  · exact s2Step193EarlyControl_classOwned
  · exact s2Step193EarlyControl_positiveBorrow
  · exact s2Step193EarlyControl_classEquality

private theorem s2Step193EarlyControl_entryRecordOwned : ([822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step193EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step193EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193EarlyControl_entrySigmaOwned : ([817, 254] : List Wire).toFinset⊆s2Step193EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step193EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193EarlyControl_fitBorrow : s2Step193EarlyControlFlagArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step193EarlyControlLog.recordFresh=some s2Step193EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step193EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step193EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step193EarlyControlFittedArena,s2Step193EarlyControlFlagArena,s2Step193EarlyControlLog,arenaWires]

private theorem s2Step193EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step193EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step193EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193EarlyControl_fit : compileHmrRecordGrowLog s2Step193EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step193EarlyControlLog.recordFresh=some s2Step193EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step193EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step193EarlyControl_fitBorrow

private theorem s2Step193EarlyControl_flagsBorrow : s2Step193EarlyControlEqualityArena.checkBorrow (6) s2Step193EarlyControlLog.flagWork=some s2Step193EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step193EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step193EarlyControlEqualityArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step193EarlyControlFlagArena,s2Step193EarlyControlEqualityArena,s2Step193EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step193EarlyControl_flagsOwned : ([840, 253, 252, 251] : List Wire).toFinset⊆s2Step193EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step193EarlyControlEqualityArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193EarlyControl_flags : compileHmrFlagsLog s2Step193EarlyControlClassPlan.equalityArena s2Step193EarlyControlClassPlan.equality.top 253 252 251 s2Step193EarlyControlLog.flagWork=some s2Step193EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step193EarlyControl_flagsOwned⟩
  · exact s2Step193EarlyControl_flagsBorrow

private theorem s2Step193EarlyControl_historyBorrow : s2Step193EarlyControlArena.checkBorrow ((43-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step193EarlyControlLog.recordFresh=some s2Step193EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step193EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step193EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step193EarlyControlHistoryArena,s2Step193EarlyControlArena,s2Step193EarlyControlLog,arenaWires]

private theorem s2Step193EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step193EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step193EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193EarlyControl_history : compileHmrRecordGrowLog s2Step193EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step193EarlyControlLog.recordFresh=some s2Step193EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step193EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step193EarlyControl_historyBorrow

private theorem s2Step193EarlyControl_sigmaOwned : ([254, 817] : List Wire).toFinset⊆s2Step193EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step193EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193EarlyControl_sigmaReleaseOwned : ([817] : List Wire).toFinset⊆s2Step193EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step193EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193EarlyControl_sigmaRelease : s2Step193EarlyControlHistoryArena.release {817} (fun _ => false)=some s2Step193EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step193EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step193EarlyControlSigmaArena,s2Step193EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step193EarlyControl_sigma : compileHmrSigmaDropLog s2Step193EarlyControlHistoryArena false 0 0 254 817 []=some s2Step193EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step193EarlyControl_sigmaOwned⟩
  · exact s2Step193EarlyControl_sigmaRelease

private theorem s2Step193EarlyControl_zeroBorrow : s2Step193EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step193EarlyControlLog.zeroWork=some s2Step193EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step193EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step193EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step193EarlyControlZeroArena,s2Step193EarlyControlArena,s2Step193EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step193EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step193EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step193EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193EarlyControl_zero : compileHmrEqualityLog s2Step193EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step193EarlyControlLog.zeroWork=some (s2Step193EarlyControlZeroArena,s2Step193EarlyControlLog.zeroWork,s2Step193EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step193EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step193EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step193EarlyControl_logged : s2Step193EarlyControlPlan.Logged s2Step193EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 817 254 253 252 251 822 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step193EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step193EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step193EarlyControl_zero
  · exact s2Step193EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step193EarlyControl_flags
  · exact s2Step193EarlyControl_fit
  · exact s2Step193EarlyControl_history
  · exact s2Step193EarlyControl_sigma
  · exact s2Step193EarlyControl_branch

private theorem s2Step193EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step193EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 817 254 253 252 251 822 43 s2Step193EarlyControlLog=some s2Step193EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step193EarlyControlPlan s2Step193EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 817 254 253 252 251 822 43 s2Step193EarlyControl_logged

private def s2Step193EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684],768⟩

private def s2Step193EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803],770⟩

private def s2Step193EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172],769⟩

private def s2Step193EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825],771⟩

private def s2Step193FrontBank : WindowBank := ⟨s2Step193EntryFRow,s2Step193EntryGRow,s2Step193EntryFvRow,s2Step193EntryGvRow⟩

private def s2Step193Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 807, 768]

private def s2Step193Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 827, 769]

private def s2Step193Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 770]

private def s2Step193Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 829, 771]

private theorem s2Step193Counter_apart : Disjoint s2Step193HeadFvAfter.live s2Step193CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step193HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193Counter_borrowed : s2Step193HeadFvAfter.checkBorrow 4 s2Step193CounterWork=some s2Step193CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step193HeadFvAfter s2Step193CounterDuring s2Step193CounterWork.toFinset s2Step193Counter_bounded s2Step193Counter_apart rfl

private theorem s2Step193Counter_owned : (817::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step193HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step193HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193Counter_checked : compileHmrCounterStepLog s2Step193HeadFvAfter true 817 [772, 773, 774, 775, 776, 777] s2Step193CounterWork=some s2Step193CounterDuring := by
  have owned : ∀q∈817::[772, 773, 774, 775, 776, 777],q∈s2Step193HeadFvAfter.live := fun q hq => s2Step193Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step193Counter_borrowed

private def s2Step193EntryFAfter : Arena := s2Step193EntryFBefore

private theorem s2Step193EntryBank_incomingDistinct : ([s2Step193EntryFRow,s2Step193EntryGRow,s2Step193EntryFvRow,s2Step193EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193EntryF_Incoming : rowsOwned s2Step193EntryFBefore [s2Step193EntryFRow,s2Step193EntryGRow,s2Step193EntryFvRow,s2Step193EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step193EntryFRow,s2Step193EntryGRow,s2Step193EntryFvRow,s2Step193EntryGvRow] 0 s2Step193EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step193EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step193EntryBank_outgoingOwned : rowsOwned s2Step193EntryGvAfter [s2Step193EntryFOut,s2Step193EntryGOut,s2Step193EntryFvOut,s2Step193EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step193EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step193EntryF_Outgoing : rowsOwned s2Step193EntryGvAfter [s2Step193EntryFOut,s2Step193EntryGOut,s2Step193EntryFvOut,s2Step193EntryGvOut] :=
  hmrRows_owned_drop s2Step193EntryGvAfter [s2Step193EntryFOut,s2Step193EntryGOut,s2Step193EntryFvOut,s2Step193EntryGvOut] 0 s2Step193EntryBank_outgoingOwned

private theorem s2Step193EntryF_distinct : (s2Step193EntryFRow.sign::s2Step193EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193EntryF_owned : (s2Step193EntryFRow.sign::s2Step193EntryFRow.payload).toFinset⊆s2Step193EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step193EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193EntryF_reserved : s2Step193EntryFBefore.reserve s2Step193EntryFFresh.toFinset=some s2Step193EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step193EntryFFresh,arenaWires]
  · norm_num [s2Step193EntryFBefore,s2Step193EntryFFresh,arenaWires]
  · simp only [s2Step193EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step193EntryF_checked : planRowResizeLog s2Step193EntryFBefore s2Step193EntryFRow 173 s2Step193EntryFFresh=
    some (s2Step193EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684],768⟩,growRow 768 s2Step193EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step193EntryFBefore s2Step193EntryFAfter s2Step193EntryFRow 173 s2Step193EntryFFresh
    s2Step193EntryF_distinct s2Step193EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step193EntryF_reserved
  have rowEq : WindowRow.mk (s2Step193EntryFRow.payload++s2Step193EntryFFresh) s2Step193EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step193EntryFvAfter : Arena := s2Step193EntryFBefore

private def s2Step193EntryFvBefore : Arena := s2Step193EntryFBefore

private theorem s2Step193EntryFv_Incoming : rowsOwned s2Step193EntryFvBefore [s2Step193EntryFvRow,s2Step193EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step193EntryFRow,s2Step193EntryGRow,s2Step193EntryFvRow,s2Step193EntryGvRow] 2 s2Step193EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step193EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step193EntryFv_Outgoing : rowsOwned s2Step193EntryGvAfter [s2Step193EntryFvOut,s2Step193EntryGvOut] :=
  hmrRows_owned_drop s2Step193EntryGvAfter [s2Step193EntryFOut,s2Step193EntryGOut,s2Step193EntryFvOut,s2Step193EntryGvOut] 2 s2Step193EntryBank_outgoingOwned

private theorem s2Step193EntryFv_distinct : (s2Step193EntryFvRow.sign::s2Step193EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193EntryFv_owned : (s2Step193EntryFvRow.sign::s2Step193EntryFvRow.payload).toFinset⊆s2Step193EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step193EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193EntryFv_reserved : s2Step193EntryFvBefore.reserve s2Step193EntryFvFresh.toFinset=some s2Step193EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step193EntryFvFresh,arenaWires]
  · norm_num [s2Step193EntryFvBefore,s2Step193EntryFBefore,s2Step193EntryFvFresh,arenaWires]
  · simp only [s2Step193EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step193EntryFv_checked : planRowResizeLog s2Step193EntryFvBefore s2Step193EntryFvRow 111 s2Step193EntryFvFresh=
    some (s2Step193EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803],770⟩,growRow 770 s2Step193EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step193EntryFvBefore s2Step193EntryFvAfter s2Step193EntryFvRow 111 s2Step193EntryFvFresh
    s2Step193EntryFv_distinct s2Step193EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step193EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step193EntryFvRow.payload++s2Step193EntryFvFresh) s2Step193EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step193EntryGAfter : Arena := s2Step193EntryFBefore

private def s2Step193EntryGBefore : Arena := s2Step193EntryFBefore

private theorem s2Step193EntryG_Incoming : rowsOwned s2Step193EntryGBefore [s2Step193EntryGRow,s2Step193EntryFvRow,s2Step193EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step193EntryFRow,s2Step193EntryGRow,s2Step193EntryFvRow,s2Step193EntryGvRow] 1 s2Step193EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step193EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step193EntryG_Outgoing : rowsOwned s2Step193EntryGvAfter [s2Step193EntryGOut,s2Step193EntryFvOut,s2Step193EntryGvOut] :=
  hmrRows_owned_drop s2Step193EntryGvAfter [s2Step193EntryFOut,s2Step193EntryGOut,s2Step193EntryFvOut,s2Step193EntryGvOut] 1 s2Step193EntryBank_outgoingOwned

private theorem s2Step193EntryG_distinct : (s2Step193EntryGRow.sign::s2Step193EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193EntryG_owned : (s2Step193EntryGRow.sign::s2Step193EntryGRow.payload).toFinset⊆s2Step193EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step193EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193EntryG_reserved : s2Step193EntryGBefore.reserve s2Step193EntryGFresh.toFinset=some s2Step193EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step193EntryGFresh,arenaWires]
  · norm_num [s2Step193EntryGBefore,s2Step193EntryFBefore,s2Step193EntryGFresh,arenaWires]
  · simp only [s2Step193EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step193EntryG_checked : planRowResizeLog s2Step193EntryGBefore s2Step193EntryGRow 173 s2Step193EntryGFresh=
    some (s2Step193EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172],769⟩,growRow 769 s2Step193EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step193EntryGBefore s2Step193EntryGAfter s2Step193EntryGRow 173 s2Step193EntryGFresh
    s2Step193EntryG_distinct s2Step193EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step193EntryG_reserved
  have rowEq : WindowRow.mk (s2Step193EntryGRow.payload++s2Step193EntryGFresh) s2Step193EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step193EntryGvBefore : Arena := s2Step193EntryFBefore

private theorem s2Step193EntryGv_Incoming : rowsOwned s2Step193EntryGvBefore [s2Step193EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step193EntryFRow,s2Step193EntryGRow,s2Step193EntryFvRow,s2Step193EntryGvRow] 3 s2Step193EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step193EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step193EntryGv_Outgoing : rowsOwned s2Step193EntryGvAfter [s2Step193EntryGvOut] :=
  hmrRows_owned_drop s2Step193EntryGvAfter [s2Step193EntryFOut,s2Step193EntryGOut,s2Step193EntryFvOut,s2Step193EntryGvOut] 3 s2Step193EntryBank_outgoingOwned

private theorem s2Step193EntryGv_distinct : (s2Step193EntryGvRow.sign::s2Step193EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193EntryGv_owned : (s2Step193EntryGvRow.sign::s2Step193EntryGvRow.payload).toFinset⊆s2Step193EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step193EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193EntryGv_reserved : s2Step193EntryGvBefore.reserve s2Step193EntryGvFresh.toFinset=some s2Step193EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step193EntryGvFresh,arenaWires]
  · norm_num [s2Step193EntryGvBefore,s2Step193EntryFBefore,s2Step193EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step193EntryGvAfter,s2Step193EntryGvBefore,s2Step193EntryFBefore,s2Step193EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step193EntryGv_checked : planRowResizeLog s2Step193EntryGvBefore s2Step193EntryGvRow 111 s2Step193EntryGvFresh=
    some (s2Step193EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782],771⟩,growRow 771 s2Step193EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step193EntryGvBefore s2Step193EntryGvAfter s2Step193EntryGvRow 111 s2Step193EntryGvFresh
    s2Step193EntryGv_distinct s2Step193EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step193EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step193EntryGvRow.payload++s2Step193EntryGvFresh) s2Step193EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step193EntryBank_rows : planWindowRowsLog s2Step193EntryFBefore [(s2Step193EntryFRow,173),(s2Step193EntryGRow,173),(s2Step193EntryFvRow,111),(s2Step193EntryGvRow,111)] [s2Step193EntryFFresh,s2Step193EntryGFresh,s2Step193EntryFvFresh,s2Step193EntryGvFresh]=
    some (s2Step193EntryGvAfter,[s2Step193EntryFOut,s2Step193EntryGOut,s2Step193EntryFvOut,s2Step193EntryGvOut],(growRow 768 s2Step193EntryFFresh ++ (growRow 769 s2Step193EntryGFresh ++ (growRow 770 s2Step193EntryFvFresh ++ (growRow 771 s2Step193EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step193EntryGvAfter [] []=some (s2Step193EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step193EntryGvBefore s2Step193EntryGvAfter s2Step193EntryGvAfter
    s2Step193EntryGvRow s2Step193EntryGvOut 111 s2Step193EntryGvFresh [] [] []
    (growRow 771 s2Step193EntryGvFresh) ([]) s2Step193EntryGv_Incoming s2Step193EntryGv_checked h4 s2Step193EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step193EntryFvBefore s2Step193EntryFvAfter s2Step193EntryGvAfter
    s2Step193EntryFvRow s2Step193EntryFvOut 111 s2Step193EntryFvFresh [(s2Step193EntryGvRow,111)] [s2Step193EntryGvFresh] [s2Step193EntryGvOut]
    (growRow 770 s2Step193EntryFvFresh) ((growRow 771 s2Step193EntryGvFresh ++ [])) s2Step193EntryFv_Incoming s2Step193EntryFv_checked h3 s2Step193EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step193EntryGBefore s2Step193EntryGAfter s2Step193EntryGvAfter
    s2Step193EntryGRow s2Step193EntryGOut 173 s2Step193EntryGFresh [(s2Step193EntryFvRow,111),(s2Step193EntryGvRow,111)] [s2Step193EntryFvFresh,s2Step193EntryGvFresh] [s2Step193EntryFvOut,s2Step193EntryGvOut]
    (growRow 769 s2Step193EntryGFresh) ((growRow 770 s2Step193EntryFvFresh ++ (growRow 771 s2Step193EntryGvFresh ++ []))) s2Step193EntryG_Incoming s2Step193EntryG_checked h2 s2Step193EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step193EntryFBefore s2Step193EntryFAfter s2Step193EntryGvAfter
    s2Step193EntryFRow s2Step193EntryFOut 173 s2Step193EntryFFresh [(s2Step193EntryGRow,173),(s2Step193EntryFvRow,111),(s2Step193EntryGvRow,111)] [s2Step193EntryGFresh,s2Step193EntryFvFresh,s2Step193EntryGvFresh] [s2Step193EntryGOut,s2Step193EntryFvOut,s2Step193EntryGvOut]
    (growRow 768 s2Step193EntryFFresh) ((growRow 769 s2Step193EntryGFresh ++ (growRow 770 s2Step193EntryFvFresh ++ (growRow 771 s2Step193EntryGvFresh ++ [])))) s2Step193EntryF_Incoming s2Step193EntryF_checked h1 s2Step193EntryF_Outgoing
  exact h0

private theorem s2Step193EntryBank_checked : compileHmrBankResizeLog .entry s2Step193EntryFBefore ⟨s2Step193EntryFRow,s2Step193EntryGRow,s2Step193EntryFvRow,s2Step193EntryGvRow⟩ ⟨173,173,111,111⟩ [s2Step193EntryFFresh,s2Step193EntryGFresh,s2Step193EntryFvFresh,s2Step193EntryGvFresh]=
    some (s2Step193EntryGvAfter,⟨s2Step193EntryFOut,s2Step193EntryGOut,s2Step193EntryFvOut,s2Step193EntryGvOut⟩,(growRow 768 s2Step193EntryFFresh ++ (growRow 769 s2Step193EntryGFresh ++ (growRow 770 s2Step193EntryFvFresh ++ (growRow 771 s2Step193EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step193EntryBank_rows]
  rfl

private def s2Step193ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<172) ∨ (173≤q ∧ q<684) ∨ (685≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<172) ∨ (173≤q ∧ q<794) ∨ (795≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193ExitFBefore : Arena := s2Step193ExitGAfter

private def s2Step193ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 807],768⟩

private def s2Step193ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784],770⟩

private def s2Step193ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 827],769⟩

private def s2Step193ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 829],771⟩

private theorem s2Step193ExitBank_incomingDistinct : ([s2Step193ExitGRow,s2Step193ExitFRow,s2Step193ExitFvRow,s2Step193ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193ExitF_Incoming : rowsOwned s2Step193ExitFBefore [s2Step193ExitFRow,s2Step193ExitFvRow,s2Step193ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step193ExitGRow,s2Step193ExitFRow,s2Step193ExitFvRow,s2Step193ExitGvRow] 1 s2Step193ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step193ExitFBefore (fun q => (0≤q ∧ q<172) ∨ (173≤q ∧ q<794) ∨ (795≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step193ExitBank_outgoingOwned : rowsOwned s2Step193ExitGvAfter [s2Step193ExitGOut,s2Step193ExitFOut,s2Step193ExitFvOut,s2Step193ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step193ExitGvAfter (fun q => (0≤q ∧ q<172) ∨ (173≤q ∧ q<684) ∨ (685≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step193ExitF_Outgoing : rowsOwned s2Step193ExitGvAfter [s2Step193ExitFOut,s2Step193ExitFvOut,s2Step193ExitGvOut] :=
  hmrRows_owned_drop s2Step193ExitGvAfter [s2Step193ExitGOut,s2Step193ExitFOut,s2Step193ExitFvOut,s2Step193ExitGvOut] 1 s2Step193ExitBank_outgoingOwned

private theorem s2Step193ExitF_distinct : (s2Step193ExitFRow.sign::s2Step193ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193ExitF_owned : (s2Step193ExitFRow.sign::s2Step193ExitFRow.payload).toFinset⊆s2Step193ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step193ExitFBefore (fun q => (0≤q ∧ q<172) ∨ (173≤q ∧ q<794) ∨ (795≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193ExitF_retired : s2Step193ExitFBefore.retireSet s2Step193ExitFExtra.toFinset=s2Step193ExitFAfter := by
  unfold Arena.retireSet s2Step193ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step193ExitFBefore,s2Step193ExitGAfter,s2Step193ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step193ExitF_checked : planRowResizeLog s2Step193ExitFBefore s2Step193ExitFRow 172 []=
    some (s2Step193ExitFAfter,s2Step193ExitFOut,shrinkRow 768 s2Step193ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step193ExitFBefore s2Step193ExitFRow 172 s2Step193ExitF_distinct s2Step193ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step193ExitFRow.payload.take 172) s2Step193ExitFRow.sign=s2Step193ExitFOut := by decide +kernel
  have hi : s2Step193ExitFRow.payload.drop 172=s2Step193ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step193ExitF_retired] at result
  exact result

private def s2Step193ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<172) ∨ (173≤q ∧ q<684) ∨ (685≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193ExitFvBefore : Arena := s2Step193ExitFAfter

private theorem s2Step193ExitFv_Incoming : rowsOwned s2Step193ExitFvBefore [s2Step193ExitFvRow,s2Step193ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step193ExitGRow,s2Step193ExitFRow,s2Step193ExitFvRow,s2Step193ExitGvRow] 2 s2Step193ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step193ExitFvBefore (fun q => (0≤q ∧ q<172) ∨ (173≤q ∧ q<684) ∨ (685≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step193ExitFv_Outgoing : rowsOwned s2Step193ExitGvAfter [s2Step193ExitFvOut,s2Step193ExitGvOut] :=
  hmrRows_owned_drop s2Step193ExitGvAfter [s2Step193ExitGOut,s2Step193ExitFOut,s2Step193ExitFvOut,s2Step193ExitGvOut] 2 s2Step193ExitBank_outgoingOwned

private theorem s2Step193ExitFv_distinct : (s2Step193ExitFvRow.sign::s2Step193ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193ExitFv_owned : (s2Step193ExitFvRow.sign::s2Step193ExitFvRow.payload).toFinset⊆s2Step193ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step193ExitFvBefore (fun q => (0≤q ∧ q<172) ∨ (173≤q ∧ q<684) ∨ (685≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193ExitFv_retired : s2Step193ExitFvBefore.retireSet s2Step193ExitFvExtra.toFinset=s2Step193ExitFvAfter := by
  unfold Arena.retireSet s2Step193ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step193ExitFvBefore,s2Step193ExitFAfter,s2Step193ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step193ExitFv_checked : planRowResizeLog s2Step193ExitFvBefore s2Step193ExitFvRow 111 []=
    some (s2Step193ExitFvAfter,s2Step193ExitFvOut,shrinkRow 770 s2Step193ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step193ExitFvBefore s2Step193ExitFvRow 111 s2Step193ExitFv_distinct s2Step193ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step193ExitFvRow.payload.take 111) s2Step193ExitFvRow.sign=s2Step193ExitFvOut := by decide +kernel
  have hi : s2Step193ExitFvRow.payload.drop 111=s2Step193ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step193ExitFv_retired] at result
  exact result

private def s2Step193ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step193ExitG_Incoming : rowsOwned s2Step193ExitGBefore [s2Step193ExitGRow,s2Step193ExitFRow,s2Step193ExitFvRow,s2Step193ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step193ExitGRow,s2Step193ExitFRow,s2Step193ExitFvRow,s2Step193ExitGvRow] 0 s2Step193ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step193ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step193ExitG_Outgoing : rowsOwned s2Step193ExitGvAfter [s2Step193ExitGOut,s2Step193ExitFOut,s2Step193ExitFvOut,s2Step193ExitGvOut] :=
  hmrRows_owned_drop s2Step193ExitGvAfter [s2Step193ExitGOut,s2Step193ExitFOut,s2Step193ExitFvOut,s2Step193ExitGvOut] 0 s2Step193ExitBank_outgoingOwned

private theorem s2Step193ExitG_distinct : (s2Step193ExitGRow.sign::s2Step193ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193ExitG_owned : (s2Step193ExitGRow.sign::s2Step193ExitGRow.payload).toFinset⊆s2Step193ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step193ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193ExitG_retired : s2Step193ExitGBefore.retireSet s2Step193ExitGExtra.toFinset=s2Step193ExitGAfter := by
  unfold Arena.retireSet s2Step193ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step193ExitGBefore,s2Step193ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step193ExitG_checked : planRowResizeLog s2Step193ExitGBefore s2Step193ExitGRow 172 []=
    some (s2Step193ExitGAfter,s2Step193ExitGOut,shrinkRow 769 s2Step193ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step193ExitGBefore s2Step193ExitGRow 172 s2Step193ExitG_distinct s2Step193ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step193ExitGRow.payload.take 172) s2Step193ExitGRow.sign=s2Step193ExitGOut := by decide +kernel
  have hi : s2Step193ExitGRow.payload.drop 172=s2Step193ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step193ExitG_retired] at result
  exact result

private def s2Step193ExitGvBefore : Arena := s2Step193ExitFvAfter

private theorem s2Step193ExitGv_Incoming : rowsOwned s2Step193ExitGvBefore [s2Step193ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step193ExitGRow,s2Step193ExitFRow,s2Step193ExitFvRow,s2Step193ExitGvRow] 3 s2Step193ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step193ExitGvBefore (fun q => (0≤q ∧ q<172) ∨ (173≤q ∧ q<684) ∨ (685≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step193ExitGv_Outgoing : rowsOwned s2Step193ExitGvAfter [s2Step193ExitGvOut] :=
  hmrRows_owned_drop s2Step193ExitGvAfter [s2Step193ExitGOut,s2Step193ExitFOut,s2Step193ExitFvOut,s2Step193ExitGvOut] 3 s2Step193ExitBank_outgoingOwned

private theorem s2Step193ExitGv_distinct : (s2Step193ExitGvRow.sign::s2Step193ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193ExitGv_owned : (s2Step193ExitGvRow.sign::s2Step193ExitGvRow.payload).toFinset⊆s2Step193ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step193ExitGvBefore (fun q => (0≤q ∧ q<172) ∨ (173≤q ∧ q<684) ∨ (685≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193ExitGv_retired : s2Step193ExitGvBefore.retireSet s2Step193ExitGvExtra.toFinset=s2Step193ExitGvAfter := by
  unfold Arena.retireSet s2Step193ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step193ExitGvBefore,s2Step193ExitFvAfter,s2Step193ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step193ExitGv_checked : planRowResizeLog s2Step193ExitGvBefore s2Step193ExitGvRow 111 []=
    some (s2Step193ExitGvAfter,s2Step193ExitGvOut,shrinkRow 771 s2Step193ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step193ExitGvBefore s2Step193ExitGvRow 111 s2Step193ExitGv_distinct s2Step193ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step193ExitGvRow.payload.take 111) s2Step193ExitGvRow.sign=s2Step193ExitGvOut := by decide +kernel
  have hi : s2Step193ExitGvRow.payload.drop 111=s2Step193ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step193ExitGv_retired] at result
  exact result

private theorem s2Step193ExitBank_rows : planWindowRowsLog s2Step193ExitGBefore [(s2Step193ExitGRow,172),(s2Step193ExitFRow,172),(s2Step193ExitFvRow,111),(s2Step193ExitGvRow,111)] [[],[],[],[]]=
    some (s2Step193ExitGvAfter,[s2Step193ExitGOut,s2Step193ExitFOut,s2Step193ExitFvOut,s2Step193ExitGvOut],(shrinkRow 769 s2Step193ExitGExtra ++ (shrinkRow 768 s2Step193ExitFExtra ++ (shrinkRow 770 s2Step193ExitFvExtra ++ (shrinkRow 771 s2Step193ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step193ExitGvAfter [] []=some (s2Step193ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step193ExitGvBefore s2Step193ExitGvAfter s2Step193ExitGvAfter
    s2Step193ExitGvRow s2Step193ExitGvOut 111 [] [] [] []
    (shrinkRow 771 s2Step193ExitGvExtra) ([]) s2Step193ExitGv_Incoming s2Step193ExitGv_checked h4 s2Step193ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step193ExitFvBefore s2Step193ExitFvAfter s2Step193ExitGvAfter
    s2Step193ExitFvRow s2Step193ExitFvOut 111 [] [(s2Step193ExitGvRow,111)] [[]] [s2Step193ExitGvOut]
    (shrinkRow 770 s2Step193ExitFvExtra) ((shrinkRow 771 s2Step193ExitGvExtra ++ [])) s2Step193ExitFv_Incoming s2Step193ExitFv_checked h3 s2Step193ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step193ExitFBefore s2Step193ExitFAfter s2Step193ExitGvAfter
    s2Step193ExitFRow s2Step193ExitFOut 172 [] [(s2Step193ExitFvRow,111),(s2Step193ExitGvRow,111)] [[],[]] [s2Step193ExitFvOut,s2Step193ExitGvOut]
    (shrinkRow 768 s2Step193ExitFExtra) ((shrinkRow 770 s2Step193ExitFvExtra ++ (shrinkRow 771 s2Step193ExitGvExtra ++ []))) s2Step193ExitF_Incoming s2Step193ExitF_checked h2 s2Step193ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step193ExitGBefore s2Step193ExitGAfter s2Step193ExitGvAfter
    s2Step193ExitGRow s2Step193ExitGOut 172 [] [(s2Step193ExitFRow,172),(s2Step193ExitFvRow,111),(s2Step193ExitGvRow,111)] [[],[],[]] [s2Step193ExitFOut,s2Step193ExitFvOut,s2Step193ExitGvOut]
    (shrinkRow 769 s2Step193ExitGExtra) ((shrinkRow 768 s2Step193ExitFExtra ++ (shrinkRow 770 s2Step193ExitFvExtra ++ (shrinkRow 771 s2Step193ExitGvExtra ++ [])))) s2Step193ExitG_Incoming s2Step193ExitG_checked h1 s2Step193ExitG_Outgoing
  exact h0

private theorem s2Step193ExitBank_checked : compileHmrBankResizeLog .exit s2Step193ExitGBefore ⟨s2Step193ExitFRow,s2Step193ExitGRow,s2Step193ExitFvRow,s2Step193ExitGvRow⟩ ⟨172,172,111,111⟩ [[],[],[],[]]=
    some (s2Step193ExitGvAfter,⟨s2Step193ExitFOut,s2Step193ExitGOut,s2Step193ExitFvOut,s2Step193ExitGvOut⟩,(shrinkRow 769 s2Step193ExitGExtra ++ (shrinkRow 768 s2Step193ExitFExtra ++ (shrinkRow 770 s2Step193ExitFvExtra ++ (shrinkRow 771 s2Step193ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step193ExitBank_rows]
  rfl

private theorem s2Step193Add0_apart : Disjoint s2Step193Add0Arena.live s2Step193Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step193Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193Add0_card : s2Step193Add0Arena.live.card=885 := by
  decide +kernel

private theorem s2Step193Add0_borrowed : s2Step193Add0Arena.checkBorrow (hmrHybridCount s2Step193Add0Arena s2Step193Add0B.length) s2Step193Add0Work=some s2Step193Add0During := by
  have len : s2Step193Add0Work.length=hmrHybridCount s2Step193Add0Arena s2Step193Add0B.length := by
    rw [hmrHybridCount,s2Step193Add0_card]
    decide +kernel
  have nd : s2Step193Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step193Add0Arena s2Step193Add0During s2Step193Add0Work.toFinset s2Step193Add0_bounded s2Step193Add0_apart rfl

private theorem s2Step193Add0_distinct : (840::822::794::(s2Step193Add0A++s2Step193Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193Add0_owned : (840::822::794::(s2Step193Add0A++s2Step193Add0B)).toFinset⊆s2Step193Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step193Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193Add0_checked : compileHmrHybridCinLog s2Step193Add0Arena 822 840 794 s2Step193Add0A s2Step193Add0B s2Step193Add0Work=some s2Step193Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step193Add0Arena s2Step193Add0During 822 840 794 s2Step193Add0A s2Step193Add0B s2Step193Add0Work
    (by decide +kernel) (by decide +kernel) s2Step193Add0_distinct
    (fun q hq => s2Step193Add0_owned (List.mem_toFinset.mpr hq)) s2Step193Add0_borrowed

private theorem s2Step193Add1_apart : Disjoint s2Step193Add1Arena.live s2Step193Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step193Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193Add1_card : s2Step193Add1Arena.live.card=885 := by
  decide +kernel

private theorem s2Step193Add1_borrowed : s2Step193Add1Arena.checkBorrow (hmrHybridCount s2Step193Add1Arena s2Step193Add1B.length) s2Step193Add1Work=some s2Step193Add1During := by
  have len : s2Step193Add1Work.length=hmrHybridCount s2Step193Add1Arena s2Step193Add1B.length := by
    rw [hmrHybridCount,s2Step193Add1_card]
    decide +kernel
  have nd : s2Step193Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step193Add1Arena s2Step193Add1During s2Step193Add1Work.toFinset s2Step193Add1_bounded s2Step193Add1_apart rfl

private theorem s2Step193Add1_distinct : (840::822::794::(s2Step193Add1A++s2Step193Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193Add1_owned : (840::822::794::(s2Step193Add1A++s2Step193Add1B)).toFinset⊆s2Step193Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step193Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193Add1_checked : compileHmrHybridCinLog s2Step193Add1Arena 822 840 794 s2Step193Add1A s2Step193Add1B s2Step193Add1Work=some s2Step193Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step193Add1Arena s2Step193Add1During 822 840 794 s2Step193Add1A s2Step193Add1B s2Step193Add1Work
    (by decide +kernel) (by decide +kernel) s2Step193Add1_distinct
    (fun q hq => s2Step193Add1_owned (List.mem_toFinset.mpr hq)) s2Step193Add1_borrowed

private theorem s2Step193F4_apart : Disjoint (s2Step193Add0A++s2Step193Add0B).toFinset (s2Step193Add1A++s2Step193Add1B).toFinset := by
  have nd : ((s2Step193Add0A++s2Step193Add0B)++(s2Step193Add1A++s2Step193Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step193F4_carry : s2Step193F4FlagArena.checkBorrow 1 [794]=some s2Step193Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step193F4FlagArena,s2Step193HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step193F4FlagArena,s2Step193HeadFvAfter,s2Step193Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step193F4_distinct : (817::822::840::794::((s2Step193Add0A++s2Step193Add1A)++(s2Step193Add0B++s2Step193Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193F4_flag : s2Step193HeadFvAfter.checkBorrow 1 [840]=some s2Step193F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step193HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step193F4_owned : (817::822::((s2Step193Add0A++s2Step193Add1A)++(s2Step193Add0B++s2Step193Add1B))).toFinset⊆s2Step193HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step193HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193F4_checked : compileHmrHybridF4Log s2Step193HeadFvAfter 817 822 s2Step193Add0A s2Step193Add0B s2Step193Add1A s2Step193Add1B [840] [794] s2Step193Add0Work s2Step193Add1Work=some s2Step193F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step193HeadFvAfter s2Step193F4FlagArena s2Step193Add0Arena s2Step193Add0During s2Step193Add1During 817 822
    s2Step193Add0A s2Step193Add0B s2Step193Add1A s2Step193Add1B [840] [794] s2Step193Add0Work s2Step193Add1Work
    (fun q hq => s2Step193F4_owned (List.mem_toFinset.mpr hq)) s2Step193F4_flag s2Step193F4_carry
    s2Step193F4_distinct s2Step193F4_apart s2Step193Add0_checked s2Step193Add1_checked

private theorem s2Step193Front_branch : s2Step193FrontSigmaArena.checkBorrow 1 [822]=some s2Step193HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step193FrontSigmaArena,s2Step193EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step193FrontSigmaArena,s2Step193EntryGvAfter,s2Step193HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step193Front_entry : HmrFrontEntryValid s2Step193EntryFBefore s2Step193FrontBank 173 111 ⟨172,172,111,111⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step193FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step193EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step193EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step193FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step193Front_sigma : s2Step193EntryGvAfter.checkBorrow 1 [817]=some s2Step193FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step193EntryGvAfter,arenaWires]
  · rfl

private def s2Step193HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193HeadFBefore : Arena := s2Step193HeadGAfter

private def s2Step193HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684],768⟩

private def s2Step193HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803],770⟩

private def s2Step193HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172],769⟩

private def s2Step193HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782],771⟩

private theorem s2Step193HeadBank_incomingDistinct : ([s2Step193HeadGRow,s2Step193HeadFRow,s2Step193HeadGvRow,s2Step193HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193HeadF_Incoming : rowsOwned s2Step193HeadFBefore [s2Step193HeadFRow,s2Step193HeadGvRow,s2Step193HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step193HeadGRow,s2Step193HeadFRow,s2Step193HeadGvRow,s2Step193HeadFvRow] 1 s2Step193HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step193HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step193HeadBank_outgoingOwned : rowsOwned s2Step193HeadFvAfter [s2Step193HeadGOut,s2Step193HeadFOut,s2Step193HeadGvOut,s2Step193HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step193HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step193HeadF_Outgoing : rowsOwned s2Step193HeadFvAfter [s2Step193HeadFOut,s2Step193HeadGvOut,s2Step193HeadFvOut] :=
  hmrRows_owned_drop s2Step193HeadFvAfter [s2Step193HeadGOut,s2Step193HeadFOut,s2Step193HeadGvOut,s2Step193HeadFvOut] 1 s2Step193HeadBank_outgoingOwned

private theorem s2Step193HeadF_distinct : (s2Step193HeadFRow.sign::s2Step193HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193HeadF_owned : (s2Step193HeadFRow.sign::s2Step193HeadFRow.payload).toFinset⊆s2Step193HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step193HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193HeadF_reserved : s2Step193HeadFBefore.reserve s2Step193HeadFFresh.toFinset=some s2Step193HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step193HeadFFresh,arenaWires]
  · norm_num [s2Step193HeadFBefore,s2Step193HeadGAfter,s2Step193HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step193HeadFAfter,s2Step193HeadFBefore,s2Step193HeadGAfter,s2Step193HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step193HeadF_checked : planRowResizeLog s2Step193HeadFBefore s2Step193HeadFRow 174 s2Step193HeadFFresh=
    some (s2Step193HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 807],768⟩,growRow 768 s2Step193HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step193HeadFBefore s2Step193HeadFAfter s2Step193HeadFRow 174 s2Step193HeadFFresh
    s2Step193HeadF_distinct s2Step193HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step193HeadF_reserved
  have rowEq : WindowRow.mk (s2Step193HeadFRow.payload++s2Step193HeadFFresh) s2Step193HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 807],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step193HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step193HeadFvBefore : Arena := s2Step193HeadGvAfter

private theorem s2Step193HeadFv_Incoming : rowsOwned s2Step193HeadFvBefore [s2Step193HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step193HeadGRow,s2Step193HeadFRow,s2Step193HeadGvRow,s2Step193HeadFvRow] 3 s2Step193HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step193HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step193HeadFv_Outgoing : rowsOwned s2Step193HeadFvAfter [s2Step193HeadFvOut] :=
  hmrRows_owned_drop s2Step193HeadFvAfter [s2Step193HeadGOut,s2Step193HeadFOut,s2Step193HeadGvOut,s2Step193HeadFvOut] 3 s2Step193HeadBank_outgoingOwned

private theorem s2Step193HeadFv_distinct : (s2Step193HeadFvRow.sign::s2Step193HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193HeadFv_owned : (s2Step193HeadFvRow.sign::s2Step193HeadFvRow.payload).toFinset⊆s2Step193HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step193HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193HeadFv_reserved : s2Step193HeadFvBefore.reserve s2Step193HeadFvFresh.toFinset=some s2Step193HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step193HeadFvFresh,arenaWires]
  · norm_num [s2Step193HeadFvBefore,s2Step193HeadGvAfter,s2Step193HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step193HeadFvAfter,s2Step193HeadFvBefore,s2Step193HeadGvAfter,s2Step193HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step193HeadFv_checked : planRowResizeLog s2Step193HeadFvBefore s2Step193HeadFvRow 112 s2Step193HeadFvFresh=
    some (s2Step193HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784],770⟩,growRow 770 s2Step193HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step193HeadFvBefore s2Step193HeadFvAfter s2Step193HeadFvRow 112 s2Step193HeadFvFresh
    s2Step193HeadFv_distinct s2Step193HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step193HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step193HeadFvRow.payload++s2Step193HeadFvFresh) s2Step193HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step193HeadG_Incoming : rowsOwned s2Step193HeadGBefore [s2Step193HeadGRow,s2Step193HeadFRow,s2Step193HeadGvRow,s2Step193HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step193HeadGRow,s2Step193HeadFRow,s2Step193HeadGvRow,s2Step193HeadFvRow] 0 s2Step193HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step193HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step193HeadG_Outgoing : rowsOwned s2Step193HeadFvAfter [s2Step193HeadGOut,s2Step193HeadFOut,s2Step193HeadGvOut,s2Step193HeadFvOut] :=
  hmrRows_owned_drop s2Step193HeadFvAfter [s2Step193HeadGOut,s2Step193HeadFOut,s2Step193HeadGvOut,s2Step193HeadFvOut] 0 s2Step193HeadBank_outgoingOwned

private theorem s2Step193HeadG_distinct : (s2Step193HeadGRow.sign::s2Step193HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193HeadG_owned : (s2Step193HeadGRow.sign::s2Step193HeadGRow.payload).toFinset⊆s2Step193HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step193HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193HeadG_reserved : s2Step193HeadGBefore.reserve s2Step193HeadGFresh.toFinset=some s2Step193HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step193HeadGFresh,arenaWires]
  · norm_num [s2Step193HeadGBefore,s2Step193HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step193HeadGAfter,s2Step193HeadGBefore,s2Step193HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step193HeadG_checked : planRowResizeLog s2Step193HeadGBefore s2Step193HeadGRow 174 s2Step193HeadGFresh=
    some (s2Step193HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 827],769⟩,growRow 769 s2Step193HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step193HeadGBefore s2Step193HeadGAfter s2Step193HeadGRow 174 s2Step193HeadGFresh
    s2Step193HeadG_distinct s2Step193HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step193HeadG_reserved
  have rowEq : WindowRow.mk (s2Step193HeadGRow.payload++s2Step193HeadGFresh) s2Step193HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 827],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step193HeadGvBefore : Arena := s2Step193HeadFAfter

private theorem s2Step193HeadGv_Incoming : rowsOwned s2Step193HeadGvBefore [s2Step193HeadGvRow,s2Step193HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step193HeadGRow,s2Step193HeadFRow,s2Step193HeadGvRow,s2Step193HeadFvRow] 2 s2Step193HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step193HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step193HeadGv_Outgoing : rowsOwned s2Step193HeadFvAfter [s2Step193HeadGvOut,s2Step193HeadFvOut] :=
  hmrRows_owned_drop s2Step193HeadFvAfter [s2Step193HeadGOut,s2Step193HeadFOut,s2Step193HeadGvOut,s2Step193HeadFvOut] 2 s2Step193HeadBank_outgoingOwned

private theorem s2Step193HeadGv_distinct : (s2Step193HeadGvRow.sign::s2Step193HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step193HeadGv_owned : (s2Step193HeadGvRow.sign::s2Step193HeadGvRow.payload).toFinset⊆s2Step193HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step193HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step193HeadGv_reserved : s2Step193HeadGvBefore.reserve s2Step193HeadGvFresh.toFinset=some s2Step193HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step193HeadGvFresh,arenaWires]
  · norm_num [s2Step193HeadGvBefore,s2Step193HeadFAfter,s2Step193HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step193HeadGvAfter,s2Step193HeadGvBefore,s2Step193HeadFAfter,s2Step193HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step193HeadGv_checked : planRowResizeLog s2Step193HeadGvBefore s2Step193HeadGvRow 112 s2Step193HeadGvFresh=
    some (s2Step193HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 829],771⟩,growRow 771 s2Step193HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step193HeadGvBefore s2Step193HeadGvAfter s2Step193HeadGvRow 112 s2Step193HeadGvFresh
    s2Step193HeadGv_distinct s2Step193HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step193HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step193HeadGvRow.payload++s2Step193HeadGvFresh) s2Step193HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 829],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step193HeadBank_rows : planWindowRowsLog s2Step193HeadGBefore [(s2Step193HeadGRow,174),(s2Step193HeadFRow,174),(s2Step193HeadGvRow,112),(s2Step193HeadFvRow,112)] [s2Step193HeadGFresh,s2Step193HeadFFresh,s2Step193HeadGvFresh,s2Step193HeadFvFresh]=
    some (s2Step193HeadFvAfter,[s2Step193HeadGOut,s2Step193HeadFOut,s2Step193HeadGvOut,s2Step193HeadFvOut],(growRow 769 s2Step193HeadGFresh ++ (growRow 768 s2Step193HeadFFresh ++ (growRow 771 s2Step193HeadGvFresh ++ (growRow 770 s2Step193HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step193HeadFvAfter [] []=some (s2Step193HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step193HeadFvBefore s2Step193HeadFvAfter s2Step193HeadFvAfter
    s2Step193HeadFvRow s2Step193HeadFvOut 112 s2Step193HeadFvFresh [] [] []
    (growRow 770 s2Step193HeadFvFresh) ([]) s2Step193HeadFv_Incoming s2Step193HeadFv_checked h4 s2Step193HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step193HeadGvBefore s2Step193HeadGvAfter s2Step193HeadFvAfter
    s2Step193HeadGvRow s2Step193HeadGvOut 112 s2Step193HeadGvFresh [(s2Step193HeadFvRow,112)] [s2Step193HeadFvFresh] [s2Step193HeadFvOut]
    (growRow 771 s2Step193HeadGvFresh) ((growRow 770 s2Step193HeadFvFresh ++ [])) s2Step193HeadGv_Incoming s2Step193HeadGv_checked h3 s2Step193HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step193HeadFBefore s2Step193HeadFAfter s2Step193HeadFvAfter
    s2Step193HeadFRow s2Step193HeadFOut 174 s2Step193HeadFFresh [(s2Step193HeadGvRow,112),(s2Step193HeadFvRow,112)] [s2Step193HeadGvFresh,s2Step193HeadFvFresh] [s2Step193HeadGvOut,s2Step193HeadFvOut]
    (growRow 768 s2Step193HeadFFresh) ((growRow 771 s2Step193HeadGvFresh ++ (growRow 770 s2Step193HeadFvFresh ++ []))) s2Step193HeadF_Incoming s2Step193HeadF_checked h2 s2Step193HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step193HeadGBefore s2Step193HeadGAfter s2Step193HeadFvAfter
    s2Step193HeadGRow s2Step193HeadGOut 174 s2Step193HeadGFresh [(s2Step193HeadFRow,174),(s2Step193HeadGvRow,112),(s2Step193HeadFvRow,112)] [s2Step193HeadFFresh,s2Step193HeadGvFresh,s2Step193HeadFvFresh] [s2Step193HeadFOut,s2Step193HeadGvOut,s2Step193HeadFvOut]
    (growRow 769 s2Step193HeadGFresh) ((growRow 768 s2Step193HeadFFresh ++ (growRow 771 s2Step193HeadGvFresh ++ (growRow 770 s2Step193HeadFvFresh ++ [])))) s2Step193HeadG_Incoming s2Step193HeadG_checked h1 s2Step193HeadG_Outgoing
  exact h0

private theorem s2Step193HeadBank_checked : compileHmrBankResizeLog .headroom s2Step193HeadGBefore ⟨s2Step193HeadFRow,s2Step193HeadGRow,s2Step193HeadFvRow,s2Step193HeadGvRow⟩ ⟨174,174,112,112⟩ [s2Step193HeadGFresh,s2Step193HeadFFresh,s2Step193HeadGvFresh,s2Step193HeadFvFresh]=
    some (s2Step193HeadFvAfter,⟨s2Step193HeadFOut,s2Step193HeadGOut,s2Step193HeadFvOut,s2Step193HeadGvOut⟩,(growRow 769 s2Step193HeadGFresh ++ (growRow 768 s2Step193HeadFFresh ++ (growRow 771 s2Step193HeadGvFresh ++ (growRow 770 s2Step193HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step193HeadBank_rows]
  rfl

private theorem s2Step193Front_checked : compileHmrSourceFrontLog s2Step193EntryFBefore s2Step193FrontBank 173 111 ⟨172,172,111,111⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step193FrontLog=some s2Step193FrontPlan := by
  have pairEq : s2Step193FrontPair=⟨s2Step193HeadFRow,s2Step193HeadGRow,s2Step193HeadFvRow,s2Step193HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step193FrontHead=⟨s2Step193ExitFRow,s2Step193ExitGRow,s2Step193ExitFvRow,s2Step193ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step193Add0A=s2Step193FrontHead.f.wires := by decide +kernel
  have gEq : s2Step193Add0B=s2Step193FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step193Add1A=s2Step193FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step193Add1B=s2Step193FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step193EntryFBefore s2Step193FrontBank 173 111 ⟨172,172,111,111⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step193FrontLog s2Step193FrontPlan
  · exact s2Step193Front_entry
  · exact s2Step193EntryBank_checked
  · exact s2Step193Front_sigma
  · rfl
  · exact s2Step193Front_branch
  · rfl
  · simpa only [s2Step193FrontPlan,pairEq] using s2Step193HeadBank_checked
  · simpa only [s2Step193FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step193F4_checked
  · exact s2Step193Counter_checked
  · rfl
  · simpa only [s2Step193FrontPlan,headEq] using s2Step193ExitBank_checked

private theorem s2Step193Complete_explicit_checked : compileHmrEarlyStepLog s2Step193EntryFBefore s2Step193FrontBank 173 111 ⟨172,172,111,111⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step193CompleteLog=some s2Step193CompletePlan := by
  let Q := s2Step193EarlyControlPlan
  have hq := s2Step193EarlyControl_plan_checked
  have fv1 : s2Step193CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step193CompleteOut.fv.payload[2]?.getD s2Step193CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step193CompleteOut.fv.payload[3]?.getD s2Step193CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step193CompleteOut.fv.payload[4]?.getD s2Step193CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step193EntryFBefore s2Step193EarlyControlArena s2Step193FrontBank 173 111 ⟨172,172,111,111⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 43 s2Step193CompleteLog s2Step193FrontPlan Q
    s2Step193Front_checked s2Step193Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step193Complete_owned s2Step193Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step193EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 817 s2Step193CompleteOut.fv.second (s2Step193CompleteOut.fv.payload[2]?.getD s2Step193CompleteOut.fv.sign) (s2Step193CompleteOut.fv.payload[3]?.getD s2Step193CompleteOut.fv.sign) (s2Step193CompleteOut.fv.payload[4]?.getD s2Step193CompleteOut.fv.sign) 822 43 s2Step193EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep193Arena : Arena := s2Step193EntryFBefore
def s2PrivateStep193Bank : WindowBank := s2Step193FrontBank
def s2PrivateStep193Spec : HmrSourceWalkStepLog := ⟨173,111,⟨172,172,111,111⟩,43,.early s2Step193CompleteLog⟩
def s2PrivateStep193Plan : HmrSourceStepPlan := .early s2Step193CompletePlan
theorem s2PrivateStep193_source : s2PrivateStep193Spec=s2ObservedLogs192[1] := rfl
theorem s2PrivateStep193_checked : compileHmrSourceStepLog s2PrivateStep193Arena s2PrivateStep193Bank
    s2PrivateStep193Spec.fgWidth s2PrivateStep193Spec.vWidth s2PrivateStep193Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]
    6 498 193 s2PrivateStep193Spec.need none s2PrivateStep193Spec.log=some s2PrivateStep193Plan := by
  change compileHmrSourceStepLog s2Step193EntryFBefore s2Step193FrontBank 173 111 ⟨172,172,111,111⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 6 498 193 43 none (.early s2Step193CompleteLog)=some (.early s2Step193CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 193<498)]
  rw [s2Step193Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
