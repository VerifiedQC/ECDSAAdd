import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep193
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

private def s2Step195CompleteMoves : List (Wire × Wire) := []

private def s2Step195EarlyControlLog : HmrEarlyControlLog := ⟨[822, 807, 814, 817, 826],[840],[794],[867, 877, 879, 882, 885, 891],[892]⟩

private def s2Step195FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [817], [], [822]],[[826], [814], [807], [827]],[[], [], [], []]⟩,[837],[829],[840],[794],[867, 877, 879, 882, 885, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[840, 794, 867, 877]⟩

private def s2Step195CompleteLog : HmrEarlyStepLog := ⟨s2Step195FrontLog,s2Step195CompleteMoves,s2Step195EarlyControlLog⟩

private def s2Step195ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩

private def s2Step195ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827],770⟩

private def s2Step195ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170],769⟩

private def s2Step195ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782],771⟩

private def s2Step195FrontOut : WindowBank := ⟨s2Step195ExitFOut,s2Step195ExitGOut,s2Step195ExitFvOut,s2Step195ExitGvOut⟩

private def s2Step195CompleteOut : WindowBank := s2Step195FrontOut.repacked s2Step195CompleteMoves

private def s2Step195EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step195EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step195EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step195EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step195EarlyControlPositiveArena,[840],s2Step195EarlyControlEqualityArena,[794],⟨⟨837,false⟩,[⟨⟨840,false⟩,794⟩]⟩⟩

private def s2Step195EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step195EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<892)),Finset.filter_subset _ _⟩

private def s2Step195EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step195EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step195EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step195EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step195EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,822⟩,⟨⟨774,false⟩,807⟩,⟨⟨775,false⟩,814⟩,⟨⟨776,false⟩,817⟩,⟨⟨777,false⟩,826⟩]⟩

private def s2Step195EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step195EarlyControlZeroArena,s2Step195EarlyControlZeroPlan,s2Step195EarlyControlClassPlan,s2Step195EarlyControlFlagArena,s2Step195EarlyControlFittedArena,s2Step195EarlyControlHistoryArena,s2Step195EarlyControlSigmaArena,s2Step195EarlyControlOutputArena,s2Step195EarlyControlLog⟩

private def s2Step195CounterWork : List Wire := [840, 794, 867, 877]

private theorem s2Step195Counter_bounded : s2Step195CounterWork.toFinset⊆arenaWires := by norm_num [s2Step195CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step195HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step195CounterDuring : Arena := ⟨s2Step195HeadFvAfter.live∪s2Step195CounterWork.toFinset,Finset.union_subset s2Step195HeadFvAfter.bounded s2Step195Counter_bounded⟩

private def s2Step195EntryFFresh : List Wire := []

private def s2Step195EntryFvFresh : List Wire := []

private def s2Step195EntryGFresh : List Wire := [817]

private def s2Step195EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step195EntryGvFresh : List Wire := [822]

private def s2Step195ExitFExtra : List Wire := [814]

private def s2Step195ExitGExtra : List Wire := [817, 826]

private def s2Step195ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step195ExitGvExtra : List Wire := [822, 807]

private def s2Step195Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step195Add0Work : List Wire := [867, 877, 879, 882, 885, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step195Add0_bounded : s2Step195Add0Work.toFinset⊆arenaWires := by
  have h : s2Step195Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step195Add0During : Arena := ⟨s2Step195Add0Arena.live∪s2Step195Add0Work.toFinset,Finset.union_subset s2Step195Add0Arena.bounded s2Step195Add0_bounded⟩

private def s2Step195Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step195Add1Work : List Wire := [867, 877, 879, 882, 885, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step195Add1_bounded : s2Step195Add1Work.toFinset⊆arenaWires := by
  have h : s2Step195Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step195Add1During : Arena := ⟨s2Step195Add1Arena.live∪s2Step195Add1Work.toFinset,Finset.union_subset s2Step195Add1Arena.bounded s2Step195Add1_bounded⟩

private def s2Step195F4FlagArena : Arena := ⟨s2Step195HeadFvAfter.live∪{840},Finset.union_subset s2Step195HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step195F4Plan : HmrHybridF4Plan := ⟨s2Step195F4FlagArena,[840],s2Step195Add0Arena,[794],s2Step195Add0During,s2Step195Add0Work,s2Step195Add1During,s2Step195Add1Work⟩

private def s2Step195HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 814],768⟩

private def s2Step195HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827],770⟩

private def s2Step195HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 817, 826],769⟩

private def s2Step195HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 822, 807],771⟩

private def s2Step195FrontHead : WindowBank := ⟨s2Step195HeadFOut,s2Step195HeadGOut,s2Step195HeadFvOut,s2Step195HeadGvOut⟩

private def s2Step195EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩

private def s2Step195EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784],770⟩

private def s2Step195EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 817],769⟩

private def s2Step195EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 822],771⟩

private def s2Step195FrontPair : WindowBank := ⟨s2Step195EntryFOut,s2Step195EntryGOut,s2Step195EntryFvOut,s2Step195EntryGvOut⟩

private def s2Step195FrontSigmaArena : Arena := ⟨s2Step195EntryGvAfter.live∪{837},Finset.union_subset s2Step195EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step195HeadFFresh : List Wire := [814]

private def s2Step195HeadFvFresh : List Wire := [827]

private def s2Step195HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step195HeadGFresh : List Wire := [826]

private def s2Step195HeadGvFresh : List Wire := [807]

private def s2Step195FrontPlan : HmrSourceFront := ⟨s2Step195EntryGvAfter,s2Step195FrontPair,(growRow 768 s2Step195EntryFFresh ++ (growRow 769 s2Step195EntryGFresh ++ (growRow 770 s2Step195EntryFvFresh ++ (growRow 771 s2Step195EntryGvFresh ++ [])))),s2Step195FrontSigmaArena,[837],s2Step195HeadGBefore,[829],
  s2Step195HeadFvAfter,s2Step195FrontHead,(growRow 769 s2Step195HeadGFresh ++ (growRow 768 s2Step195HeadFFresh ++ (growRow 771 s2Step195HeadGvFresh ++ (growRow 770 s2Step195HeadFvFresh ++ [])))),s2Step195F4Plan,s2Step195CounterDuring,s2Step195CounterWork,s2Step195ExitGvAfter,s2Step195FrontOut,(shrinkRow 769 s2Step195ExitGExtra ++ (shrinkRow 768 s2Step195ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step195ExitGvExtra ++ []))))⟩

private def s2Step195CompletePlan : HmrEarlyStepPlan := ⟨s2Step195FrontPlan,s2Step195EarlyControlArena,s2Step195EarlyControlPlan,s2Step195CompleteMoves⟩

private theorem s2Step195Complete_apart : List.Disjoint (s2Step195CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [837, 829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890] := by
  have nd : ((s2Step195CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[837, 829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step195Complete_owned : (s2Step195CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step195EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step195EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195Complete_repack : s2Step195ExitGvAfter.checkRepack s2Step195CompleteMoves=some s2Step195EarlyControlArena := by rfl

private theorem s2Step195EarlyControl_branchOwned : ([829] : List Wire).toFinset⊆s2Step195EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step195EarlyControlSigmaArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step195EarlyControl_branch : compileHmrBranchRetirement s2Step195EarlyControlSigmaArena 829=some s2Step195EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step195EarlyControl_branchOwned
  · ext q
    simp [s2Step195EarlyControlOutputArena,s2Step195EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step195EarlyControl_classEqualityBorrow : s2Step195EarlyControlPositiveArena.checkBorrow (([837, 840] : List Wire).length-1) s2Step195EarlyControlLog.classWork=some s2Step195EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step195EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step195EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
      decide +kernel
    · ext q
      simp [s2Step195EarlyControlEqualityArena,s2Step195EarlyControlPositiveArena,s2Step195EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step195EarlyControl_classEqualityOwned : ([837, 840] : List Wire).toFinset⊆s2Step195EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step195EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195EarlyControl_classEquality : compileHmrEqualityLog s2Step195EarlyControlPositiveArena [837, 840] 0 s2Step195EarlyControlLog.classWork=some (s2Step195EarlyControlEqualityArena,s2Step195EarlyControlLog.classWork,s2Step195EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step195EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step195EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step195EarlyControl_classOwned : ([777, 826, 837] : List Wire).toFinset⊆s2Step195EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step195EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195EarlyControl_positiveBorrow : s2Step195EarlyControlZeroArena.checkBorrow (1) s2Step195EarlyControlLog.positiveWork=some s2Step195EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step195EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step195EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
      decide +kernel
    · ext q
      simp [s2Step195EarlyControlPositiveArena,s2Step195EarlyControlZeroArena,s2Step195EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step195EarlyControl_class : compileHmrSourceClassLog s2Step195EarlyControlZeroArena false 777 s2Step195EarlyControlZeroPlan.top 0 837 s2Step195EarlyControlLog.positiveWork s2Step195EarlyControlLog.classWork=some s2Step195EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step195EarlyControlClassPlan s2Step195EarlyControlZeroArena false 777 s2Step195EarlyControlZeroPlan.top 0 837
  constructor
  · decide +kernel
  · exact s2Step195EarlyControl_classOwned
  · exact s2Step195EarlyControl_positiveBorrow
  · exact s2Step195EarlyControl_classEquality

private theorem s2Step195EarlyControl_entryRecordOwned : ([829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890] : List Wire).toFinset⊆s2Step195EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step195EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195EarlyControl_entrySigmaOwned : ([837, 254] : List Wire).toFinset⊆s2Step195EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step195EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195EarlyControl_fitBorrow : s2Step195EarlyControlFlagArena.checkBorrow ((45-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890] : List Wire).length)) s2Step195EarlyControlLog.recordFresh=some s2Step195EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step195EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step195EarlyControlFlagArena (fun q => (0≤q ∧ q<892)) rfl
      decide +kernel
    · ext q
      simp [s2Step195EarlyControlFittedArena,s2Step195EarlyControlFlagArena,s2Step195EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step195EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890] : List Wire).toFinset⊆s2Step195EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step195EarlyControlFlagArena (fun q => (0≤q ∧ q<892)) rfl
  decide +kernel

private theorem s2Step195EarlyControl_fit : compileHmrRecordGrowLog s2Step195EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890] 45 s2Step195EarlyControlLog.recordFresh=some s2Step195EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step195EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step195EarlyControl_fitBorrow

private theorem s2Step195EarlyControl_flagsBorrow : s2Step195EarlyControlEqualityArena.checkBorrow (6) s2Step195EarlyControlLog.flagWork=some s2Step195EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step195EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step195EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
      decide +kernel
    · ext q
      simp [s2Step195EarlyControlFlagArena,s2Step195EarlyControlEqualityArena,s2Step195EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step195EarlyControl_flagsOwned : ([794, 253, 252, 251] : List Wire).toFinset⊆s2Step195EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step195EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195EarlyControl_flags : compileHmrFlagsLog s2Step195EarlyControlClassPlan.equalityArena s2Step195EarlyControlClassPlan.equality.top 253 252 251 s2Step195EarlyControlLog.flagWork=some s2Step195EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step195EarlyControl_flagsOwned⟩
  · exact s2Step195EarlyControl_flagsBorrow

private theorem s2Step195EarlyControl_historyBorrow : s2Step195EarlyControlArena.checkBorrow ((45-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890] : List Wire).length)) s2Step195EarlyControlLog.recordFresh=some s2Step195EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step195EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step195EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
      decide +kernel
    · ext q
      simp [s2Step195EarlyControlHistoryArena,s2Step195EarlyControlArena,s2Step195EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step195EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890] : List Wire).toFinset⊆s2Step195EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step195EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195EarlyControl_history : compileHmrRecordGrowLog s2Step195EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890] 45 s2Step195EarlyControlLog.recordFresh=some s2Step195EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step195EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step195EarlyControl_historyBorrow

private theorem s2Step195EarlyControl_sigmaOwned : ([254, 837] : List Wire).toFinset⊆s2Step195EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step195EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step195EarlyControl_sigmaReleaseOwned : ([837] : List Wire).toFinset⊆s2Step195EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step195EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step195EarlyControl_sigmaRelease : s2Step195EarlyControlHistoryArena.release {837} (fun _ => false)=some s2Step195EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step195EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step195EarlyControlSigmaArena,s2Step195EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step195EarlyControl_sigma : compileHmrSigmaDropLog s2Step195EarlyControlHistoryArena false 0 0 254 837 []=some s2Step195EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step195EarlyControl_sigmaOwned⟩
  · exact s2Step195EarlyControl_sigmaRelease

private theorem s2Step195EarlyControl_zeroBorrow : s2Step195EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step195EarlyControlLog.zeroWork=some s2Step195EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step195EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step195EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
      decide +kernel
    · ext q
      simp [s2Step195EarlyControlZeroArena,s2Step195EarlyControlArena,s2Step195EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step195EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step195EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step195EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195EarlyControl_zero : compileHmrEqualityLog s2Step195EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step195EarlyControlLog.zeroWork=some (s2Step195EarlyControlZeroArena,s2Step195EarlyControlLog.zeroWork,s2Step195EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step195EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step195EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step195EarlyControl_logged : s2Step195EarlyControlPlan.Logged s2Step195EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890] 777 837 254 253 252 251 829 45 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step195EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step195EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step195EarlyControl_zero
  · exact s2Step195EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step195EarlyControl_flags
  · exact s2Step195EarlyControl_fit
  · exact s2Step195EarlyControl_history
  · exact s2Step195EarlyControl_sigma
  · exact s2Step195EarlyControl_branch

private theorem s2Step195EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step195EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890] 777 837 254 253 252 251 829 45 s2Step195EarlyControlLog=some s2Step195EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step195EarlyControlPlan s2Step195EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890] 777 837 254 253 252 251 829 45 s2Step195EarlyControl_logged

private def s2Step195EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step195EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩

private def s2Step195EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784],770⟩

private def s2Step195EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170],769⟩

private def s2Step195EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782],771⟩

private def s2Step195FrontBank : WindowBank := ⟨s2Step195EntryFRow,s2Step195EntryGRow,s2Step195EntryFvRow,s2Step195EntryGvRow⟩

private def s2Step195Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 814, 768]

private def s2Step195Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 817, 826, 769]

private def s2Step195Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 770]

private def s2Step195Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 822, 807, 771]

private theorem s2Step195Counter_apart : Disjoint s2Step195HeadFvAfter.live s2Step195CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step195HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195Counter_borrowed : s2Step195HeadFvAfter.checkBorrow 4 s2Step195CounterWork=some s2Step195CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step195HeadFvAfter s2Step195CounterDuring s2Step195CounterWork.toFinset s2Step195Counter_bounded s2Step195Counter_apart rfl

private theorem s2Step195Counter_owned : (837::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step195HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step195HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195Counter_checked : compileHmrCounterStepLog s2Step195HeadFvAfter true 837 [772, 773, 774, 775, 776, 777] s2Step195CounterWork=some s2Step195CounterDuring := by
  have owned : ∀q∈837::[772, 773, 774, 775, 776, 777],q∈s2Step195HeadFvAfter.live := fun q hq => s2Step195Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step195Counter_borrowed

private def s2Step195EntryFAfter : Arena := s2Step195EntryFBefore

private theorem s2Step195EntryBank_incomingDistinct : ([s2Step195EntryFRow,s2Step195EntryGRow,s2Step195EntryFvRow,s2Step195EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195EntryF_Incoming : rowsOwned s2Step195EntryFBefore [s2Step195EntryFRow,s2Step195EntryGRow,s2Step195EntryFvRow,s2Step195EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step195EntryFRow,s2Step195EntryGRow,s2Step195EntryFvRow,s2Step195EntryGvRow] 0 s2Step195EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step195EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
    decide +kernel

private theorem s2Step195EntryBank_outgoingOwned : rowsOwned s2Step195EntryGvAfter [s2Step195EntryFOut,s2Step195EntryGOut,s2Step195EntryFvOut,s2Step195EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step195EntryGvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
    decide +kernel

private theorem s2Step195EntryF_Outgoing : rowsOwned s2Step195EntryGvAfter [s2Step195EntryFOut,s2Step195EntryGOut,s2Step195EntryFvOut,s2Step195EntryGvOut] :=
  hmrRows_owned_drop s2Step195EntryGvAfter [s2Step195EntryFOut,s2Step195EntryGOut,s2Step195EntryFvOut,s2Step195EntryGvOut] 0 s2Step195EntryBank_outgoingOwned

private theorem s2Step195EntryF_distinct : (s2Step195EntryFRow.sign::s2Step195EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195EntryF_owned : (s2Step195EntryFRow.sign::s2Step195EntryFRow.payload).toFinset⊆s2Step195EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step195EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195EntryF_reserved : s2Step195EntryFBefore.reserve s2Step195EntryFFresh.toFinset=some s2Step195EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step195EntryFFresh,arenaWires]
  · norm_num [s2Step195EntryFBefore,s2Step195EntryFFresh,arenaWires]
  · simp only [s2Step195EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step195EntryF_checked : planRowResizeLog s2Step195EntryFBefore s2Step195EntryFRow 172 s2Step195EntryFFresh=
    some (s2Step195EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩,growRow 768 s2Step195EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step195EntryFBefore s2Step195EntryFAfter s2Step195EntryFRow 172 s2Step195EntryFFresh
    s2Step195EntryF_distinct s2Step195EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step195EntryF_reserved
  have rowEq : WindowRow.mk (s2Step195EntryFRow.payload++s2Step195EntryFFresh) s2Step195EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step195EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step195EntryFvAfter : Arena := s2Step195EntryGAfter

private def s2Step195EntryFvBefore : Arena := s2Step195EntryGAfter

private theorem s2Step195EntryFv_Incoming : rowsOwned s2Step195EntryFvBefore [s2Step195EntryFvRow,s2Step195EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step195EntryFRow,s2Step195EntryGRow,s2Step195EntryFvRow,s2Step195EntryGvRow] 2 s2Step195EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step195EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
    decide +kernel

private theorem s2Step195EntryFv_Outgoing : rowsOwned s2Step195EntryGvAfter [s2Step195EntryFvOut,s2Step195EntryGvOut] :=
  hmrRows_owned_drop s2Step195EntryGvAfter [s2Step195EntryFOut,s2Step195EntryGOut,s2Step195EntryFvOut,s2Step195EntryGvOut] 2 s2Step195EntryBank_outgoingOwned

private theorem s2Step195EntryFv_distinct : (s2Step195EntryFvRow.sign::s2Step195EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195EntryFv_owned : (s2Step195EntryFvRow.sign::s2Step195EntryFvRow.payload).toFinset⊆s2Step195EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step195EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195EntryFv_reserved : s2Step195EntryFvBefore.reserve s2Step195EntryFvFresh.toFinset=some s2Step195EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step195EntryFvFresh,arenaWires]
  · norm_num [s2Step195EntryFvBefore,s2Step195EntryGAfter,s2Step195EntryFvFresh,arenaWires]
  · simp only [s2Step195EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step195EntryFv_checked : planRowResizeLog s2Step195EntryFvBefore s2Step195EntryFvRow 112 s2Step195EntryFvFresh=
    some (s2Step195EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784],770⟩,growRow 770 s2Step195EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step195EntryFvBefore s2Step195EntryFvAfter s2Step195EntryFvRow 112 s2Step195EntryFvFresh
    s2Step195EntryFv_distinct s2Step195EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step195EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step195EntryFvRow.payload++s2Step195EntryFvFresh) s2Step195EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step195EntryGBefore : Arena := s2Step195EntryFBefore

private theorem s2Step195EntryG_Incoming : rowsOwned s2Step195EntryGBefore [s2Step195EntryGRow,s2Step195EntryFvRow,s2Step195EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step195EntryFRow,s2Step195EntryGRow,s2Step195EntryFvRow,s2Step195EntryGvRow] 1 s2Step195EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step195EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
    decide +kernel

private theorem s2Step195EntryG_Outgoing : rowsOwned s2Step195EntryGvAfter [s2Step195EntryGOut,s2Step195EntryFvOut,s2Step195EntryGvOut] :=
  hmrRows_owned_drop s2Step195EntryGvAfter [s2Step195EntryFOut,s2Step195EntryGOut,s2Step195EntryFvOut,s2Step195EntryGvOut] 1 s2Step195EntryBank_outgoingOwned

private theorem s2Step195EntryG_distinct : (s2Step195EntryGRow.sign::s2Step195EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195EntryG_owned : (s2Step195EntryGRow.sign::s2Step195EntryGRow.payload).toFinset⊆s2Step195EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step195EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195EntryG_reserved : s2Step195EntryGBefore.reserve s2Step195EntryGFresh.toFinset=some s2Step195EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step195EntryGFresh,arenaWires]
  · norm_num [s2Step195EntryGBefore,s2Step195EntryFBefore,s2Step195EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step195EntryGAfter,s2Step195EntryGBefore,s2Step195EntryFBefore,s2Step195EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step195EntryG_checked : planRowResizeLog s2Step195EntryGBefore s2Step195EntryGRow 172 s2Step195EntryGFresh=
    some (s2Step195EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 817],769⟩,growRow 769 s2Step195EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step195EntryGBefore s2Step195EntryGAfter s2Step195EntryGRow 172 s2Step195EntryGFresh
    s2Step195EntryG_distinct s2Step195EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step195EntryG_reserved
  have rowEq : WindowRow.mk (s2Step195EntryGRow.payload++s2Step195EntryGFresh) s2Step195EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 817],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step195EntryGvBefore : Arena := s2Step195EntryGAfter

private theorem s2Step195EntryGv_Incoming : rowsOwned s2Step195EntryGvBefore [s2Step195EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step195EntryFRow,s2Step195EntryGRow,s2Step195EntryFvRow,s2Step195EntryGvRow] 3 s2Step195EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step195EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
    decide +kernel

private theorem s2Step195EntryGv_Outgoing : rowsOwned s2Step195EntryGvAfter [s2Step195EntryGvOut] :=
  hmrRows_owned_drop s2Step195EntryGvAfter [s2Step195EntryFOut,s2Step195EntryGOut,s2Step195EntryFvOut,s2Step195EntryGvOut] 3 s2Step195EntryBank_outgoingOwned

private theorem s2Step195EntryGv_distinct : (s2Step195EntryGvRow.sign::s2Step195EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195EntryGv_owned : (s2Step195EntryGvRow.sign::s2Step195EntryGvRow.payload).toFinset⊆s2Step195EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step195EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195EntryGv_reserved : s2Step195EntryGvBefore.reserve s2Step195EntryGvFresh.toFinset=some s2Step195EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step195EntryGvFresh,arenaWires]
  · norm_num [s2Step195EntryGvBefore,s2Step195EntryGAfter,s2Step195EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step195EntryGvAfter,s2Step195EntryGvBefore,s2Step195EntryGAfter,s2Step195EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step195EntryGv_checked : planRowResizeLog s2Step195EntryGvBefore s2Step195EntryGvRow 112 s2Step195EntryGvFresh=
    some (s2Step195EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 822],771⟩,growRow 771 s2Step195EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step195EntryGvBefore s2Step195EntryGvAfter s2Step195EntryGvRow 112 s2Step195EntryGvFresh
    s2Step195EntryGv_distinct s2Step195EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step195EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step195EntryGvRow.payload++s2Step195EntryGvFresh) s2Step195EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step195EntryBank_rows : planWindowRowsLog s2Step195EntryFBefore [(s2Step195EntryFRow,172),(s2Step195EntryGRow,172),(s2Step195EntryFvRow,112),(s2Step195EntryGvRow,112)] [s2Step195EntryFFresh,s2Step195EntryGFresh,s2Step195EntryFvFresh,s2Step195EntryGvFresh]=
    some (s2Step195EntryGvAfter,[s2Step195EntryFOut,s2Step195EntryGOut,s2Step195EntryFvOut,s2Step195EntryGvOut],(growRow 768 s2Step195EntryFFresh ++ (growRow 769 s2Step195EntryGFresh ++ (growRow 770 s2Step195EntryFvFresh ++ (growRow 771 s2Step195EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step195EntryGvAfter [] []=some (s2Step195EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step195EntryGvBefore s2Step195EntryGvAfter s2Step195EntryGvAfter
    s2Step195EntryGvRow s2Step195EntryGvOut 112 s2Step195EntryGvFresh [] [] []
    (growRow 771 s2Step195EntryGvFresh) ([]) s2Step195EntryGv_Incoming s2Step195EntryGv_checked h4 s2Step195EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step195EntryFvBefore s2Step195EntryFvAfter s2Step195EntryGvAfter
    s2Step195EntryFvRow s2Step195EntryFvOut 112 s2Step195EntryFvFresh [(s2Step195EntryGvRow,112)] [s2Step195EntryGvFresh] [s2Step195EntryGvOut]
    (growRow 770 s2Step195EntryFvFresh) ((growRow 771 s2Step195EntryGvFresh ++ [])) s2Step195EntryFv_Incoming s2Step195EntryFv_checked h3 s2Step195EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step195EntryGBefore s2Step195EntryGAfter s2Step195EntryGvAfter
    s2Step195EntryGRow s2Step195EntryGOut 172 s2Step195EntryGFresh [(s2Step195EntryFvRow,112),(s2Step195EntryGvRow,112)] [s2Step195EntryFvFresh,s2Step195EntryGvFresh] [s2Step195EntryFvOut,s2Step195EntryGvOut]
    (growRow 769 s2Step195EntryGFresh) ((growRow 770 s2Step195EntryFvFresh ++ (growRow 771 s2Step195EntryGvFresh ++ []))) s2Step195EntryG_Incoming s2Step195EntryG_checked h2 s2Step195EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step195EntryFBefore s2Step195EntryFAfter s2Step195EntryGvAfter
    s2Step195EntryFRow s2Step195EntryFOut 172 s2Step195EntryFFresh [(s2Step195EntryGRow,172),(s2Step195EntryFvRow,112),(s2Step195EntryGvRow,112)] [s2Step195EntryGFresh,s2Step195EntryFvFresh,s2Step195EntryGvFresh] [s2Step195EntryGOut,s2Step195EntryFvOut,s2Step195EntryGvOut]
    (growRow 768 s2Step195EntryFFresh) ((growRow 769 s2Step195EntryGFresh ++ (growRow 770 s2Step195EntryFvFresh ++ (growRow 771 s2Step195EntryGvFresh ++ [])))) s2Step195EntryF_Incoming s2Step195EntryF_checked h1 s2Step195EntryF_Outgoing
  exact h0

private theorem s2Step195EntryBank_checked : compileHmrBankResizeLog .entry s2Step195EntryFBefore ⟨s2Step195EntryFRow,s2Step195EntryGRow,s2Step195EntryFvRow,s2Step195EntryGvRow⟩ ⟨172,172,112,112⟩ [s2Step195EntryFFresh,s2Step195EntryGFresh,s2Step195EntryFvFresh,s2Step195EntryGvFresh]=
    some (s2Step195EntryGvAfter,⟨s2Step195EntryFOut,s2Step195EntryGOut,s2Step195EntryFvOut,s2Step195EntryGvOut⟩,(growRow 768 s2Step195EntryFFresh ++ (growRow 769 s2Step195EntryGFresh ++ (growRow 770 s2Step195EntryFvFresh ++ (growRow 771 s2Step195EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step195EntryBank_rows]
  rfl

private def s2Step195ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step195ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step195ExitFBefore : Arena := s2Step195ExitGAfter

private def s2Step195ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 814],768⟩

private def s2Step195ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827],770⟩

private def s2Step195ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 817, 826],769⟩

private def s2Step195ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 822, 807],771⟩

private theorem s2Step195ExitBank_incomingDistinct : ([s2Step195ExitGRow,s2Step195ExitFRow,s2Step195ExitFvRow,s2Step195ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195ExitF_Incoming : rowsOwned s2Step195ExitFBefore [s2Step195ExitFRow,s2Step195ExitFvRow,s2Step195ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step195ExitGRow,s2Step195ExitFRow,s2Step195ExitFvRow,s2Step195ExitGvRow] 1 s2Step195ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step195ExitFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
    decide +kernel

private theorem s2Step195ExitBank_outgoingOwned : rowsOwned s2Step195ExitGvAfter [s2Step195ExitGOut,s2Step195ExitFOut,s2Step195ExitFvOut,s2Step195ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step195ExitGvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
    decide +kernel

private theorem s2Step195ExitF_Outgoing : rowsOwned s2Step195ExitGvAfter [s2Step195ExitFOut,s2Step195ExitFvOut,s2Step195ExitGvOut] :=
  hmrRows_owned_drop s2Step195ExitGvAfter [s2Step195ExitGOut,s2Step195ExitFOut,s2Step195ExitFvOut,s2Step195ExitGvOut] 1 s2Step195ExitBank_outgoingOwned

private theorem s2Step195ExitF_distinct : (s2Step195ExitFRow.sign::s2Step195ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195ExitF_owned : (s2Step195ExitFRow.sign::s2Step195ExitFRow.payload).toFinset⊆s2Step195ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step195ExitFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195ExitF_retired : s2Step195ExitFBefore.retireSet s2Step195ExitFExtra.toFinset=s2Step195ExitFAfter := by
  unfold Arena.retireSet s2Step195ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step195ExitFBefore,s2Step195ExitGAfter,s2Step195ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step195ExitF_checked : planRowResizeLog s2Step195ExitFBefore s2Step195ExitFRow 172 []=
    some (s2Step195ExitFAfter,s2Step195ExitFOut,shrinkRow 768 s2Step195ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step195ExitFBefore s2Step195ExitFRow 172 s2Step195ExitF_distinct s2Step195ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step195ExitFRow.payload.take 172) s2Step195ExitFRow.sign=s2Step195ExitFOut := by decide +kernel
  have hi : s2Step195ExitFRow.payload.drop 172=s2Step195ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step195ExitF_retired] at result
  exact result

private def s2Step195ExitFvAfter : Arena := s2Step195ExitFAfter

private def s2Step195ExitFvBefore : Arena := s2Step195ExitFAfter

private theorem s2Step195ExitFv_Incoming : rowsOwned s2Step195ExitFvBefore [s2Step195ExitFvRow,s2Step195ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step195ExitGRow,s2Step195ExitFRow,s2Step195ExitFvRow,s2Step195ExitGvRow] 2 s2Step195ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step195ExitFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
    decide +kernel

private theorem s2Step195ExitFv_Outgoing : rowsOwned s2Step195ExitGvAfter [s2Step195ExitFvOut,s2Step195ExitGvOut] :=
  hmrRows_owned_drop s2Step195ExitGvAfter [s2Step195ExitGOut,s2Step195ExitFOut,s2Step195ExitFvOut,s2Step195ExitGvOut] 2 s2Step195ExitBank_outgoingOwned

private theorem s2Step195ExitFv_distinct : (s2Step195ExitFvRow.sign::s2Step195ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195ExitFv_owned : (s2Step195ExitFvRow.sign::s2Step195ExitFvRow.payload).toFinset⊆s2Step195ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step195ExitFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195ExitFv_reserved : s2Step195ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step195ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step195ExitFv_checked : planRowResizeLog s2Step195ExitFvBefore s2Step195ExitFvRow 113 []=
    some (s2Step195ExitFvAfter,s2Step195ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step195ExitFvBefore s2Step195ExitFvAfter s2Step195ExitFvRow 113 []
    s2Step195ExitFv_distinct s2Step195ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step195ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step195ExitFvRow.payload++[]) s2Step195ExitFvRow.sign=s2Step195ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step195ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private theorem s2Step195ExitG_Incoming : rowsOwned s2Step195ExitGBefore [s2Step195ExitGRow,s2Step195ExitFRow,s2Step195ExitFvRow,s2Step195ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step195ExitGRow,s2Step195ExitFRow,s2Step195ExitFvRow,s2Step195ExitGvRow] 0 s2Step195ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step195ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
    decide +kernel

private theorem s2Step195ExitG_Outgoing : rowsOwned s2Step195ExitGvAfter [s2Step195ExitGOut,s2Step195ExitFOut,s2Step195ExitFvOut,s2Step195ExitGvOut] :=
  hmrRows_owned_drop s2Step195ExitGvAfter [s2Step195ExitGOut,s2Step195ExitFOut,s2Step195ExitFvOut,s2Step195ExitGvOut] 0 s2Step195ExitBank_outgoingOwned

private theorem s2Step195ExitG_distinct : (s2Step195ExitGRow.sign::s2Step195ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195ExitG_owned : (s2Step195ExitGRow.sign::s2Step195ExitGRow.payload).toFinset⊆s2Step195ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step195ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195ExitG_retired : s2Step195ExitGBefore.retireSet s2Step195ExitGExtra.toFinset=s2Step195ExitGAfter := by
  unfold Arena.retireSet s2Step195ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step195ExitGBefore,s2Step195ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step195ExitG_checked : planRowResizeLog s2Step195ExitGBefore s2Step195ExitGRow 171 []=
    some (s2Step195ExitGAfter,s2Step195ExitGOut,shrinkRow 769 s2Step195ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step195ExitGBefore s2Step195ExitGRow 171 s2Step195ExitG_distinct s2Step195ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step195ExitGRow.payload.take 171) s2Step195ExitGRow.sign=s2Step195ExitGOut := by decide +kernel
  have hi : s2Step195ExitGRow.payload.drop 171=s2Step195ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step195ExitG_retired] at result
  exact result

private def s2Step195ExitGvBefore : Arena := s2Step195ExitFAfter

private theorem s2Step195ExitGv_Incoming : rowsOwned s2Step195ExitGvBefore [s2Step195ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step195ExitGRow,s2Step195ExitFRow,s2Step195ExitFvRow,s2Step195ExitGvRow] 3 s2Step195ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step195ExitGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
    decide +kernel

private theorem s2Step195ExitGv_Outgoing : rowsOwned s2Step195ExitGvAfter [s2Step195ExitGvOut] :=
  hmrRows_owned_drop s2Step195ExitGvAfter [s2Step195ExitGOut,s2Step195ExitFOut,s2Step195ExitFvOut,s2Step195ExitGvOut] 3 s2Step195ExitBank_outgoingOwned

private theorem s2Step195ExitGv_distinct : (s2Step195ExitGvRow.sign::s2Step195ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195ExitGv_owned : (s2Step195ExitGvRow.sign::s2Step195ExitGvRow.payload).toFinset⊆s2Step195ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step195ExitGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195ExitGv_retired : s2Step195ExitGvBefore.retireSet s2Step195ExitGvExtra.toFinset=s2Step195ExitGvAfter := by
  unfold Arena.retireSet s2Step195ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step195ExitGvBefore,s2Step195ExitFAfter,s2Step195ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step195ExitGv_checked : planRowResizeLog s2Step195ExitGvBefore s2Step195ExitGvRow 111 []=
    some (s2Step195ExitGvAfter,s2Step195ExitGvOut,shrinkRow 771 s2Step195ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step195ExitGvBefore s2Step195ExitGvRow 111 s2Step195ExitGv_distinct s2Step195ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step195ExitGvRow.payload.take 111) s2Step195ExitGvRow.sign=s2Step195ExitGvOut := by decide +kernel
  have hi : s2Step195ExitGvRow.payload.drop 111=s2Step195ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step195ExitGv_retired] at result
  exact result

private theorem s2Step195ExitBank_rows : planWindowRowsLog s2Step195ExitGBefore [(s2Step195ExitGRow,171),(s2Step195ExitFRow,172),(s2Step195ExitFvRow,113),(s2Step195ExitGvRow,111)] [[],[],[],[]]=
    some (s2Step195ExitGvAfter,[s2Step195ExitGOut,s2Step195ExitFOut,s2Step195ExitFvOut,s2Step195ExitGvOut],(shrinkRow 769 s2Step195ExitGExtra ++ (shrinkRow 768 s2Step195ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step195ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step195ExitGvAfter [] []=some (s2Step195ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step195ExitGvBefore s2Step195ExitGvAfter s2Step195ExitGvAfter
    s2Step195ExitGvRow s2Step195ExitGvOut 111 [] [] [] []
    (shrinkRow 771 s2Step195ExitGvExtra) ([]) s2Step195ExitGv_Incoming s2Step195ExitGv_checked h4 s2Step195ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step195ExitFvBefore s2Step195ExitFvAfter s2Step195ExitGvAfter
    s2Step195ExitFvRow s2Step195ExitFvOut 113 [] [(s2Step195ExitGvRow,111)] [[]] [s2Step195ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step195ExitGvExtra ++ [])) s2Step195ExitFv_Incoming s2Step195ExitFv_checked h3 s2Step195ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step195ExitFBefore s2Step195ExitFAfter s2Step195ExitGvAfter
    s2Step195ExitFRow s2Step195ExitFOut 172 [] [(s2Step195ExitFvRow,113),(s2Step195ExitGvRow,111)] [[],[]] [s2Step195ExitFvOut,s2Step195ExitGvOut]
    (shrinkRow 768 s2Step195ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step195ExitGvExtra ++ []))) s2Step195ExitF_Incoming s2Step195ExitF_checked h2 s2Step195ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step195ExitGBefore s2Step195ExitGAfter s2Step195ExitGvAfter
    s2Step195ExitGRow s2Step195ExitGOut 171 [] [(s2Step195ExitFRow,172),(s2Step195ExitFvRow,113),(s2Step195ExitGvRow,111)] [[],[],[]] [s2Step195ExitFOut,s2Step195ExitFvOut,s2Step195ExitGvOut]
    (shrinkRow 769 s2Step195ExitGExtra) ((shrinkRow 768 s2Step195ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step195ExitGvExtra ++ [])))) s2Step195ExitG_Incoming s2Step195ExitG_checked h1 s2Step195ExitG_Outgoing
  exact h0

private theorem s2Step195ExitBank_checked : compileHmrBankResizeLog .exit s2Step195ExitGBefore ⟨s2Step195ExitFRow,s2Step195ExitGRow,s2Step195ExitFvRow,s2Step195ExitGvRow⟩ ⟨172,171,113,111⟩ [[],[],[],[]]=
    some (s2Step195ExitGvAfter,⟨s2Step195ExitFOut,s2Step195ExitGOut,s2Step195ExitFvOut,s2Step195ExitGvOut⟩,(shrinkRow 769 s2Step195ExitGExtra ++ (shrinkRow 768 s2Step195ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step195ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step195ExitBank_rows]
  rfl

private theorem s2Step195Add0_apart : Disjoint s2Step195Add0Arena.live s2Step195Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step195Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195Add0_card : s2Step195Add0Arena.live.card=886 := by
  decide +kernel

private theorem s2Step195Add0_borrowed : s2Step195Add0Arena.checkBorrow (hmrHybridCount s2Step195Add0Arena s2Step195Add0B.length) s2Step195Add0Work=some s2Step195Add0During := by
  have len : s2Step195Add0Work.length=hmrHybridCount s2Step195Add0Arena s2Step195Add0B.length := by
    rw [hmrHybridCount,s2Step195Add0_card]
    decide +kernel
  have nd : s2Step195Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step195Add0Arena s2Step195Add0During s2Step195Add0Work.toFinset s2Step195Add0_bounded s2Step195Add0_apart rfl

private theorem s2Step195Add0_distinct : (840::829::794::(s2Step195Add0A++s2Step195Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195Add0_owned : (840::829::794::(s2Step195Add0A++s2Step195Add0B)).toFinset⊆s2Step195Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step195Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195Add0_checked : compileHmrHybridCinLog s2Step195Add0Arena 829 840 794 s2Step195Add0A s2Step195Add0B s2Step195Add0Work=some s2Step195Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step195Add0Arena s2Step195Add0During 829 840 794 s2Step195Add0A s2Step195Add0B s2Step195Add0Work
    (by decide +kernel) (by decide +kernel) s2Step195Add0_distinct
    (fun q hq => s2Step195Add0_owned (List.mem_toFinset.mpr hq)) s2Step195Add0_borrowed

private theorem s2Step195Add1_apart : Disjoint s2Step195Add1Arena.live s2Step195Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step195Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195Add1_card : s2Step195Add1Arena.live.card=886 := by
  decide +kernel

private theorem s2Step195Add1_borrowed : s2Step195Add1Arena.checkBorrow (hmrHybridCount s2Step195Add1Arena s2Step195Add1B.length) s2Step195Add1Work=some s2Step195Add1During := by
  have len : s2Step195Add1Work.length=hmrHybridCount s2Step195Add1Arena s2Step195Add1B.length := by
    rw [hmrHybridCount,s2Step195Add1_card]
    decide +kernel
  have nd : s2Step195Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step195Add1Arena s2Step195Add1During s2Step195Add1Work.toFinset s2Step195Add1_bounded s2Step195Add1_apart rfl

private theorem s2Step195Add1_distinct : (840::829::794::(s2Step195Add1A++s2Step195Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195Add1_owned : (840::829::794::(s2Step195Add1A++s2Step195Add1B)).toFinset⊆s2Step195Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step195Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195Add1_checked : compileHmrHybridCinLog s2Step195Add1Arena 829 840 794 s2Step195Add1A s2Step195Add1B s2Step195Add1Work=some s2Step195Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step195Add1Arena s2Step195Add1During 829 840 794 s2Step195Add1A s2Step195Add1B s2Step195Add1Work
    (by decide +kernel) (by decide +kernel) s2Step195Add1_distinct
    (fun q hq => s2Step195Add1_owned (List.mem_toFinset.mpr hq)) s2Step195Add1_borrowed

private theorem s2Step195F4_apart : Disjoint (s2Step195Add0A++s2Step195Add0B).toFinset (s2Step195Add1A++s2Step195Add1B).toFinset := by
  have nd : ((s2Step195Add0A++s2Step195Add0B)++(s2Step195Add1A++s2Step195Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step195F4_carry : s2Step195F4FlagArena.checkBorrow 1 [794]=some s2Step195Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step195F4FlagArena,s2Step195HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step195F4FlagArena,s2Step195HeadFvAfter,s2Step195Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step195F4_distinct : (837::829::840::794::((s2Step195Add0A++s2Step195Add1A)++(s2Step195Add0B++s2Step195Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195F4_flag : s2Step195HeadFvAfter.checkBorrow 1 [840]=some s2Step195F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step195HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step195F4_owned : (837::829::((s2Step195Add0A++s2Step195Add1A)++(s2Step195Add0B++s2Step195Add1B))).toFinset⊆s2Step195HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step195HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195F4_checked : compileHmrHybridF4Log s2Step195HeadFvAfter 837 829 s2Step195Add0A s2Step195Add0B s2Step195Add1A s2Step195Add1B [840] [794] s2Step195Add0Work s2Step195Add1Work=some s2Step195F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step195HeadFvAfter s2Step195F4FlagArena s2Step195Add0Arena s2Step195Add0During s2Step195Add1During 837 829
    s2Step195Add0A s2Step195Add0B s2Step195Add1A s2Step195Add1B [840] [794] s2Step195Add0Work s2Step195Add1Work
    (fun q hq => s2Step195F4_owned (List.mem_toFinset.mpr hq)) s2Step195F4_flag s2Step195F4_carry
    s2Step195F4_distinct s2Step195F4_apart s2Step195Add0_checked s2Step195Add1_checked

private theorem s2Step195Front_branch : s2Step195FrontSigmaArena.checkBorrow 1 [829]=some s2Step195HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step195FrontSigmaArena,s2Step195EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step195FrontSigmaArena,s2Step195EntryGvAfter,s2Step195HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step195Front_entry : HmrFrontEntryValid s2Step195EntryFBefore s2Step195FrontBank 172 112 ⟨172,171,113,111⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step195FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step195EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step195EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step195FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step195Front_sigma : s2Step195EntryGvAfter.checkBorrow 1 [837]=some s2Step195FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step195EntryGvAfter,arenaWires]
  · rfl

private def s2Step195HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step195HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step195HeadFBefore : Arena := s2Step195HeadGAfter

private def s2Step195HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩

private def s2Step195HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784],770⟩

private def s2Step195HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 817],769⟩

private def s2Step195HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 822],771⟩

private theorem s2Step195HeadBank_incomingDistinct : ([s2Step195HeadGRow,s2Step195HeadFRow,s2Step195HeadGvRow,s2Step195HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195HeadF_Incoming : rowsOwned s2Step195HeadFBefore [s2Step195HeadFRow,s2Step195HeadGvRow,s2Step195HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step195HeadGRow,s2Step195HeadFRow,s2Step195HeadGvRow,s2Step195HeadFvRow] 1 s2Step195HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step195HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
    decide +kernel

private theorem s2Step195HeadBank_outgoingOwned : rowsOwned s2Step195HeadFvAfter [s2Step195HeadGOut,s2Step195HeadFOut,s2Step195HeadGvOut,s2Step195HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step195HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
    decide +kernel

private theorem s2Step195HeadF_Outgoing : rowsOwned s2Step195HeadFvAfter [s2Step195HeadFOut,s2Step195HeadGvOut,s2Step195HeadFvOut] :=
  hmrRows_owned_drop s2Step195HeadFvAfter [s2Step195HeadGOut,s2Step195HeadFOut,s2Step195HeadGvOut,s2Step195HeadFvOut] 1 s2Step195HeadBank_outgoingOwned

private theorem s2Step195HeadF_distinct : (s2Step195HeadFRow.sign::s2Step195HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195HeadF_owned : (s2Step195HeadFRow.sign::s2Step195HeadFRow.payload).toFinset⊆s2Step195HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step195HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195HeadF_reserved : s2Step195HeadFBefore.reserve s2Step195HeadFFresh.toFinset=some s2Step195HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step195HeadFFresh,arenaWires]
  · norm_num [s2Step195HeadFBefore,s2Step195HeadGAfter,s2Step195HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step195HeadFAfter,s2Step195HeadFBefore,s2Step195HeadGAfter,s2Step195HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step195HeadF_checked : planRowResizeLog s2Step195HeadFBefore s2Step195HeadFRow 173 s2Step195HeadFFresh=
    some (s2Step195HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 814],768⟩,growRow 768 s2Step195HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step195HeadFBefore s2Step195HeadFAfter s2Step195HeadFRow 173 s2Step195HeadFFresh
    s2Step195HeadF_distinct s2Step195HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step195HeadF_reserved
  have rowEq : WindowRow.mk (s2Step195HeadFRow.payload++s2Step195HeadFFresh) s2Step195HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 814],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step195HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)),Finset.filter_subset _ _⟩

private def s2Step195HeadFvBefore : Arena := s2Step195HeadGvAfter

private theorem s2Step195HeadFv_Incoming : rowsOwned s2Step195HeadFvBefore [s2Step195HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step195HeadGRow,s2Step195HeadFRow,s2Step195HeadGvRow,s2Step195HeadFvRow] 3 s2Step195HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step195HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
    decide +kernel

private theorem s2Step195HeadFv_Outgoing : rowsOwned s2Step195HeadFvAfter [s2Step195HeadFvOut] :=
  hmrRows_owned_drop s2Step195HeadFvAfter [s2Step195HeadGOut,s2Step195HeadFOut,s2Step195HeadGvOut,s2Step195HeadFvOut] 3 s2Step195HeadBank_outgoingOwned

private theorem s2Step195HeadFv_distinct : (s2Step195HeadFvRow.sign::s2Step195HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195HeadFv_owned : (s2Step195HeadFvRow.sign::s2Step195HeadFvRow.payload).toFinset⊆s2Step195HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step195HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195HeadFv_reserved : s2Step195HeadFvBefore.reserve s2Step195HeadFvFresh.toFinset=some s2Step195HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step195HeadFvFresh,arenaWires]
  · norm_num [s2Step195HeadFvBefore,s2Step195HeadGvAfter,s2Step195HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step195HeadFvAfter,s2Step195HeadFvBefore,s2Step195HeadGvAfter,s2Step195HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step195HeadFv_checked : planRowResizeLog s2Step195HeadFvBefore s2Step195HeadFvRow 113 s2Step195HeadFvFresh=
    some (s2Step195HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827],770⟩,growRow 770 s2Step195HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step195HeadFvBefore s2Step195HeadFvAfter s2Step195HeadFvRow 113 s2Step195HeadFvFresh
    s2Step195HeadFv_distinct s2Step195HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step195HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step195HeadFvRow.payload++s2Step195HeadFvFresh) s2Step195HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step195HeadG_Incoming : rowsOwned s2Step195HeadGBefore [s2Step195HeadGRow,s2Step195HeadFRow,s2Step195HeadGvRow,s2Step195HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step195HeadGRow,s2Step195HeadFRow,s2Step195HeadGvRow,s2Step195HeadFvRow] 0 s2Step195HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step195HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
    decide +kernel

private theorem s2Step195HeadG_Outgoing : rowsOwned s2Step195HeadFvAfter [s2Step195HeadGOut,s2Step195HeadFOut,s2Step195HeadGvOut,s2Step195HeadFvOut] :=
  hmrRows_owned_drop s2Step195HeadFvAfter [s2Step195HeadGOut,s2Step195HeadFOut,s2Step195HeadGvOut,s2Step195HeadFvOut] 0 s2Step195HeadBank_outgoingOwned

private theorem s2Step195HeadG_distinct : (s2Step195HeadGRow.sign::s2Step195HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195HeadG_owned : (s2Step195HeadGRow.sign::s2Step195HeadGRow.payload).toFinset⊆s2Step195HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step195HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195HeadG_reserved : s2Step195HeadGBefore.reserve s2Step195HeadGFresh.toFinset=some s2Step195HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step195HeadGFresh,arenaWires]
  · norm_num [s2Step195HeadGBefore,s2Step195HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step195HeadGAfter,s2Step195HeadGBefore,s2Step195HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step195HeadG_checked : planRowResizeLog s2Step195HeadGBefore s2Step195HeadGRow 173 s2Step195HeadGFresh=
    some (s2Step195HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 817, 826],769⟩,growRow 769 s2Step195HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step195HeadGBefore s2Step195HeadGAfter s2Step195HeadGRow 173 s2Step195HeadGFresh
    s2Step195HeadG_distinct s2Step195HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step195HeadG_reserved
  have rowEq : WindowRow.mk (s2Step195HeadGRow.payload++s2Step195HeadGFresh) s2Step195HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 817, 826],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step195HeadGvBefore : Arena := s2Step195HeadFAfter

private theorem s2Step195HeadGv_Incoming : rowsOwned s2Step195HeadGvBefore [s2Step195HeadGvRow,s2Step195HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step195HeadGRow,s2Step195HeadFRow,s2Step195HeadGvRow,s2Step195HeadFvRow] 2 s2Step195HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step195HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
    decide +kernel

private theorem s2Step195HeadGv_Outgoing : rowsOwned s2Step195HeadFvAfter [s2Step195HeadGvOut,s2Step195HeadFvOut] :=
  hmrRows_owned_drop s2Step195HeadFvAfter [s2Step195HeadGOut,s2Step195HeadFOut,s2Step195HeadGvOut,s2Step195HeadFvOut] 2 s2Step195HeadBank_outgoingOwned

private theorem s2Step195HeadGv_distinct : (s2Step195HeadGvRow.sign::s2Step195HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step195HeadGv_owned : (s2Step195HeadGvRow.sign::s2Step195HeadGvRow.payload).toFinset⊆s2Step195HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step195HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891)) rfl
  decide +kernel

private theorem s2Step195HeadGv_reserved : s2Step195HeadGvBefore.reserve s2Step195HeadGvFresh.toFinset=some s2Step195HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step195HeadGvFresh,arenaWires]
  · norm_num [s2Step195HeadGvBefore,s2Step195HeadFAfter,s2Step195HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step195HeadGvAfter,s2Step195HeadGvBefore,s2Step195HeadFAfter,s2Step195HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step195HeadGv_checked : planRowResizeLog s2Step195HeadGvBefore s2Step195HeadGvRow 113 s2Step195HeadGvFresh=
    some (s2Step195HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 822, 807],771⟩,growRow 771 s2Step195HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step195HeadGvBefore s2Step195HeadGvAfter s2Step195HeadGvRow 113 s2Step195HeadGvFresh
    s2Step195HeadGv_distinct s2Step195HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step195HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step195HeadGvRow.payload++s2Step195HeadGvFresh) s2Step195HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 822, 807],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step195HeadBank_rows : planWindowRowsLog s2Step195HeadGBefore [(s2Step195HeadGRow,173),(s2Step195HeadFRow,173),(s2Step195HeadGvRow,113),(s2Step195HeadFvRow,113)] [s2Step195HeadGFresh,s2Step195HeadFFresh,s2Step195HeadGvFresh,s2Step195HeadFvFresh]=
    some (s2Step195HeadFvAfter,[s2Step195HeadGOut,s2Step195HeadFOut,s2Step195HeadGvOut,s2Step195HeadFvOut],(growRow 769 s2Step195HeadGFresh ++ (growRow 768 s2Step195HeadFFresh ++ (growRow 771 s2Step195HeadGvFresh ++ (growRow 770 s2Step195HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step195HeadFvAfter [] []=some (s2Step195HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step195HeadFvBefore s2Step195HeadFvAfter s2Step195HeadFvAfter
    s2Step195HeadFvRow s2Step195HeadFvOut 113 s2Step195HeadFvFresh [] [] []
    (growRow 770 s2Step195HeadFvFresh) ([]) s2Step195HeadFv_Incoming s2Step195HeadFv_checked h4 s2Step195HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step195HeadGvBefore s2Step195HeadGvAfter s2Step195HeadFvAfter
    s2Step195HeadGvRow s2Step195HeadGvOut 113 s2Step195HeadGvFresh [(s2Step195HeadFvRow,113)] [s2Step195HeadFvFresh] [s2Step195HeadFvOut]
    (growRow 771 s2Step195HeadGvFresh) ((growRow 770 s2Step195HeadFvFresh ++ [])) s2Step195HeadGv_Incoming s2Step195HeadGv_checked h3 s2Step195HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step195HeadFBefore s2Step195HeadFAfter s2Step195HeadFvAfter
    s2Step195HeadFRow s2Step195HeadFOut 173 s2Step195HeadFFresh [(s2Step195HeadGvRow,113),(s2Step195HeadFvRow,113)] [s2Step195HeadGvFresh,s2Step195HeadFvFresh] [s2Step195HeadGvOut,s2Step195HeadFvOut]
    (growRow 768 s2Step195HeadFFresh) ((growRow 771 s2Step195HeadGvFresh ++ (growRow 770 s2Step195HeadFvFresh ++ []))) s2Step195HeadF_Incoming s2Step195HeadF_checked h2 s2Step195HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step195HeadGBefore s2Step195HeadGAfter s2Step195HeadFvAfter
    s2Step195HeadGRow s2Step195HeadGOut 173 s2Step195HeadGFresh [(s2Step195HeadFRow,173),(s2Step195HeadGvRow,113),(s2Step195HeadFvRow,113)] [s2Step195HeadFFresh,s2Step195HeadGvFresh,s2Step195HeadFvFresh] [s2Step195HeadFOut,s2Step195HeadGvOut,s2Step195HeadFvOut]
    (growRow 769 s2Step195HeadGFresh) ((growRow 768 s2Step195HeadFFresh ++ (growRow 771 s2Step195HeadGvFresh ++ (growRow 770 s2Step195HeadFvFresh ++ [])))) s2Step195HeadG_Incoming s2Step195HeadG_checked h1 s2Step195HeadG_Outgoing
  exact h0

private theorem s2Step195HeadBank_checked : compileHmrBankResizeLog .headroom s2Step195HeadGBefore ⟨s2Step195HeadFRow,s2Step195HeadGRow,s2Step195HeadFvRow,s2Step195HeadGvRow⟩ ⟨173,173,113,113⟩ [s2Step195HeadGFresh,s2Step195HeadFFresh,s2Step195HeadGvFresh,s2Step195HeadFvFresh]=
    some (s2Step195HeadFvAfter,⟨s2Step195HeadFOut,s2Step195HeadGOut,s2Step195HeadFvOut,s2Step195HeadGvOut⟩,(growRow 769 s2Step195HeadGFresh ++ (growRow 768 s2Step195HeadFFresh ++ (growRow 771 s2Step195HeadGvFresh ++ (growRow 770 s2Step195HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step195HeadBank_rows]
  rfl

private theorem s2Step195Front_checked : compileHmrSourceFrontLog s2Step195EntryFBefore s2Step195FrontBank 172 112 ⟨172,171,113,111⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step195FrontLog=some s2Step195FrontPlan := by
  have pairEq : s2Step195FrontPair=⟨s2Step195HeadFRow,s2Step195HeadGRow,s2Step195HeadFvRow,s2Step195HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step195FrontHead=⟨s2Step195ExitFRow,s2Step195ExitGRow,s2Step195ExitFvRow,s2Step195ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step195Add0A=s2Step195FrontHead.f.wires := by decide +kernel
  have gEq : s2Step195Add0B=s2Step195FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step195Add1A=s2Step195FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step195Add1B=s2Step195FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step195EntryFBefore s2Step195FrontBank 172 112 ⟨172,171,113,111⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step195FrontLog s2Step195FrontPlan
  · exact s2Step195Front_entry
  · exact s2Step195EntryBank_checked
  · exact s2Step195Front_sigma
  · rfl
  · exact s2Step195Front_branch
  · rfl
  · simpa only [s2Step195FrontPlan,pairEq] using s2Step195HeadBank_checked
  · simpa only [s2Step195FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step195F4_checked
  · exact s2Step195Counter_checked
  · rfl
  · simpa only [s2Step195FrontPlan,headEq] using s2Step195ExitBank_checked

private theorem s2Step195Complete_explicit_checked : compileHmrEarlyStepLog s2Step195EntryFBefore s2Step195FrontBank 172 112 ⟨172,171,113,111⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890] 45 s2Step195CompleteLog=some s2Step195CompletePlan := by
  let Q := s2Step195EarlyControlPlan
  have hq := s2Step195EarlyControl_plan_checked
  have fv1 : s2Step195CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step195CompleteOut.fv.payload[2]?.getD s2Step195CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step195CompleteOut.fv.payload[3]?.getD s2Step195CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step195CompleteOut.fv.payload[4]?.getD s2Step195CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step195EntryFBefore s2Step195EarlyControlArena s2Step195FrontBank 172 112 ⟨172,171,113,111⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890] 45 s2Step195CompleteLog s2Step195FrontPlan Q
    s2Step195Front_checked s2Step195Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step195Complete_owned s2Step195Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step195EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890] 777 837 s2Step195CompleteOut.fv.second (s2Step195CompleteOut.fv.payload[2]?.getD s2Step195CompleteOut.fv.sign) (s2Step195CompleteOut.fv.payload[3]?.getD s2Step195CompleteOut.fv.sign) (s2Step195CompleteOut.fv.payload[4]?.getD s2Step195CompleteOut.fv.sign) 829 45 s2Step195EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep195Arena : Arena := s2Step195EntryFBefore
def s2PrivateStep195Bank : WindowBank := s2Step195FrontBank
def s2PrivateStep195Spec : HmrSourceWalkStepLog := ⟨172,112,⟨172,171,113,111⟩,45,.early s2Step195CompleteLog⟩
def s2PrivateStep195Plan : HmrSourceStepPlan := .early s2Step195CompletePlan
theorem s2PrivateStep195_source : s2PrivateStep195Spec=s2ObservedLogs192[3] := rfl
theorem s2PrivateStep195_checked : compileHmrSourceStepLog s2PrivateStep195Arena s2PrivateStep195Bank
    s2PrivateStep195Spec.fgWidth s2PrivateStep195Spec.vWidth s2PrivateStep195Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890]
    6 498 195 s2PrivateStep195Spec.need none s2PrivateStep195Spec.log=some s2PrivateStep195Plan := by
  change compileHmrSourceStepLog s2Step195EntryFBefore s2Step195FrontBank 172 112 ⟨172,171,113,111⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890] 6 498 195 45 none (.early s2Step195CompleteLog)=some (.early s2Step195CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 195<498)]
  rw [s2Step195Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
