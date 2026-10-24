import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep192
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

private def s2Step194CompleteMoves : List (Wire × Wire) := [(837,171)]

private def s2Step194EarlyControlLog : HmrEarlyControlLog := ⟨[837, 829, 826, 814, 807],[827],[840],[794, 867, 877, 879, 882, 885],[890]⟩

private def s2Step194FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[814], [826], [829], [784]],[[], [], [], []]⟩,[822],[817],[807],[827],[840, 794, 867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[840, 794, 867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[807, 827, 840, 794]⟩

private def s2Step194CompleteLog : HmrEarlyStepLog := ⟨s2Step194FrontLog,s2Step194CompleteMoves,s2Step194EarlyControlLog⟩

private def s2Step194ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩

private def s2Step194ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784],770⟩

private def s2Step194ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170],769⟩

private def s2Step194ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782],771⟩

private def s2Step194FrontOut : WindowBank := ⟨s2Step194ExitFOut,s2Step194ExitGOut,s2Step194ExitFvOut,s2Step194ExitGvOut⟩

private def s2Step194CompleteOut : WindowBank := s2Step194FrontOut.repacked s2Step194CompleteMoves

private def s2Step194EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step194EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step194EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step194EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step194EarlyControlPositiveArena,[827],s2Step194EarlyControlEqualityArena,[840],⟨⟨822,false⟩,[⟨⟨827,false⟩,840⟩]⟩⟩

private def s2Step194EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step194EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step194EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step194EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step194EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step194EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step194EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,837⟩,⟨⟨774,false⟩,829⟩,⟨⟨775,false⟩,826⟩,⟨⟨776,false⟩,814⟩,⟨⟨777,false⟩,807⟩]⟩

private def s2Step194EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step194EarlyControlZeroArena,s2Step194EarlyControlZeroPlan,s2Step194EarlyControlClassPlan,s2Step194EarlyControlFlagArena,s2Step194EarlyControlFittedArena,s2Step194EarlyControlHistoryArena,s2Step194EarlyControlSigmaArena,s2Step194EarlyControlOutputArena,s2Step194EarlyControlLog⟩

private def s2Step194CounterWork : List Wire := [807, 827, 840, 794]

private theorem s2Step194Counter_bounded : s2Step194CounterWork.toFinset⊆arenaWires := by norm_num [s2Step194CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step194HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step194CounterDuring : Arena := ⟨s2Step194HeadFvAfter.live∪s2Step194CounterWork.toFinset,Finset.union_subset s2Step194HeadFvAfter.bounded s2Step194Counter_bounded⟩

private def s2Step194EntryFFresh : List Wire := []

private def s2Step194EntryFvFresh : List Wire := []

private def s2Step194EntryGFresh : List Wire := []

private def s2Step194EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step194EntryGvAfter : Arena := s2Step194EntryFBefore

private def s2Step194EntryGvFresh : List Wire := []

private def s2Step194ExitFExtra : List Wire := [826]

private def s2Step194ExitGExtra : List Wire := [171, 814]

private def s2Step194ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<171) ∨ (172≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step194ExitGvExtra : List Wire := [829]

private def s2Step194Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step194Add0Work : List Wire := [840, 794, 867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step194Add0_bounded : s2Step194Add0Work.toFinset⊆arenaWires := by
  have h : s2Step194Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step194Add0During : Arena := ⟨s2Step194Add0Arena.live∪s2Step194Add0Work.toFinset,Finset.union_subset s2Step194Add0Arena.bounded s2Step194Add0_bounded⟩

private def s2Step194Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step194Add1Work : List Wire := [840, 794, 867, 877, 879, 882, 885, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step194Add1_bounded : s2Step194Add1Work.toFinset⊆arenaWires := by
  have h : s2Step194Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step194Add1During : Arena := ⟨s2Step194Add1Arena.live∪s2Step194Add1Work.toFinset,Finset.union_subset s2Step194Add1Arena.bounded s2Step194Add1_bounded⟩

private def s2Step194F4FlagArena : Arena := ⟨s2Step194HeadFvAfter.live∪{807},Finset.union_subset s2Step194HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step194F4Plan : HmrHybridF4Plan := ⟨s2Step194F4FlagArena,[807],s2Step194Add0Arena,[827],s2Step194Add0During,s2Step194Add0Work,s2Step194Add1During,s2Step194Add1Work⟩

private def s2Step194HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 826],768⟩

private def s2Step194HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784],770⟩

private def s2Step194HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 814],769⟩

private def s2Step194HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 829],771⟩

private def s2Step194FrontHead : WindowBank := ⟨s2Step194HeadFOut,s2Step194HeadGOut,s2Step194HeadFvOut,s2Step194HeadGvOut⟩

private def s2Step194EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩

private def s2Step194EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803],770⟩

private def s2Step194EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171],769⟩

private def s2Step194EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782],771⟩

private def s2Step194FrontPair : WindowBank := ⟨s2Step194EntryFOut,s2Step194EntryGOut,s2Step194EntryFvOut,s2Step194EntryGvOut⟩

private def s2Step194FrontSigmaArena : Arena := ⟨s2Step194EntryGvAfter.live∪{822},Finset.union_subset s2Step194EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step194HeadFFresh : List Wire := [826]

private def s2Step194HeadFvFresh : List Wire := [784]

private def s2Step194HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step194HeadGFresh : List Wire := [814]

private def s2Step194HeadGvFresh : List Wire := [829]

private def s2Step194FrontPlan : HmrSourceFront := ⟨s2Step194EntryGvAfter,s2Step194FrontPair,(growRow 768 s2Step194EntryFFresh ++ (growRow 769 s2Step194EntryGFresh ++ (growRow 770 s2Step194EntryFvFresh ++ (growRow 771 s2Step194EntryGvFresh ++ [])))),s2Step194FrontSigmaArena,[822],s2Step194HeadGBefore,[817],
  s2Step194HeadFvAfter,s2Step194FrontHead,(growRow 769 s2Step194HeadGFresh ++ (growRow 768 s2Step194HeadFFresh ++ (growRow 771 s2Step194HeadGvFresh ++ (growRow 770 s2Step194HeadFvFresh ++ [])))),s2Step194F4Plan,s2Step194CounterDuring,s2Step194CounterWork,s2Step194ExitGvAfter,s2Step194FrontOut,(shrinkRow 769 s2Step194ExitGExtra ++ (shrinkRow 768 s2Step194ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step194ExitGvExtra ++ []))))⟩

private def s2Step194CompletePlan : HmrEarlyStepPlan := ⟨s2Step194FrontPlan,s2Step194EarlyControlArena,s2Step194EarlyControlPlan,s2Step194CompleteMoves⟩

private theorem s2Step194Complete_apart : List.Disjoint (s2Step194CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [822, 817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] := by
  have nd : ((s2Step194CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[822, 817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step194Complete_owned : (s2Step194CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step194EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step194EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step194CompleteMoveArena : Arena := ⟨s2Step194ExitGvAfter.live∪{171},Finset.union_subset s2Step194ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step194Complete_repack : s2Step194ExitGvAfter.checkRepack s2Step194CompleteMoves=some s2Step194EarlyControlArena := by
  have owned : 837∈s2Step194ExitGvAfter.live := by norm_num [s2Step194ExitGvAfter,arenaWires]
  have reserve : s2Step194ExitGvAfter.reserve {171}=some s2Step194CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step194ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step194CompleteMoveArena.retireSet {837}=s2Step194EarlyControlArena := by
    unfold Arena.retireSet s2Step194EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step194CompleteMoveArena,s2Step194ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step194CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step194CompleteMoveArena.retireSet {837}).checkRepack []=some s2Step194EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step194EarlyControl_branchOwned : ([817] : List Wire).toFinset⊆s2Step194EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step194EarlyControlSigmaArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step194EarlyControl_branch : compileHmrBranchRetirement s2Step194EarlyControlSigmaArena 817=some s2Step194EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step194EarlyControl_branchOwned
  · ext q
    simp [s2Step194EarlyControlOutputArena,s2Step194EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step194EarlyControl_classEqualityBorrow : s2Step194EarlyControlPositiveArena.checkBorrow (([822, 827] : List Wire).length-1) s2Step194EarlyControlLog.classWork=some s2Step194EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step194EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step194EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step194EarlyControlEqualityArena,s2Step194EarlyControlPositiveArena,s2Step194EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step194EarlyControl_classEqualityOwned : ([822, 827] : List Wire).toFinset⊆s2Step194EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step194EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194EarlyControl_classEquality : compileHmrEqualityLog s2Step194EarlyControlPositiveArena [822, 827] 0 s2Step194EarlyControlLog.classWork=some (s2Step194EarlyControlEqualityArena,s2Step194EarlyControlLog.classWork,s2Step194EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step194EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step194EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step194EarlyControl_classOwned : ([777, 807, 822] : List Wire).toFinset⊆s2Step194EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step194EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194EarlyControl_positiveBorrow : s2Step194EarlyControlZeroArena.checkBorrow (1) s2Step194EarlyControlLog.positiveWork=some s2Step194EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step194EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step194EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step194EarlyControlPositiveArena,s2Step194EarlyControlZeroArena,s2Step194EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step194EarlyControl_class : compileHmrSourceClassLog s2Step194EarlyControlZeroArena false 777 s2Step194EarlyControlZeroPlan.top 0 822 s2Step194EarlyControlLog.positiveWork s2Step194EarlyControlLog.classWork=some s2Step194EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step194EarlyControlClassPlan s2Step194EarlyControlZeroArena false 777 s2Step194EarlyControlZeroPlan.top 0 822
  constructor
  · decide +kernel
  · exact s2Step194EarlyControl_classOwned
  · exact s2Step194EarlyControl_positiveBorrow
  · exact s2Step194EarlyControl_classEquality

private theorem s2Step194EarlyControl_entryRecordOwned : ([817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step194EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step194EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194EarlyControl_entrySigmaOwned : ([822, 254] : List Wire).toFinset⊆s2Step194EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step194EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194EarlyControl_fitBorrow : s2Step194EarlyControlFlagArena.checkBorrow ((44-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step194EarlyControlLog.recordFresh=some s2Step194EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step194EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step194EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step194EarlyControlFittedArena,s2Step194EarlyControlFlagArena,s2Step194EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step194EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step194EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step194EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194EarlyControl_fit : compileHmrRecordGrowLog s2Step194EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 44 s2Step194EarlyControlLog.recordFresh=some s2Step194EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step194EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step194EarlyControl_fitBorrow

private theorem s2Step194EarlyControl_flagsBorrow : s2Step194EarlyControlEqualityArena.checkBorrow (6) s2Step194EarlyControlLog.flagWork=some s2Step194EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step194EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step194EarlyControlEqualityArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step194EarlyControlFlagArena,s2Step194EarlyControlEqualityArena,s2Step194EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step194EarlyControl_flagsOwned : ([840, 253, 252, 251] : List Wire).toFinset⊆s2Step194EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step194EarlyControlEqualityArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194EarlyControl_flags : compileHmrFlagsLog s2Step194EarlyControlClassPlan.equalityArena s2Step194EarlyControlClassPlan.equality.top 253 252 251 s2Step194EarlyControlLog.flagWork=some s2Step194EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step194EarlyControl_flagsOwned⟩
  · exact s2Step194EarlyControl_flagsBorrow

private theorem s2Step194EarlyControl_historyBorrow : s2Step194EarlyControlArena.checkBorrow ((44-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).length)) s2Step194EarlyControlLog.recordFresh=some s2Step194EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step194EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step194EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step194EarlyControlHistoryArena,s2Step194EarlyControlArena,s2Step194EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step194EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] : List Wire).toFinset⊆s2Step194EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step194EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194EarlyControl_history : compileHmrRecordGrowLog s2Step194EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 44 s2Step194EarlyControlLog.recordFresh=some s2Step194EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step194EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step194EarlyControl_historyBorrow

private theorem s2Step194EarlyControl_sigmaOwned : ([254, 822] : List Wire).toFinset⊆s2Step194EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step194EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step194EarlyControl_sigmaReleaseOwned : ([822] : List Wire).toFinset⊆s2Step194EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step194EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step194EarlyControl_sigmaRelease : s2Step194EarlyControlHistoryArena.release {822} (fun _ => false)=some s2Step194EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step194EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step194EarlyControlSigmaArena,s2Step194EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step194EarlyControl_sigma : compileHmrSigmaDropLog s2Step194EarlyControlHistoryArena false 0 0 254 822 []=some s2Step194EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step194EarlyControl_sigmaOwned⟩
  · exact s2Step194EarlyControl_sigmaRelease

private theorem s2Step194EarlyControl_zeroBorrow : s2Step194EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step194EarlyControlLog.zeroWork=some s2Step194EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step194EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step194EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step194EarlyControlZeroArena,s2Step194EarlyControlArena,s2Step194EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step194EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step194EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step194EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194EarlyControl_zero : compileHmrEqualityLog s2Step194EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step194EarlyControlLog.zeroWork=some (s2Step194EarlyControlZeroArena,s2Step194EarlyControlLog.zeroWork,s2Step194EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step194EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step194EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step194EarlyControl_logged : s2Step194EarlyControlPlan.Logged s2Step194EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 822 254 253 252 251 817 44 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step194EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step194EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step194EarlyControl_zero
  · exact s2Step194EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step194EarlyControl_flags
  · exact s2Step194EarlyControl_fit
  · exact s2Step194EarlyControl_history
  · exact s2Step194EarlyControl_sigma
  · exact s2Step194EarlyControl_branch

private theorem s2Step194EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step194EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 822 254 253 252 251 817 44 s2Step194EarlyControlLog=some s2Step194EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step194EarlyControlPlan s2Step194EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 822 254 253 252 251 817 44 s2Step194EarlyControl_logged

private def s2Step194EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩

private def s2Step194EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803],770⟩

private def s2Step194EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171],769⟩

private def s2Step194EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782],771⟩

private def s2Step194FrontBank : WindowBank := ⟨s2Step194EntryFRow,s2Step194EntryGRow,s2Step194EntryFvRow,s2Step194EntryGvRow⟩

private def s2Step194Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 826, 768]

private def s2Step194Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 814, 769]

private def s2Step194Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 770]

private def s2Step194Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 829, 771]

private theorem s2Step194Counter_apart : Disjoint s2Step194HeadFvAfter.live s2Step194CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step194HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194Counter_borrowed : s2Step194HeadFvAfter.checkBorrow 4 s2Step194CounterWork=some s2Step194CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step194HeadFvAfter s2Step194CounterDuring s2Step194CounterWork.toFinset s2Step194Counter_bounded s2Step194Counter_apart rfl

private theorem s2Step194Counter_owned : (822::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step194HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step194HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194Counter_checked : compileHmrCounterStepLog s2Step194HeadFvAfter true 822 [772, 773, 774, 775, 776, 777] s2Step194CounterWork=some s2Step194CounterDuring := by
  have owned : ∀q∈822::[772, 773, 774, 775, 776, 777],q∈s2Step194HeadFvAfter.live := fun q hq => s2Step194Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step194Counter_borrowed

private def s2Step194EntryFAfter : Arena := s2Step194EntryFBefore

private theorem s2Step194EntryBank_incomingDistinct : ([s2Step194EntryFRow,s2Step194EntryGRow,s2Step194EntryFvRow,s2Step194EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194EntryF_Incoming : rowsOwned s2Step194EntryFBefore [s2Step194EntryFRow,s2Step194EntryGRow,s2Step194EntryFvRow,s2Step194EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step194EntryFRow,s2Step194EntryGRow,s2Step194EntryFvRow,s2Step194EntryGvRow] 0 s2Step194EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step194EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step194EntryBank_outgoingOwned : rowsOwned s2Step194EntryGvAfter [s2Step194EntryFOut,s2Step194EntryGOut,s2Step194EntryFvOut,s2Step194EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step194EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step194EntryF_Outgoing : rowsOwned s2Step194EntryGvAfter [s2Step194EntryFOut,s2Step194EntryGOut,s2Step194EntryFvOut,s2Step194EntryGvOut] :=
  hmrRows_owned_drop s2Step194EntryGvAfter [s2Step194EntryFOut,s2Step194EntryGOut,s2Step194EntryFvOut,s2Step194EntryGvOut] 0 s2Step194EntryBank_outgoingOwned

private theorem s2Step194EntryF_distinct : (s2Step194EntryFRow.sign::s2Step194EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194EntryF_owned : (s2Step194EntryFRow.sign::s2Step194EntryFRow.payload).toFinset⊆s2Step194EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step194EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194EntryF_reserved : s2Step194EntryFBefore.reserve s2Step194EntryFFresh.toFinset=some s2Step194EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step194EntryFFresh,arenaWires]
  · norm_num [s2Step194EntryFBefore,s2Step194EntryFFresh,arenaWires]
  · simp only [s2Step194EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step194EntryF_checked : planRowResizeLog s2Step194EntryFBefore s2Step194EntryFRow 172 s2Step194EntryFFresh=
    some (s2Step194EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩,growRow 768 s2Step194EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step194EntryFBefore s2Step194EntryFAfter s2Step194EntryFRow 172 s2Step194EntryFFresh
    s2Step194EntryF_distinct s2Step194EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step194EntryF_reserved
  have rowEq : WindowRow.mk (s2Step194EntryFRow.payload++s2Step194EntryFFresh) s2Step194EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step194EntryFvAfter : Arena := s2Step194EntryFBefore

private def s2Step194EntryFvBefore : Arena := s2Step194EntryFBefore

private theorem s2Step194EntryFv_Incoming : rowsOwned s2Step194EntryFvBefore [s2Step194EntryFvRow,s2Step194EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step194EntryFRow,s2Step194EntryGRow,s2Step194EntryFvRow,s2Step194EntryGvRow] 2 s2Step194EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step194EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step194EntryFv_Outgoing : rowsOwned s2Step194EntryGvAfter [s2Step194EntryFvOut,s2Step194EntryGvOut] :=
  hmrRows_owned_drop s2Step194EntryGvAfter [s2Step194EntryFOut,s2Step194EntryGOut,s2Step194EntryFvOut,s2Step194EntryGvOut] 2 s2Step194EntryBank_outgoingOwned

private theorem s2Step194EntryFv_distinct : (s2Step194EntryFvRow.sign::s2Step194EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194EntryFv_owned : (s2Step194EntryFvRow.sign::s2Step194EntryFvRow.payload).toFinset⊆s2Step194EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step194EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194EntryFv_reserved : s2Step194EntryFvBefore.reserve s2Step194EntryFvFresh.toFinset=some s2Step194EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step194EntryFvFresh,arenaWires]
  · norm_num [s2Step194EntryFvBefore,s2Step194EntryFBefore,s2Step194EntryFvFresh,arenaWires]
  · simp only [s2Step194EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step194EntryFv_checked : planRowResizeLog s2Step194EntryFvBefore s2Step194EntryFvRow 111 s2Step194EntryFvFresh=
    some (s2Step194EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803],770⟩,growRow 770 s2Step194EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step194EntryFvBefore s2Step194EntryFvAfter s2Step194EntryFvRow 111 s2Step194EntryFvFresh
    s2Step194EntryFv_distinct s2Step194EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step194EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step194EntryFvRow.payload++s2Step194EntryFvFresh) s2Step194EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step194EntryGAfter : Arena := s2Step194EntryFBefore

private def s2Step194EntryGBefore : Arena := s2Step194EntryFBefore

private theorem s2Step194EntryG_Incoming : rowsOwned s2Step194EntryGBefore [s2Step194EntryGRow,s2Step194EntryFvRow,s2Step194EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step194EntryFRow,s2Step194EntryGRow,s2Step194EntryFvRow,s2Step194EntryGvRow] 1 s2Step194EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step194EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step194EntryG_Outgoing : rowsOwned s2Step194EntryGvAfter [s2Step194EntryGOut,s2Step194EntryFvOut,s2Step194EntryGvOut] :=
  hmrRows_owned_drop s2Step194EntryGvAfter [s2Step194EntryFOut,s2Step194EntryGOut,s2Step194EntryFvOut,s2Step194EntryGvOut] 1 s2Step194EntryBank_outgoingOwned

private theorem s2Step194EntryG_distinct : (s2Step194EntryGRow.sign::s2Step194EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194EntryG_owned : (s2Step194EntryGRow.sign::s2Step194EntryGRow.payload).toFinset⊆s2Step194EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step194EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194EntryG_reserved : s2Step194EntryGBefore.reserve s2Step194EntryGFresh.toFinset=some s2Step194EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step194EntryGFresh,arenaWires]
  · norm_num [s2Step194EntryGBefore,s2Step194EntryFBefore,s2Step194EntryGFresh,arenaWires]
  · simp only [s2Step194EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step194EntryG_checked : planRowResizeLog s2Step194EntryGBefore s2Step194EntryGRow 172 s2Step194EntryGFresh=
    some (s2Step194EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171],769⟩,growRow 769 s2Step194EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step194EntryGBefore s2Step194EntryGAfter s2Step194EntryGRow 172 s2Step194EntryGFresh
    s2Step194EntryG_distinct s2Step194EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step194EntryG_reserved
  have rowEq : WindowRow.mk (s2Step194EntryGRow.payload++s2Step194EntryGFresh) s2Step194EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step194EntryGvBefore : Arena := s2Step194EntryFBefore

private theorem s2Step194EntryGv_Incoming : rowsOwned s2Step194EntryGvBefore [s2Step194EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step194EntryFRow,s2Step194EntryGRow,s2Step194EntryFvRow,s2Step194EntryGvRow] 3 s2Step194EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step194EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step194EntryGv_Outgoing : rowsOwned s2Step194EntryGvAfter [s2Step194EntryGvOut] :=
  hmrRows_owned_drop s2Step194EntryGvAfter [s2Step194EntryFOut,s2Step194EntryGOut,s2Step194EntryFvOut,s2Step194EntryGvOut] 3 s2Step194EntryBank_outgoingOwned

private theorem s2Step194EntryGv_distinct : (s2Step194EntryGvRow.sign::s2Step194EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194EntryGv_owned : (s2Step194EntryGvRow.sign::s2Step194EntryGvRow.payload).toFinset⊆s2Step194EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step194EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194EntryGv_reserved : s2Step194EntryGvBefore.reserve s2Step194EntryGvFresh.toFinset=some s2Step194EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step194EntryGvFresh,arenaWires]
  · norm_num [s2Step194EntryGvBefore,s2Step194EntryFBefore,s2Step194EntryGvFresh,arenaWires]
  · simp only [s2Step194EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step194EntryGv_checked : planRowResizeLog s2Step194EntryGvBefore s2Step194EntryGvRow 111 s2Step194EntryGvFresh=
    some (s2Step194EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782],771⟩,growRow 771 s2Step194EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step194EntryGvBefore s2Step194EntryGvAfter s2Step194EntryGvRow 111 s2Step194EntryGvFresh
    s2Step194EntryGv_distinct s2Step194EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step194EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step194EntryGvRow.payload++s2Step194EntryGvFresh) s2Step194EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step194EntryBank_rows : planWindowRowsLog s2Step194EntryFBefore [(s2Step194EntryFRow,172),(s2Step194EntryGRow,172),(s2Step194EntryFvRow,111),(s2Step194EntryGvRow,111)] [s2Step194EntryFFresh,s2Step194EntryGFresh,s2Step194EntryFvFresh,s2Step194EntryGvFresh]=
    some (s2Step194EntryGvAfter,[s2Step194EntryFOut,s2Step194EntryGOut,s2Step194EntryFvOut,s2Step194EntryGvOut],(growRow 768 s2Step194EntryFFresh ++ (growRow 769 s2Step194EntryGFresh ++ (growRow 770 s2Step194EntryFvFresh ++ (growRow 771 s2Step194EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step194EntryGvAfter [] []=some (s2Step194EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step194EntryGvBefore s2Step194EntryGvAfter s2Step194EntryGvAfter
    s2Step194EntryGvRow s2Step194EntryGvOut 111 s2Step194EntryGvFresh [] [] []
    (growRow 771 s2Step194EntryGvFresh) ([]) s2Step194EntryGv_Incoming s2Step194EntryGv_checked h4 s2Step194EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step194EntryFvBefore s2Step194EntryFvAfter s2Step194EntryGvAfter
    s2Step194EntryFvRow s2Step194EntryFvOut 111 s2Step194EntryFvFresh [(s2Step194EntryGvRow,111)] [s2Step194EntryGvFresh] [s2Step194EntryGvOut]
    (growRow 770 s2Step194EntryFvFresh) ((growRow 771 s2Step194EntryGvFresh ++ [])) s2Step194EntryFv_Incoming s2Step194EntryFv_checked h3 s2Step194EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step194EntryGBefore s2Step194EntryGAfter s2Step194EntryGvAfter
    s2Step194EntryGRow s2Step194EntryGOut 172 s2Step194EntryGFresh [(s2Step194EntryFvRow,111),(s2Step194EntryGvRow,111)] [s2Step194EntryFvFresh,s2Step194EntryGvFresh] [s2Step194EntryFvOut,s2Step194EntryGvOut]
    (growRow 769 s2Step194EntryGFresh) ((growRow 770 s2Step194EntryFvFresh ++ (growRow 771 s2Step194EntryGvFresh ++ []))) s2Step194EntryG_Incoming s2Step194EntryG_checked h2 s2Step194EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step194EntryFBefore s2Step194EntryFAfter s2Step194EntryGvAfter
    s2Step194EntryFRow s2Step194EntryFOut 172 s2Step194EntryFFresh [(s2Step194EntryGRow,172),(s2Step194EntryFvRow,111),(s2Step194EntryGvRow,111)] [s2Step194EntryGFresh,s2Step194EntryFvFresh,s2Step194EntryGvFresh] [s2Step194EntryGOut,s2Step194EntryFvOut,s2Step194EntryGvOut]
    (growRow 768 s2Step194EntryFFresh) ((growRow 769 s2Step194EntryGFresh ++ (growRow 770 s2Step194EntryFvFresh ++ (growRow 771 s2Step194EntryGvFresh ++ [])))) s2Step194EntryF_Incoming s2Step194EntryF_checked h1 s2Step194EntryF_Outgoing
  exact h0

private theorem s2Step194EntryBank_checked : compileHmrBankResizeLog .entry s2Step194EntryFBefore ⟨s2Step194EntryFRow,s2Step194EntryGRow,s2Step194EntryFvRow,s2Step194EntryGvRow⟩ ⟨172,172,111,111⟩ [s2Step194EntryFFresh,s2Step194EntryGFresh,s2Step194EntryFvFresh,s2Step194EntryGvFresh]=
    some (s2Step194EntryGvAfter,⟨s2Step194EntryFOut,s2Step194EntryGOut,s2Step194EntryFvOut,s2Step194EntryGvOut⟩,(growRow 768 s2Step194EntryFFresh ++ (growRow 769 s2Step194EntryGFresh ++ (growRow 770 s2Step194EntryFvFresh ++ (growRow 771 s2Step194EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step194EntryBank_rows]
  rfl

private def s2Step194ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<171) ∨ (172≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step194ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<171) ∨ (172≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step194ExitFBefore : Arena := s2Step194ExitGAfter

private def s2Step194ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 826],768⟩

private def s2Step194ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784],770⟩

private def s2Step194ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 814],769⟩

private def s2Step194ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 829],771⟩

private theorem s2Step194ExitBank_incomingDistinct : ([s2Step194ExitGRow,s2Step194ExitFRow,s2Step194ExitFvRow,s2Step194ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194ExitF_Incoming : rowsOwned s2Step194ExitFBefore [s2Step194ExitFRow,s2Step194ExitFvRow,s2Step194ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step194ExitGRow,s2Step194ExitFRow,s2Step194ExitFvRow,s2Step194ExitGvRow] 1 s2Step194ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step194ExitFBefore (fun q => (0≤q ∧ q<171) ∨ (172≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step194ExitBank_outgoingOwned : rowsOwned s2Step194ExitGvAfter [s2Step194ExitGOut,s2Step194ExitFOut,s2Step194ExitFvOut,s2Step194ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step194ExitGvAfter (fun q => (0≤q ∧ q<171) ∨ (172≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step194ExitF_Outgoing : rowsOwned s2Step194ExitGvAfter [s2Step194ExitFOut,s2Step194ExitFvOut,s2Step194ExitGvOut] :=
  hmrRows_owned_drop s2Step194ExitGvAfter [s2Step194ExitGOut,s2Step194ExitFOut,s2Step194ExitFvOut,s2Step194ExitGvOut] 1 s2Step194ExitBank_outgoingOwned

private theorem s2Step194ExitF_distinct : (s2Step194ExitFRow.sign::s2Step194ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194ExitF_owned : (s2Step194ExitFRow.sign::s2Step194ExitFRow.payload).toFinset⊆s2Step194ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step194ExitFBefore (fun q => (0≤q ∧ q<171) ∨ (172≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194ExitF_retired : s2Step194ExitFBefore.retireSet s2Step194ExitFExtra.toFinset=s2Step194ExitFAfter := by
  unfold Arena.retireSet s2Step194ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step194ExitFBefore,s2Step194ExitGAfter,s2Step194ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step194ExitF_checked : planRowResizeLog s2Step194ExitFBefore s2Step194ExitFRow 172 []=
    some (s2Step194ExitFAfter,s2Step194ExitFOut,shrinkRow 768 s2Step194ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step194ExitFBefore s2Step194ExitFRow 172 s2Step194ExitF_distinct s2Step194ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step194ExitFRow.payload.take 172) s2Step194ExitFRow.sign=s2Step194ExitFOut := by decide +kernel
  have hi : s2Step194ExitFRow.payload.drop 172=s2Step194ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step194ExitF_retired] at result
  exact result

private def s2Step194ExitFvAfter : Arena := s2Step194ExitFAfter

private def s2Step194ExitFvBefore : Arena := s2Step194ExitFAfter

private theorem s2Step194ExitFv_Incoming : rowsOwned s2Step194ExitFvBefore [s2Step194ExitFvRow,s2Step194ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step194ExitGRow,s2Step194ExitFRow,s2Step194ExitFvRow,s2Step194ExitGvRow] 2 s2Step194ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step194ExitFvBefore (fun q => (0≤q ∧ q<171) ∨ (172≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step194ExitFv_Outgoing : rowsOwned s2Step194ExitGvAfter [s2Step194ExitFvOut,s2Step194ExitGvOut] :=
  hmrRows_owned_drop s2Step194ExitGvAfter [s2Step194ExitGOut,s2Step194ExitFOut,s2Step194ExitFvOut,s2Step194ExitGvOut] 2 s2Step194ExitBank_outgoingOwned

private theorem s2Step194ExitFv_distinct : (s2Step194ExitFvRow.sign::s2Step194ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194ExitFv_owned : (s2Step194ExitFvRow.sign::s2Step194ExitFvRow.payload).toFinset⊆s2Step194ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step194ExitFvBefore (fun q => (0≤q ∧ q<171) ∨ (172≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194ExitFv_reserved : s2Step194ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step194ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step194ExitFv_checked : planRowResizeLog s2Step194ExitFvBefore s2Step194ExitFvRow 112 []=
    some (s2Step194ExitFvAfter,s2Step194ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step194ExitFvBefore s2Step194ExitFvAfter s2Step194ExitFvRow 112 []
    s2Step194ExitFv_distinct s2Step194ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step194ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step194ExitFvRow.payload++[]) s2Step194ExitFvRow.sign=s2Step194ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step194ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step194ExitG_Incoming : rowsOwned s2Step194ExitGBefore [s2Step194ExitGRow,s2Step194ExitFRow,s2Step194ExitFvRow,s2Step194ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step194ExitGRow,s2Step194ExitFRow,s2Step194ExitFvRow,s2Step194ExitGvRow] 0 s2Step194ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step194ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step194ExitG_Outgoing : rowsOwned s2Step194ExitGvAfter [s2Step194ExitGOut,s2Step194ExitFOut,s2Step194ExitFvOut,s2Step194ExitGvOut] :=
  hmrRows_owned_drop s2Step194ExitGvAfter [s2Step194ExitGOut,s2Step194ExitFOut,s2Step194ExitFvOut,s2Step194ExitGvOut] 0 s2Step194ExitBank_outgoingOwned

private theorem s2Step194ExitG_distinct : (s2Step194ExitGRow.sign::s2Step194ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194ExitG_owned : (s2Step194ExitGRow.sign::s2Step194ExitGRow.payload).toFinset⊆s2Step194ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step194ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194ExitG_retired : s2Step194ExitGBefore.retireSet s2Step194ExitGExtra.toFinset=s2Step194ExitGAfter := by
  unfold Arena.retireSet s2Step194ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step194ExitGBefore,s2Step194ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step194ExitG_checked : planRowResizeLog s2Step194ExitGBefore s2Step194ExitGRow 171 []=
    some (s2Step194ExitGAfter,s2Step194ExitGOut,shrinkRow 769 s2Step194ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step194ExitGBefore s2Step194ExitGRow 171 s2Step194ExitG_distinct s2Step194ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step194ExitGRow.payload.take 171) s2Step194ExitGRow.sign=s2Step194ExitGOut := by decide +kernel
  have hi : s2Step194ExitGRow.payload.drop 171=s2Step194ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step194ExitG_retired] at result
  exact result

private def s2Step194ExitGvBefore : Arena := s2Step194ExitFAfter

private theorem s2Step194ExitGv_Incoming : rowsOwned s2Step194ExitGvBefore [s2Step194ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step194ExitGRow,s2Step194ExitFRow,s2Step194ExitFvRow,s2Step194ExitGvRow] 3 s2Step194ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step194ExitGvBefore (fun q => (0≤q ∧ q<171) ∨ (172≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step194ExitGv_Outgoing : rowsOwned s2Step194ExitGvAfter [s2Step194ExitGvOut] :=
  hmrRows_owned_drop s2Step194ExitGvAfter [s2Step194ExitGOut,s2Step194ExitFOut,s2Step194ExitFvOut,s2Step194ExitGvOut] 3 s2Step194ExitBank_outgoingOwned

private theorem s2Step194ExitGv_distinct : (s2Step194ExitGvRow.sign::s2Step194ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194ExitGv_owned : (s2Step194ExitGvRow.sign::s2Step194ExitGvRow.payload).toFinset⊆s2Step194ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step194ExitGvBefore (fun q => (0≤q ∧ q<171) ∨ (172≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194ExitGv_retired : s2Step194ExitGvBefore.retireSet s2Step194ExitGvExtra.toFinset=s2Step194ExitGvAfter := by
  unfold Arena.retireSet s2Step194ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step194ExitGvBefore,s2Step194ExitFAfter,s2Step194ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step194ExitGv_checked : planRowResizeLog s2Step194ExitGvBefore s2Step194ExitGvRow 111 []=
    some (s2Step194ExitGvAfter,s2Step194ExitGvOut,shrinkRow 771 s2Step194ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step194ExitGvBefore s2Step194ExitGvRow 111 s2Step194ExitGv_distinct s2Step194ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step194ExitGvRow.payload.take 111) s2Step194ExitGvRow.sign=s2Step194ExitGvOut := by decide +kernel
  have hi : s2Step194ExitGvRow.payload.drop 111=s2Step194ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step194ExitGv_retired] at result
  exact result

private theorem s2Step194ExitBank_rows : planWindowRowsLog s2Step194ExitGBefore [(s2Step194ExitGRow,171),(s2Step194ExitFRow,172),(s2Step194ExitFvRow,112),(s2Step194ExitGvRow,111)] [[],[],[],[]]=
    some (s2Step194ExitGvAfter,[s2Step194ExitGOut,s2Step194ExitFOut,s2Step194ExitFvOut,s2Step194ExitGvOut],(shrinkRow 769 s2Step194ExitGExtra ++ (shrinkRow 768 s2Step194ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step194ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step194ExitGvAfter [] []=some (s2Step194ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step194ExitGvBefore s2Step194ExitGvAfter s2Step194ExitGvAfter
    s2Step194ExitGvRow s2Step194ExitGvOut 111 [] [] [] []
    (shrinkRow 771 s2Step194ExitGvExtra) ([]) s2Step194ExitGv_Incoming s2Step194ExitGv_checked h4 s2Step194ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step194ExitFvBefore s2Step194ExitFvAfter s2Step194ExitGvAfter
    s2Step194ExitFvRow s2Step194ExitFvOut 112 [] [(s2Step194ExitGvRow,111)] [[]] [s2Step194ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step194ExitGvExtra ++ [])) s2Step194ExitFv_Incoming s2Step194ExitFv_checked h3 s2Step194ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step194ExitFBefore s2Step194ExitFAfter s2Step194ExitGvAfter
    s2Step194ExitFRow s2Step194ExitFOut 172 [] [(s2Step194ExitFvRow,112),(s2Step194ExitGvRow,111)] [[],[]] [s2Step194ExitFvOut,s2Step194ExitGvOut]
    (shrinkRow 768 s2Step194ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step194ExitGvExtra ++ []))) s2Step194ExitF_Incoming s2Step194ExitF_checked h2 s2Step194ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step194ExitGBefore s2Step194ExitGAfter s2Step194ExitGvAfter
    s2Step194ExitGRow s2Step194ExitGOut 171 [] [(s2Step194ExitFRow,172),(s2Step194ExitFvRow,112),(s2Step194ExitGvRow,111)] [[],[],[]] [s2Step194ExitFOut,s2Step194ExitFvOut,s2Step194ExitGvOut]
    (shrinkRow 769 s2Step194ExitGExtra) ((shrinkRow 768 s2Step194ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step194ExitGvExtra ++ [])))) s2Step194ExitG_Incoming s2Step194ExitG_checked h1 s2Step194ExitG_Outgoing
  exact h0

private theorem s2Step194ExitBank_checked : compileHmrBankResizeLog .exit s2Step194ExitGBefore ⟨s2Step194ExitFRow,s2Step194ExitGRow,s2Step194ExitFvRow,s2Step194ExitGvRow⟩ ⟨172,171,112,111⟩ [[],[],[],[]]=
    some (s2Step194ExitGvAfter,⟨s2Step194ExitFOut,s2Step194ExitGOut,s2Step194ExitFvOut,s2Step194ExitGvOut⟩,(shrinkRow 769 s2Step194ExitGExtra ++ (shrinkRow 768 s2Step194ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step194ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step194ExitBank_rows]
  rfl

private theorem s2Step194Add0_apart : Disjoint s2Step194Add0Arena.live s2Step194Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step194Add0Arena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194Add0_card : s2Step194Add0Arena.live.card=883 := by
  decide +kernel

private theorem s2Step194Add0_borrowed : s2Step194Add0Arena.checkBorrow (hmrHybridCount s2Step194Add0Arena s2Step194Add0B.length) s2Step194Add0Work=some s2Step194Add0During := by
  have len : s2Step194Add0Work.length=hmrHybridCount s2Step194Add0Arena s2Step194Add0B.length := by
    rw [hmrHybridCount,s2Step194Add0_card]
    decide +kernel
  have nd : s2Step194Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step194Add0Arena s2Step194Add0During s2Step194Add0Work.toFinset s2Step194Add0_bounded s2Step194Add0_apart rfl

private theorem s2Step194Add0_distinct : (807::817::827::(s2Step194Add0A++s2Step194Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194Add0_owned : (807::817::827::(s2Step194Add0A++s2Step194Add0B)).toFinset⊆s2Step194Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step194Add0Arena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194Add0_checked : compileHmrHybridCinLog s2Step194Add0Arena 817 807 827 s2Step194Add0A s2Step194Add0B s2Step194Add0Work=some s2Step194Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step194Add0Arena s2Step194Add0During 817 807 827 s2Step194Add0A s2Step194Add0B s2Step194Add0Work
    (by decide +kernel) (by decide +kernel) s2Step194Add0_distinct
    (fun q hq => s2Step194Add0_owned (List.mem_toFinset.mpr hq)) s2Step194Add0_borrowed

private theorem s2Step194Add1_apart : Disjoint s2Step194Add1Arena.live s2Step194Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step194Add1Arena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194Add1_card : s2Step194Add1Arena.live.card=883 := by
  decide +kernel

private theorem s2Step194Add1_borrowed : s2Step194Add1Arena.checkBorrow (hmrHybridCount s2Step194Add1Arena s2Step194Add1B.length) s2Step194Add1Work=some s2Step194Add1During := by
  have len : s2Step194Add1Work.length=hmrHybridCount s2Step194Add1Arena s2Step194Add1B.length := by
    rw [hmrHybridCount,s2Step194Add1_card]
    decide +kernel
  have nd : s2Step194Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step194Add1Arena s2Step194Add1During s2Step194Add1Work.toFinset s2Step194Add1_bounded s2Step194Add1_apart rfl

private theorem s2Step194Add1_distinct : (807::817::827::(s2Step194Add1A++s2Step194Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194Add1_owned : (807::817::827::(s2Step194Add1A++s2Step194Add1B)).toFinset⊆s2Step194Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step194Add1Arena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194Add1_checked : compileHmrHybridCinLog s2Step194Add1Arena 817 807 827 s2Step194Add1A s2Step194Add1B s2Step194Add1Work=some s2Step194Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step194Add1Arena s2Step194Add1During 817 807 827 s2Step194Add1A s2Step194Add1B s2Step194Add1Work
    (by decide +kernel) (by decide +kernel) s2Step194Add1_distinct
    (fun q hq => s2Step194Add1_owned (List.mem_toFinset.mpr hq)) s2Step194Add1_borrowed

private theorem s2Step194F4_apart : Disjoint (s2Step194Add0A++s2Step194Add0B).toFinset (s2Step194Add1A++s2Step194Add1B).toFinset := by
  have nd : ((s2Step194Add0A++s2Step194Add0B)++(s2Step194Add1A++s2Step194Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step194F4_carry : s2Step194F4FlagArena.checkBorrow 1 [827]=some s2Step194Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step194F4FlagArena,s2Step194HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step194F4FlagArena,s2Step194HeadFvAfter,s2Step194Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step194F4_distinct : (822::817::807::827::((s2Step194Add0A++s2Step194Add1A)++(s2Step194Add0B++s2Step194Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194F4_flag : s2Step194HeadFvAfter.checkBorrow 1 [807]=some s2Step194F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step194HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step194F4_owned : (822::817::((s2Step194Add0A++s2Step194Add1A)++(s2Step194Add0B++s2Step194Add1B))).toFinset⊆s2Step194HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step194HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194F4_checked : compileHmrHybridF4Log s2Step194HeadFvAfter 822 817 s2Step194Add0A s2Step194Add0B s2Step194Add1A s2Step194Add1B [807] [827] s2Step194Add0Work s2Step194Add1Work=some s2Step194F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step194HeadFvAfter s2Step194F4FlagArena s2Step194Add0Arena s2Step194Add0During s2Step194Add1During 822 817
    s2Step194Add0A s2Step194Add0B s2Step194Add1A s2Step194Add1B [807] [827] s2Step194Add0Work s2Step194Add1Work
    (fun q hq => s2Step194F4_owned (List.mem_toFinset.mpr hq)) s2Step194F4_flag s2Step194F4_carry
    s2Step194F4_distinct s2Step194F4_apart s2Step194Add0_checked s2Step194Add1_checked

private theorem s2Step194Front_branch : s2Step194FrontSigmaArena.checkBorrow 1 [817]=some s2Step194HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step194FrontSigmaArena,s2Step194EntryGvAfter,s2Step194EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step194FrontSigmaArena,s2Step194EntryGvAfter,s2Step194EntryFBefore,s2Step194HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step194Front_entry : HmrFrontEntryValid s2Step194EntryFBefore s2Step194FrontBank 172 111 ⟨172,171,112,111⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step194FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step194EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step194EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step194FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step194Front_sigma : s2Step194EntryGvAfter.checkBorrow 1 [822]=some s2Step194FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step194EntryGvAfter,s2Step194EntryFBefore,arenaWires]
  · rfl

private def s2Step194HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step194HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step194HeadFBefore : Arena := s2Step194HeadGAfter

private def s2Step194HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩

private def s2Step194HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803],770⟩

private def s2Step194HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171],769⟩

private def s2Step194HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782],771⟩

private theorem s2Step194HeadBank_incomingDistinct : ([s2Step194HeadGRow,s2Step194HeadFRow,s2Step194HeadGvRow,s2Step194HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194HeadF_Incoming : rowsOwned s2Step194HeadFBefore [s2Step194HeadFRow,s2Step194HeadGvRow,s2Step194HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step194HeadGRow,s2Step194HeadFRow,s2Step194HeadGvRow,s2Step194HeadFvRow] 1 s2Step194HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step194HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step194HeadBank_outgoingOwned : rowsOwned s2Step194HeadFvAfter [s2Step194HeadGOut,s2Step194HeadFOut,s2Step194HeadGvOut,s2Step194HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step194HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step194HeadF_Outgoing : rowsOwned s2Step194HeadFvAfter [s2Step194HeadFOut,s2Step194HeadGvOut,s2Step194HeadFvOut] :=
  hmrRows_owned_drop s2Step194HeadFvAfter [s2Step194HeadGOut,s2Step194HeadFOut,s2Step194HeadGvOut,s2Step194HeadFvOut] 1 s2Step194HeadBank_outgoingOwned

private theorem s2Step194HeadF_distinct : (s2Step194HeadFRow.sign::s2Step194HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194HeadF_owned : (s2Step194HeadFRow.sign::s2Step194HeadFRow.payload).toFinset⊆s2Step194HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step194HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194HeadF_reserved : s2Step194HeadFBefore.reserve s2Step194HeadFFresh.toFinset=some s2Step194HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step194HeadFFresh,arenaWires]
  · norm_num [s2Step194HeadFBefore,s2Step194HeadGAfter,s2Step194HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step194HeadFAfter,s2Step194HeadFBefore,s2Step194HeadGAfter,s2Step194HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step194HeadF_checked : planRowResizeLog s2Step194HeadFBefore s2Step194HeadFRow 173 s2Step194HeadFFresh=
    some (s2Step194HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 826],768⟩,growRow 768 s2Step194HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step194HeadFBefore s2Step194HeadFAfter s2Step194HeadFRow 173 s2Step194HeadFFresh
    s2Step194HeadF_distinct s2Step194HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step194HeadF_reserved
  have rowEq : WindowRow.mk (s2Step194HeadFRow.payload++s2Step194HeadFFresh) s2Step194HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 826],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step194HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step194HeadFvBefore : Arena := s2Step194HeadGvAfter

private theorem s2Step194HeadFv_Incoming : rowsOwned s2Step194HeadFvBefore [s2Step194HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step194HeadGRow,s2Step194HeadFRow,s2Step194HeadGvRow,s2Step194HeadFvRow] 3 s2Step194HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step194HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step194HeadFv_Outgoing : rowsOwned s2Step194HeadFvAfter [s2Step194HeadFvOut] :=
  hmrRows_owned_drop s2Step194HeadFvAfter [s2Step194HeadGOut,s2Step194HeadFOut,s2Step194HeadGvOut,s2Step194HeadFvOut] 3 s2Step194HeadBank_outgoingOwned

private theorem s2Step194HeadFv_distinct : (s2Step194HeadFvRow.sign::s2Step194HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194HeadFv_owned : (s2Step194HeadFvRow.sign::s2Step194HeadFvRow.payload).toFinset⊆s2Step194HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step194HeadFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194HeadFv_reserved : s2Step194HeadFvBefore.reserve s2Step194HeadFvFresh.toFinset=some s2Step194HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step194HeadFvFresh,arenaWires]
  · norm_num [s2Step194HeadFvBefore,s2Step194HeadGvAfter,s2Step194HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step194HeadFvAfter,s2Step194HeadFvBefore,s2Step194HeadGvAfter,s2Step194HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step194HeadFv_checked : planRowResizeLog s2Step194HeadFvBefore s2Step194HeadFvRow 112 s2Step194HeadFvFresh=
    some (s2Step194HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784],770⟩,growRow 770 s2Step194HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step194HeadFvBefore s2Step194HeadFvAfter s2Step194HeadFvRow 112 s2Step194HeadFvFresh
    s2Step194HeadFv_distinct s2Step194HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step194HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step194HeadFvRow.payload++s2Step194HeadFvFresh) s2Step194HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step194HeadG_Incoming : rowsOwned s2Step194HeadGBefore [s2Step194HeadGRow,s2Step194HeadFRow,s2Step194HeadGvRow,s2Step194HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step194HeadGRow,s2Step194HeadFRow,s2Step194HeadGvRow,s2Step194HeadFvRow] 0 s2Step194HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step194HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step194HeadG_Outgoing : rowsOwned s2Step194HeadFvAfter [s2Step194HeadGOut,s2Step194HeadFOut,s2Step194HeadGvOut,s2Step194HeadFvOut] :=
  hmrRows_owned_drop s2Step194HeadFvAfter [s2Step194HeadGOut,s2Step194HeadFOut,s2Step194HeadGvOut,s2Step194HeadFvOut] 0 s2Step194HeadBank_outgoingOwned

private theorem s2Step194HeadG_distinct : (s2Step194HeadGRow.sign::s2Step194HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194HeadG_owned : (s2Step194HeadGRow.sign::s2Step194HeadGRow.payload).toFinset⊆s2Step194HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step194HeadGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194HeadG_reserved : s2Step194HeadGBefore.reserve s2Step194HeadGFresh.toFinset=some s2Step194HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step194HeadGFresh,arenaWires]
  · norm_num [s2Step194HeadGBefore,s2Step194HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step194HeadGAfter,s2Step194HeadGBefore,s2Step194HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step194HeadG_checked : planRowResizeLog s2Step194HeadGBefore s2Step194HeadGRow 173 s2Step194HeadGFresh=
    some (s2Step194HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 814],769⟩,growRow 769 s2Step194HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step194HeadGBefore s2Step194HeadGAfter s2Step194HeadGRow 173 s2Step194HeadGFresh
    s2Step194HeadG_distinct s2Step194HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step194HeadG_reserved
  have rowEq : WindowRow.mk (s2Step194HeadGRow.payload++s2Step194HeadGFresh) s2Step194HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 814],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step194HeadGvBefore : Arena := s2Step194HeadFAfter

private theorem s2Step194HeadGv_Incoming : rowsOwned s2Step194HeadGvBefore [s2Step194HeadGvRow,s2Step194HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step194HeadGRow,s2Step194HeadFRow,s2Step194HeadGvRow,s2Step194HeadFvRow] 2 s2Step194HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step194HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step194HeadGv_Outgoing : rowsOwned s2Step194HeadFvAfter [s2Step194HeadGvOut,s2Step194HeadFvOut] :=
  hmrRows_owned_drop s2Step194HeadFvAfter [s2Step194HeadGOut,s2Step194HeadFOut,s2Step194HeadGvOut,s2Step194HeadFvOut] 2 s2Step194HeadBank_outgoingOwned

private theorem s2Step194HeadGv_distinct : (s2Step194HeadGvRow.sign::s2Step194HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step194HeadGv_owned : (s2Step194HeadGvRow.sign::s2Step194HeadGvRow.payload).toFinset⊆s2Step194HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step194HeadGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step194HeadGv_reserved : s2Step194HeadGvBefore.reserve s2Step194HeadGvFresh.toFinset=some s2Step194HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step194HeadGvFresh,arenaWires]
  · norm_num [s2Step194HeadGvBefore,s2Step194HeadFAfter,s2Step194HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step194HeadGvAfter,s2Step194HeadGvBefore,s2Step194HeadFAfter,s2Step194HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step194HeadGv_checked : planRowResizeLog s2Step194HeadGvBefore s2Step194HeadGvRow 112 s2Step194HeadGvFresh=
    some (s2Step194HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 829],771⟩,growRow 771 s2Step194HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step194HeadGvBefore s2Step194HeadGvAfter s2Step194HeadGvRow 112 s2Step194HeadGvFresh
    s2Step194HeadGv_distinct s2Step194HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step194HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step194HeadGvRow.payload++s2Step194HeadGvFresh) s2Step194HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 829],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step194HeadBank_rows : planWindowRowsLog s2Step194HeadGBefore [(s2Step194HeadGRow,173),(s2Step194HeadFRow,173),(s2Step194HeadGvRow,112),(s2Step194HeadFvRow,112)] [s2Step194HeadGFresh,s2Step194HeadFFresh,s2Step194HeadGvFresh,s2Step194HeadFvFresh]=
    some (s2Step194HeadFvAfter,[s2Step194HeadGOut,s2Step194HeadFOut,s2Step194HeadGvOut,s2Step194HeadFvOut],(growRow 769 s2Step194HeadGFresh ++ (growRow 768 s2Step194HeadFFresh ++ (growRow 771 s2Step194HeadGvFresh ++ (growRow 770 s2Step194HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step194HeadFvAfter [] []=some (s2Step194HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step194HeadFvBefore s2Step194HeadFvAfter s2Step194HeadFvAfter
    s2Step194HeadFvRow s2Step194HeadFvOut 112 s2Step194HeadFvFresh [] [] []
    (growRow 770 s2Step194HeadFvFresh) ([]) s2Step194HeadFv_Incoming s2Step194HeadFv_checked h4 s2Step194HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step194HeadGvBefore s2Step194HeadGvAfter s2Step194HeadFvAfter
    s2Step194HeadGvRow s2Step194HeadGvOut 112 s2Step194HeadGvFresh [(s2Step194HeadFvRow,112)] [s2Step194HeadFvFresh] [s2Step194HeadFvOut]
    (growRow 771 s2Step194HeadGvFresh) ((growRow 770 s2Step194HeadFvFresh ++ [])) s2Step194HeadGv_Incoming s2Step194HeadGv_checked h3 s2Step194HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step194HeadFBefore s2Step194HeadFAfter s2Step194HeadFvAfter
    s2Step194HeadFRow s2Step194HeadFOut 173 s2Step194HeadFFresh [(s2Step194HeadGvRow,112),(s2Step194HeadFvRow,112)] [s2Step194HeadGvFresh,s2Step194HeadFvFresh] [s2Step194HeadGvOut,s2Step194HeadFvOut]
    (growRow 768 s2Step194HeadFFresh) ((growRow 771 s2Step194HeadGvFresh ++ (growRow 770 s2Step194HeadFvFresh ++ []))) s2Step194HeadF_Incoming s2Step194HeadF_checked h2 s2Step194HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step194HeadGBefore s2Step194HeadGAfter s2Step194HeadFvAfter
    s2Step194HeadGRow s2Step194HeadGOut 173 s2Step194HeadGFresh [(s2Step194HeadFRow,173),(s2Step194HeadGvRow,112),(s2Step194HeadFvRow,112)] [s2Step194HeadFFresh,s2Step194HeadGvFresh,s2Step194HeadFvFresh] [s2Step194HeadFOut,s2Step194HeadGvOut,s2Step194HeadFvOut]
    (growRow 769 s2Step194HeadGFresh) ((growRow 768 s2Step194HeadFFresh ++ (growRow 771 s2Step194HeadGvFresh ++ (growRow 770 s2Step194HeadFvFresh ++ [])))) s2Step194HeadG_Incoming s2Step194HeadG_checked h1 s2Step194HeadG_Outgoing
  exact h0

private theorem s2Step194HeadBank_checked : compileHmrBankResizeLog .headroom s2Step194HeadGBefore ⟨s2Step194HeadFRow,s2Step194HeadGRow,s2Step194HeadFvRow,s2Step194HeadGvRow⟩ ⟨173,173,112,112⟩ [s2Step194HeadGFresh,s2Step194HeadFFresh,s2Step194HeadGvFresh,s2Step194HeadFvFresh]=
    some (s2Step194HeadFvAfter,⟨s2Step194HeadFOut,s2Step194HeadGOut,s2Step194HeadFvOut,s2Step194HeadGvOut⟩,(growRow 769 s2Step194HeadGFresh ++ (growRow 768 s2Step194HeadFFresh ++ (growRow 771 s2Step194HeadGvFresh ++ (growRow 770 s2Step194HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step194HeadBank_rows]
  rfl

private theorem s2Step194Front_checked : compileHmrSourceFrontLog s2Step194EntryFBefore s2Step194FrontBank 172 111 ⟨172,171,112,111⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step194FrontLog=some s2Step194FrontPlan := by
  have pairEq : s2Step194FrontPair=⟨s2Step194HeadFRow,s2Step194HeadGRow,s2Step194HeadFvRow,s2Step194HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step194FrontHead=⟨s2Step194ExitFRow,s2Step194ExitGRow,s2Step194ExitFvRow,s2Step194ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step194Add0A=s2Step194FrontHead.f.wires := by decide +kernel
  have gEq : s2Step194Add0B=s2Step194FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step194Add1A=s2Step194FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step194Add1B=s2Step194FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step194EntryFBefore s2Step194FrontBank 172 111 ⟨172,171,112,111⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step194FrontLog s2Step194FrontPlan
  · exact s2Step194Front_entry
  · exact s2Step194EntryBank_checked
  · exact s2Step194Front_sigma
  · rfl
  · exact s2Step194Front_branch
  · rfl
  · simpa only [s2Step194FrontPlan,pairEq] using s2Step194HeadBank_checked
  · simpa only [s2Step194FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step194F4_checked
  · exact s2Step194Counter_checked
  · rfl
  · simpa only [s2Step194FrontPlan,headEq] using s2Step194ExitBank_checked

private theorem s2Step194Complete_explicit_checked : compileHmrEarlyStepLog s2Step194EntryFBefore s2Step194FrontBank 172 111 ⟨172,171,112,111⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 44 s2Step194CompleteLog=some s2Step194CompletePlan := by
  let Q := s2Step194EarlyControlPlan
  have hq := s2Step194EarlyControl_plan_checked
  have fv1 : s2Step194CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step194CompleteOut.fv.payload[2]?.getD s2Step194CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step194CompleteOut.fv.payload[3]?.getD s2Step194CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step194CompleteOut.fv.payload[4]?.getD s2Step194CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step194EntryFBefore s2Step194EarlyControlArena s2Step194FrontBank 172 111 ⟨172,171,112,111⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 44 s2Step194CompleteLog s2Step194FrontPlan Q
    s2Step194Front_checked s2Step194Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step194Complete_owned s2Step194Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step194EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 777 822 s2Step194CompleteOut.fv.second (s2Step194CompleteOut.fv.payload[2]?.getD s2Step194CompleteOut.fv.sign) (s2Step194CompleteOut.fv.payload[3]?.getD s2Step194CompleteOut.fv.sign) (s2Step194CompleteOut.fv.payload[4]?.getD s2Step194CompleteOut.fv.sign) 817 44 s2Step194EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep194Arena : Arena := s2Step194EntryFBefore
def s2PrivateStep194Bank : WindowBank := s2Step194FrontBank
def s2PrivateStep194Spec : HmrSourceWalkStepLog := ⟨172,111,⟨172,171,112,111⟩,44,.early s2Step194CompleteLog⟩
def s2PrivateStep194Plan : HmrSourceStepPlan := .early s2Step194CompletePlan
theorem s2PrivateStep194_source : s2PrivateStep194Spec=s2ObservedLogs192[2] := rfl
theorem s2PrivateStep194_checked : compileHmrSourceStepLog s2PrivateStep194Arena s2PrivateStep194Bank
    s2PrivateStep194Spec.fgWidth s2PrivateStep194Spec.vWidth s2PrivateStep194Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]
    6 498 194 s2PrivateStep194Spec.need none s2PrivateStep194Spec.log=some s2PrivateStep194Plan := by
  change compileHmrSourceStepLog s2Step194EntryFBefore s2Step194FrontBank 172 111 ⟨172,171,112,111⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] 6 498 194 44 none (.early s2Step194CompleteLog)=some (.early s2Step194CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 194<498)]
  rw [s2Step194Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
