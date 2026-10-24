import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep194
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

private def s2Step196CompleteMoves : List (Wire × Wire) := [(842,170)]

private def s2Step196EarlyControlLog : HmrEarlyControlLog := ⟨[842, 822, 840, 794, 826],[829],[817],[867, 877, 879, 882, 885, 891],[893]⟩

private def s2Step196FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [829], [], [837, 822]],[[817], [826], [840], [794]],[[], [], [], []]⟩,[807],[814],[867],[877],[879, 882, 885, 891, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[879, 882, 885, 891, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882]⟩

private def s2Step196CompleteLog : HmrEarlyStepLog := ⟨s2Step196FrontLog,s2Step196CompleteMoves,s2Step196EarlyControlLog⟩

private def s2Step196ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩

private def s2Step196ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827],770⟩

private def s2Step196ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169],769⟩

private def s2Step196ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837],771⟩

private def s2Step196FrontOut : WindowBank := ⟨s2Step196ExitFOut,s2Step196ExitGOut,s2Step196ExitFvOut,s2Step196ExitGvOut⟩

private def s2Step196CompleteOut : WindowBank := s2Step196FrontOut.repacked s2Step196CompleteMoves

private def s2Step196EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step196EarlyControlPositiveArena,[829],s2Step196EarlyControlEqualityArena,[817],⟨⟨807,false⟩,[⟨⟨829,false⟩,817⟩]⟩⟩

private def s2Step196EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step196EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step196EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step196EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step196EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,842⟩,⟨⟨774,false⟩,822⟩,⟨⟨775,false⟩,840⟩,⟨⟨776,false⟩,794⟩,⟨⟨777,false⟩,826⟩]⟩

private def s2Step196EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step196EarlyControlZeroArena,s2Step196EarlyControlZeroPlan,s2Step196EarlyControlClassPlan,s2Step196EarlyControlFlagArena,s2Step196EarlyControlFittedArena,s2Step196EarlyControlHistoryArena,s2Step196EarlyControlSigmaArena,s2Step196EarlyControlOutputArena,s2Step196EarlyControlLog⟩

private def s2Step196CounterWork : List Wire := [867, 877, 879, 882]

private theorem s2Step196Counter_bounded : s2Step196CounterWork.toFinset⊆arenaWires := by norm_num [s2Step196CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step196HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196CounterDuring : Arena := ⟨s2Step196HeadFvAfter.live∪s2Step196CounterWork.toFinset,Finset.union_subset s2Step196HeadFvAfter.bounded s2Step196Counter_bounded⟩

private def s2Step196EntryFFresh : List Wire := []

private def s2Step196EntryFvFresh : List Wire := []

private def s2Step196EntryGFresh : List Wire := [829]

private def s2Step196EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196EntryGvFresh : List Wire := [837, 822]

private def s2Step196ExitFExtra : List Wire := [826]

private def s2Step196ExitFvExtra : List Wire := [794]

private def s2Step196ExitGExtra : List Wire := [170, 829, 817]

private def s2Step196ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<170) ∨ (171≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196ExitGvExtra : List Wire := [822, 840]

private def s2Step196Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196Add0Work : List Wire := [879, 882, 885, 891, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step196Add0_bounded : s2Step196Add0Work.toFinset⊆arenaWires := by
  have h : s2Step196Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step196Add0During : Arena := ⟨s2Step196Add0Arena.live∪s2Step196Add0Work.toFinset,Finset.union_subset s2Step196Add0Arena.bounded s2Step196Add0_bounded⟩

private def s2Step196Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196Add1Work : List Wire := [879, 882, 885, 891, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step196Add1_bounded : s2Step196Add1Work.toFinset⊆arenaWires := by
  have h : s2Step196Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step196Add1During : Arena := ⟨s2Step196Add1Arena.live∪s2Step196Add1Work.toFinset,Finset.union_subset s2Step196Add1Arena.bounded s2Step196Add1_bounded⟩

private def s2Step196F4FlagArena : Arena := ⟨s2Step196HeadFvAfter.live∪{867},Finset.union_subset s2Step196HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step196F4Plan : HmrHybridF4Plan := ⟨s2Step196F4FlagArena,[867],s2Step196Add0Arena,[877],s2Step196Add0During,s2Step196Add0Work,s2Step196Add1During,s2Step196Add1Work⟩

private def s2Step196HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 826],768⟩

private def s2Step196HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 794],770⟩

private def s2Step196HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 829, 817],769⟩

private def s2Step196HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 822, 840],771⟩

private def s2Step196FrontHead : WindowBank := ⟨s2Step196HeadFOut,s2Step196HeadGOut,s2Step196HeadFvOut,s2Step196HeadGvOut⟩

private def s2Step196EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩

private def s2Step196EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827],770⟩

private def s2Step196EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 829],769⟩

private def s2Step196EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 822],771⟩

private def s2Step196FrontPair : WindowBank := ⟨s2Step196EntryFOut,s2Step196EntryGOut,s2Step196EntryFvOut,s2Step196EntryGvOut⟩

private def s2Step196FrontSigmaArena : Arena := ⟨s2Step196EntryGvAfter.live∪{807},Finset.union_subset s2Step196EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step196HeadFFresh : List Wire := [826]

private def s2Step196HeadFvFresh : List Wire := [794]

private def s2Step196HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196HeadGFresh : List Wire := [817]

private def s2Step196HeadGvFresh : List Wire := [840]

private def s2Step196FrontPlan : HmrSourceFront := ⟨s2Step196EntryGvAfter,s2Step196FrontPair,(growRow 768 s2Step196EntryFFresh ++ (growRow 769 s2Step196EntryGFresh ++ (growRow 770 s2Step196EntryFvFresh ++ (growRow 771 s2Step196EntryGvFresh ++ [])))),s2Step196FrontSigmaArena,[807],s2Step196HeadGBefore,[814],
  s2Step196HeadFvAfter,s2Step196FrontHead,(growRow 769 s2Step196HeadGFresh ++ (growRow 768 s2Step196HeadFFresh ++ (growRow 771 s2Step196HeadGvFresh ++ (growRow 770 s2Step196HeadFvFresh ++ [])))),s2Step196F4Plan,s2Step196CounterDuring,s2Step196CounterWork,s2Step196ExitGvAfter,s2Step196FrontOut,(shrinkRow 769 s2Step196ExitGExtra ++ (shrinkRow 768 s2Step196ExitFExtra ++ (shrinkRow 770 s2Step196ExitFvExtra ++ (shrinkRow 771 s2Step196ExitGvExtra ++ []))))⟩

private def s2Step196CompletePlan : HmrEarlyStepPlan := ⟨s2Step196FrontPlan,s2Step196EarlyControlArena,s2Step196EarlyControlPlan,s2Step196CompleteMoves⟩

private theorem s2Step196Complete_apart : List.Disjoint (s2Step196CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [807, 814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892] := by
  have nd : ((s2Step196CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[807, 814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step196Complete_owned : (s2Step196CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step196EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step196EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private def s2Step196CompleteMoveArena : Arena := ⟨s2Step196ExitGvAfter.live∪{170},Finset.union_subset s2Step196ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step196Complete_repack : s2Step196ExitGvAfter.checkRepack s2Step196CompleteMoves=some s2Step196EarlyControlArena := by
  have owned : 842∈s2Step196ExitGvAfter.live := by norm_num [s2Step196ExitGvAfter,arenaWires]
  have reserve : s2Step196ExitGvAfter.reserve {170}=some s2Step196CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step196ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step196CompleteMoveArena.retireSet {842}=s2Step196EarlyControlArena := by
    unfold Arena.retireSet s2Step196EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step196CompleteMoveArena,s2Step196ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step196CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step196CompleteMoveArena.retireSet {842}).checkRepack []=some s2Step196EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step196EarlyControl_branchOwned : ([814] : List Wire).toFinset⊆s2Step196EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step196EarlyControlSigmaArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step196EarlyControl_branch : compileHmrBranchRetirement s2Step196EarlyControlSigmaArena 814=some s2Step196EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step196EarlyControl_branchOwned
  · ext q
    simp [s2Step196EarlyControlOutputArena,s2Step196EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step196EarlyControl_classEqualityBorrow : s2Step196EarlyControlPositiveArena.checkBorrow (([807, 829] : List Wire).length-1) s2Step196EarlyControlLog.classWork=some s2Step196EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step196EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step196EarlyControlPositiveArena (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
      decide +kernel
    · ext q
      simp [s2Step196EarlyControlEqualityArena,s2Step196EarlyControlPositiveArena,s2Step196EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step196EarlyControl_classEqualityOwned : ([807, 829] : List Wire).toFinset⊆s2Step196EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step196EarlyControlPositiveArena (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196EarlyControl_classEquality : compileHmrEqualityLog s2Step196EarlyControlPositiveArena [807, 829] 0 s2Step196EarlyControlLog.classWork=some (s2Step196EarlyControlEqualityArena,s2Step196EarlyControlLog.classWork,s2Step196EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step196EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step196EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step196EarlyControl_classOwned : ([777, 826, 807] : List Wire).toFinset⊆s2Step196EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step196EarlyControlZeroArena (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196EarlyControl_positiveBorrow : s2Step196EarlyControlZeroArena.checkBorrow (1) s2Step196EarlyControlLog.positiveWork=some s2Step196EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step196EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step196EarlyControlZeroArena (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
      decide +kernel
    · ext q
      simp [s2Step196EarlyControlPositiveArena,s2Step196EarlyControlZeroArena,s2Step196EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step196EarlyControl_class : compileHmrSourceClassLog s2Step196EarlyControlZeroArena false 777 s2Step196EarlyControlZeroPlan.top 0 807 s2Step196EarlyControlLog.positiveWork s2Step196EarlyControlLog.classWork=some s2Step196EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step196EarlyControlClassPlan s2Step196EarlyControlZeroArena false 777 s2Step196EarlyControlZeroPlan.top 0 807
  constructor
  · decide +kernel
  · exact s2Step196EarlyControl_classOwned
  · exact s2Step196EarlyControl_positiveBorrow
  · exact s2Step196EarlyControl_classEquality

private theorem s2Step196EarlyControl_entryRecordOwned : ([814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892] : List Wire).toFinset⊆s2Step196EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step196EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196EarlyControl_entrySigmaOwned : ([807, 254] : List Wire).toFinset⊆s2Step196EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step196EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196EarlyControl_fitBorrow : s2Step196EarlyControlFlagArena.checkBorrow ((46-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892] : List Wire).length)) s2Step196EarlyControlLog.recordFresh=some s2Step196EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step196EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step196EarlyControlFlagArena (fun q => (0≤q ∧ q<893)) rfl
      decide +kernel
    · ext q
      simp [s2Step196EarlyControlFittedArena,s2Step196EarlyControlFlagArena,s2Step196EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step196EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892] : List Wire).toFinset⊆s2Step196EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step196EarlyControlFlagArena (fun q => (0≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196EarlyControl_fit : compileHmrRecordGrowLog s2Step196EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892] 46 s2Step196EarlyControlLog.recordFresh=some s2Step196EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step196EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step196EarlyControl_fitBorrow

private theorem s2Step196EarlyControl_flagsBorrow : s2Step196EarlyControlEqualityArena.checkBorrow (6) s2Step196EarlyControlLog.flagWork=some s2Step196EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step196EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step196EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
      decide +kernel
    · ext q
      simp [s2Step196EarlyControlFlagArena,s2Step196EarlyControlEqualityArena,s2Step196EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step196EarlyControl_flagsOwned : ([817, 253, 252, 251] : List Wire).toFinset⊆s2Step196EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step196EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196EarlyControl_flags : compileHmrFlagsLog s2Step196EarlyControlClassPlan.equalityArena s2Step196EarlyControlClassPlan.equality.top 253 252 251 s2Step196EarlyControlLog.flagWork=some s2Step196EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step196EarlyControl_flagsOwned⟩
  · exact s2Step196EarlyControl_flagsBorrow

private theorem s2Step196EarlyControl_historyBorrow : s2Step196EarlyControlArena.checkBorrow ((46-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892] : List Wire).length)) s2Step196EarlyControlLog.recordFresh=some s2Step196EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step196EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step196EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
      decide +kernel
    · ext q
      simp [s2Step196EarlyControlHistoryArena,s2Step196EarlyControlArena,s2Step196EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step196EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892] : List Wire).toFinset⊆s2Step196EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step196EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196EarlyControl_history : compileHmrRecordGrowLog s2Step196EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892] 46 s2Step196EarlyControlLog.recordFresh=some s2Step196EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step196EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step196EarlyControl_historyBorrow

private theorem s2Step196EarlyControl_sigmaOwned : ([254, 807] : List Wire).toFinset⊆s2Step196EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step196EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step196EarlyControl_sigmaReleaseOwned : ([807] : List Wire).toFinset⊆s2Step196EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step196EarlyControlHistoryArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step196EarlyControl_sigmaRelease : s2Step196EarlyControlHistoryArena.release {807} (fun _ => false)=some s2Step196EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step196EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step196EarlyControlSigmaArena,s2Step196EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step196EarlyControl_sigma : compileHmrSigmaDropLog s2Step196EarlyControlHistoryArena false 0 0 254 807 []=some s2Step196EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step196EarlyControl_sigmaOwned⟩
  · exact s2Step196EarlyControl_sigmaRelease

private theorem s2Step196EarlyControl_zeroBorrow : s2Step196EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step196EarlyControlLog.zeroWork=some s2Step196EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step196EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step196EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
      decide +kernel
    · ext q
      simp [s2Step196EarlyControlZeroArena,s2Step196EarlyControlArena,s2Step196EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step196EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step196EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step196EarlyControlArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196EarlyControl_zero : compileHmrEqualityLog s2Step196EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step196EarlyControlLog.zeroWork=some (s2Step196EarlyControlZeroArena,s2Step196EarlyControlLog.zeroWork,s2Step196EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step196EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step196EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step196EarlyControl_logged : s2Step196EarlyControlPlan.Logged s2Step196EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892] 777 807 254 253 252 251 814 46 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step196EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step196EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step196EarlyControl_zero
  · exact s2Step196EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step196EarlyControl_flags
  · exact s2Step196EarlyControl_fit
  · exact s2Step196EarlyControl_history
  · exact s2Step196EarlyControl_sigma
  · exact s2Step196EarlyControl_branch

private theorem s2Step196EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step196EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892] 777 807 254 253 252 251 814 46 s2Step196EarlyControlLog=some s2Step196EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step196EarlyControlPlan s2Step196EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892] 777 807 254 253 252 251 814 46 s2Step196EarlyControl_logged

private def s2Step196EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩

private def s2Step196EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827],770⟩

private def s2Step196EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170],769⟩

private def s2Step196EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782],771⟩

private def s2Step196FrontBank : WindowBank := ⟨s2Step196EntryFRow,s2Step196EntryGRow,s2Step196EntryFvRow,s2Step196EntryGvRow⟩

private def s2Step196Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 826, 768]

private def s2Step196Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 829, 817, 769]

private def s2Step196Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 794, 770]

private def s2Step196Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 822, 840, 771]

private theorem s2Step196Counter_apart : Disjoint s2Step196HeadFvAfter.live s2Step196CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step196HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196Counter_borrowed : s2Step196HeadFvAfter.checkBorrow 4 s2Step196CounterWork=some s2Step196CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step196HeadFvAfter s2Step196CounterDuring s2Step196CounterWork.toFinset s2Step196Counter_bounded s2Step196Counter_apart rfl

private theorem s2Step196Counter_owned : (807::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step196HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step196HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196Counter_checked : compileHmrCounterStepLog s2Step196HeadFvAfter true 807 [772, 773, 774, 775, 776, 777] s2Step196CounterWork=some s2Step196CounterDuring := by
  have owned : ∀q∈807::[772, 773, 774, 775, 776, 777],q∈s2Step196HeadFvAfter.live := fun q hq => s2Step196Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step196Counter_borrowed

private def s2Step196EntryFAfter : Arena := s2Step196EntryFBefore

private theorem s2Step196EntryBank_incomingDistinct : ([s2Step196EntryFRow,s2Step196EntryGRow,s2Step196EntryFvRow,s2Step196EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196EntryF_Incoming : rowsOwned s2Step196EntryFBefore [s2Step196EntryFRow,s2Step196EntryGRow,s2Step196EntryFvRow,s2Step196EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step196EntryFRow,s2Step196EntryGRow,s2Step196EntryFvRow,s2Step196EntryGvRow] 0 s2Step196EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step196EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
    decide +kernel

private theorem s2Step196EntryBank_outgoingOwned : rowsOwned s2Step196EntryGvAfter [s2Step196EntryFOut,s2Step196EntryGOut,s2Step196EntryFvOut,s2Step196EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step196EntryGvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
    decide +kernel

private theorem s2Step196EntryF_Outgoing : rowsOwned s2Step196EntryGvAfter [s2Step196EntryFOut,s2Step196EntryGOut,s2Step196EntryFvOut,s2Step196EntryGvOut] :=
  hmrRows_owned_drop s2Step196EntryGvAfter [s2Step196EntryFOut,s2Step196EntryGOut,s2Step196EntryFvOut,s2Step196EntryGvOut] 0 s2Step196EntryBank_outgoingOwned

private theorem s2Step196EntryF_distinct : (s2Step196EntryFRow.sign::s2Step196EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196EntryF_owned : (s2Step196EntryFRow.sign::s2Step196EntryFRow.payload).toFinset⊆s2Step196EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step196EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196EntryF_reserved : s2Step196EntryFBefore.reserve s2Step196EntryFFresh.toFinset=some s2Step196EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step196EntryFFresh,arenaWires]
  · norm_num [s2Step196EntryFBefore,s2Step196EntryFFresh,arenaWires]
  · simp only [s2Step196EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step196EntryF_checked : planRowResizeLog s2Step196EntryFBefore s2Step196EntryFRow 172 s2Step196EntryFFresh=
    some (s2Step196EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩,growRow 768 s2Step196EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step196EntryFBefore s2Step196EntryFAfter s2Step196EntryFRow 172 s2Step196EntryFFresh
    s2Step196EntryF_distinct s2Step196EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step196EntryF_reserved
  have rowEq : WindowRow.mk (s2Step196EntryFRow.payload++s2Step196EntryFFresh) s2Step196EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step196EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196EntryFvAfter : Arena := s2Step196EntryGAfter

private def s2Step196EntryFvBefore : Arena := s2Step196EntryGAfter

private theorem s2Step196EntryFv_Incoming : rowsOwned s2Step196EntryFvBefore [s2Step196EntryFvRow,s2Step196EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step196EntryFRow,s2Step196EntryGRow,s2Step196EntryFvRow,s2Step196EntryGvRow] 2 s2Step196EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step196EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
    decide +kernel

private theorem s2Step196EntryFv_Outgoing : rowsOwned s2Step196EntryGvAfter [s2Step196EntryFvOut,s2Step196EntryGvOut] :=
  hmrRows_owned_drop s2Step196EntryGvAfter [s2Step196EntryFOut,s2Step196EntryGOut,s2Step196EntryFvOut,s2Step196EntryGvOut] 2 s2Step196EntryBank_outgoingOwned

private theorem s2Step196EntryFv_distinct : (s2Step196EntryFvRow.sign::s2Step196EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196EntryFv_owned : (s2Step196EntryFvRow.sign::s2Step196EntryFvRow.payload).toFinset⊆s2Step196EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step196EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196EntryFv_reserved : s2Step196EntryFvBefore.reserve s2Step196EntryFvFresh.toFinset=some s2Step196EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step196EntryFvFresh,arenaWires]
  · norm_num [s2Step196EntryFvBefore,s2Step196EntryGAfter,s2Step196EntryFvFresh,arenaWires]
  · simp only [s2Step196EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step196EntryFv_checked : planRowResizeLog s2Step196EntryFvBefore s2Step196EntryFvRow 113 s2Step196EntryFvFresh=
    some (s2Step196EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827],770⟩,growRow 770 s2Step196EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step196EntryFvBefore s2Step196EntryFvAfter s2Step196EntryFvRow 113 s2Step196EntryFvFresh
    s2Step196EntryFv_distinct s2Step196EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step196EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step196EntryFvRow.payload++s2Step196EntryFvFresh) s2Step196EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step196EntryGBefore : Arena := s2Step196EntryFBefore

private theorem s2Step196EntryG_Incoming : rowsOwned s2Step196EntryGBefore [s2Step196EntryGRow,s2Step196EntryFvRow,s2Step196EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step196EntryFRow,s2Step196EntryGRow,s2Step196EntryFvRow,s2Step196EntryGvRow] 1 s2Step196EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step196EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
    decide +kernel

private theorem s2Step196EntryG_Outgoing : rowsOwned s2Step196EntryGvAfter [s2Step196EntryGOut,s2Step196EntryFvOut,s2Step196EntryGvOut] :=
  hmrRows_owned_drop s2Step196EntryGvAfter [s2Step196EntryFOut,s2Step196EntryGOut,s2Step196EntryFvOut,s2Step196EntryGvOut] 1 s2Step196EntryBank_outgoingOwned

private theorem s2Step196EntryG_distinct : (s2Step196EntryGRow.sign::s2Step196EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196EntryG_owned : (s2Step196EntryGRow.sign::s2Step196EntryGRow.payload).toFinset⊆s2Step196EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step196EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196EntryG_reserved : s2Step196EntryGBefore.reserve s2Step196EntryGFresh.toFinset=some s2Step196EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step196EntryGFresh,arenaWires]
  · norm_num [s2Step196EntryGBefore,s2Step196EntryFBefore,s2Step196EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step196EntryGAfter,s2Step196EntryGBefore,s2Step196EntryFBefore,s2Step196EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step196EntryG_checked : planRowResizeLog s2Step196EntryGBefore s2Step196EntryGRow 172 s2Step196EntryGFresh=
    some (s2Step196EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 829],769⟩,growRow 769 s2Step196EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step196EntryGBefore s2Step196EntryGAfter s2Step196EntryGRow 172 s2Step196EntryGFresh
    s2Step196EntryG_distinct s2Step196EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step196EntryG_reserved
  have rowEq : WindowRow.mk (s2Step196EntryGRow.payload++s2Step196EntryGFresh) s2Step196EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 829],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step196EntryGvBefore : Arena := s2Step196EntryGAfter

private theorem s2Step196EntryGv_Incoming : rowsOwned s2Step196EntryGvBefore [s2Step196EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step196EntryFRow,s2Step196EntryGRow,s2Step196EntryFvRow,s2Step196EntryGvRow] 3 s2Step196EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step196EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
    decide +kernel

private theorem s2Step196EntryGv_Outgoing : rowsOwned s2Step196EntryGvAfter [s2Step196EntryGvOut] :=
  hmrRows_owned_drop s2Step196EntryGvAfter [s2Step196EntryFOut,s2Step196EntryGOut,s2Step196EntryFvOut,s2Step196EntryGvOut] 3 s2Step196EntryBank_outgoingOwned

private theorem s2Step196EntryGv_distinct : (s2Step196EntryGvRow.sign::s2Step196EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196EntryGv_owned : (s2Step196EntryGvRow.sign::s2Step196EntryGvRow.payload).toFinset⊆s2Step196EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step196EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196EntryGv_reserved : s2Step196EntryGvBefore.reserve s2Step196EntryGvFresh.toFinset=some s2Step196EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step196EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step196EntryGvBefore,s2Step196EntryGAfter,s2Step196EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step196EntryGvAfter,s2Step196EntryGvBefore,s2Step196EntryGAfter,s2Step196EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step196EntryGv_checked : planRowResizeLog s2Step196EntryGvBefore s2Step196EntryGvRow 113 s2Step196EntryGvFresh=
    some (s2Step196EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 822],771⟩,growRow 771 s2Step196EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step196EntryGvBefore s2Step196EntryGvAfter s2Step196EntryGvRow 113 s2Step196EntryGvFresh
    s2Step196EntryGv_distinct s2Step196EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step196EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step196EntryGvRow.payload++s2Step196EntryGvFresh) s2Step196EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step196EntryBank_rows : planWindowRowsLog s2Step196EntryFBefore [(s2Step196EntryFRow,172),(s2Step196EntryGRow,172),(s2Step196EntryFvRow,113),(s2Step196EntryGvRow,113)] [s2Step196EntryFFresh,s2Step196EntryGFresh,s2Step196EntryFvFresh,s2Step196EntryGvFresh]=
    some (s2Step196EntryGvAfter,[s2Step196EntryFOut,s2Step196EntryGOut,s2Step196EntryFvOut,s2Step196EntryGvOut],(growRow 768 s2Step196EntryFFresh ++ (growRow 769 s2Step196EntryGFresh ++ (growRow 770 s2Step196EntryFvFresh ++ (growRow 771 s2Step196EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step196EntryGvAfter [] []=some (s2Step196EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step196EntryGvBefore s2Step196EntryGvAfter s2Step196EntryGvAfter
    s2Step196EntryGvRow s2Step196EntryGvOut 113 s2Step196EntryGvFresh [] [] []
    (growRow 771 s2Step196EntryGvFresh) ([]) s2Step196EntryGv_Incoming s2Step196EntryGv_checked h4 s2Step196EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step196EntryFvBefore s2Step196EntryFvAfter s2Step196EntryGvAfter
    s2Step196EntryFvRow s2Step196EntryFvOut 113 s2Step196EntryFvFresh [(s2Step196EntryGvRow,113)] [s2Step196EntryGvFresh] [s2Step196EntryGvOut]
    (growRow 770 s2Step196EntryFvFresh) ((growRow 771 s2Step196EntryGvFresh ++ [])) s2Step196EntryFv_Incoming s2Step196EntryFv_checked h3 s2Step196EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step196EntryGBefore s2Step196EntryGAfter s2Step196EntryGvAfter
    s2Step196EntryGRow s2Step196EntryGOut 172 s2Step196EntryGFresh [(s2Step196EntryFvRow,113),(s2Step196EntryGvRow,113)] [s2Step196EntryFvFresh,s2Step196EntryGvFresh] [s2Step196EntryFvOut,s2Step196EntryGvOut]
    (growRow 769 s2Step196EntryGFresh) ((growRow 770 s2Step196EntryFvFresh ++ (growRow 771 s2Step196EntryGvFresh ++ []))) s2Step196EntryG_Incoming s2Step196EntryG_checked h2 s2Step196EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step196EntryFBefore s2Step196EntryFAfter s2Step196EntryGvAfter
    s2Step196EntryFRow s2Step196EntryFOut 172 s2Step196EntryFFresh [(s2Step196EntryGRow,172),(s2Step196EntryFvRow,113),(s2Step196EntryGvRow,113)] [s2Step196EntryGFresh,s2Step196EntryFvFresh,s2Step196EntryGvFresh] [s2Step196EntryGOut,s2Step196EntryFvOut,s2Step196EntryGvOut]
    (growRow 768 s2Step196EntryFFresh) ((growRow 769 s2Step196EntryGFresh ++ (growRow 770 s2Step196EntryFvFresh ++ (growRow 771 s2Step196EntryGvFresh ++ [])))) s2Step196EntryF_Incoming s2Step196EntryF_checked h1 s2Step196EntryF_Outgoing
  exact h0

private theorem s2Step196EntryBank_checked : compileHmrBankResizeLog .entry s2Step196EntryFBefore ⟨s2Step196EntryFRow,s2Step196EntryGRow,s2Step196EntryFvRow,s2Step196EntryGvRow⟩ ⟨172,172,113,113⟩ [s2Step196EntryFFresh,s2Step196EntryGFresh,s2Step196EntryFvFresh,s2Step196EntryGvFresh]=
    some (s2Step196EntryGvAfter,⟨s2Step196EntryFOut,s2Step196EntryGOut,s2Step196EntryFvOut,s2Step196EntryGvOut⟩,(growRow 768 s2Step196EntryFFresh ++ (growRow 769 s2Step196EntryGFresh ++ (growRow 770 s2Step196EntryFvFresh ++ (growRow 771 s2Step196EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step196EntryBank_rows]
  rfl

private def s2Step196ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<170) ∨ (171≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<170) ∨ (171≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196ExitFBefore : Arena := s2Step196ExitGAfter

private def s2Step196ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 826],768⟩

private def s2Step196ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 794],770⟩

private def s2Step196ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 829, 817],769⟩

private def s2Step196ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 822, 840],771⟩

private theorem s2Step196ExitBank_incomingDistinct : ([s2Step196ExitGRow,s2Step196ExitFRow,s2Step196ExitFvRow,s2Step196ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196ExitF_Incoming : rowsOwned s2Step196ExitFBefore [s2Step196ExitFRow,s2Step196ExitFvRow,s2Step196ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step196ExitGRow,s2Step196ExitFRow,s2Step196ExitFvRow,s2Step196ExitGvRow] 1 s2Step196ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step196ExitFBefore (fun q => (0≤q ∧ q<170) ∨ (171≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
    decide +kernel

private theorem s2Step196ExitBank_outgoingOwned : rowsOwned s2Step196ExitGvAfter [s2Step196ExitGOut,s2Step196ExitFOut,s2Step196ExitFvOut,s2Step196ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step196ExitGvAfter (fun q => (0≤q ∧ q<170) ∨ (171≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
    decide +kernel

private theorem s2Step196ExitF_Outgoing : rowsOwned s2Step196ExitGvAfter [s2Step196ExitFOut,s2Step196ExitFvOut,s2Step196ExitGvOut] :=
  hmrRows_owned_drop s2Step196ExitGvAfter [s2Step196ExitGOut,s2Step196ExitFOut,s2Step196ExitFvOut,s2Step196ExitGvOut] 1 s2Step196ExitBank_outgoingOwned

private theorem s2Step196ExitF_distinct : (s2Step196ExitFRow.sign::s2Step196ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196ExitF_owned : (s2Step196ExitFRow.sign::s2Step196ExitFRow.payload).toFinset⊆s2Step196ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step196ExitFBefore (fun q => (0≤q ∧ q<170) ∨ (171≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196ExitF_retired : s2Step196ExitFBefore.retireSet s2Step196ExitFExtra.toFinset=s2Step196ExitFAfter := by
  unfold Arena.retireSet s2Step196ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step196ExitFBefore,s2Step196ExitGAfter,s2Step196ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step196ExitF_checked : planRowResizeLog s2Step196ExitFBefore s2Step196ExitFRow 172 []=
    some (s2Step196ExitFAfter,s2Step196ExitFOut,shrinkRow 768 s2Step196ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step196ExitFBefore s2Step196ExitFRow 172 s2Step196ExitF_distinct s2Step196ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step196ExitFRow.payload.take 172) s2Step196ExitFRow.sign=s2Step196ExitFOut := by decide +kernel
  have hi : s2Step196ExitFRow.payload.drop 172=s2Step196ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step196ExitF_retired] at result
  exact result

private def s2Step196ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<170) ∨ (171≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196ExitFvBefore : Arena := s2Step196ExitFAfter

private theorem s2Step196ExitFv_Incoming : rowsOwned s2Step196ExitFvBefore [s2Step196ExitFvRow,s2Step196ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step196ExitGRow,s2Step196ExitFRow,s2Step196ExitFvRow,s2Step196ExitGvRow] 2 s2Step196ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step196ExitFvBefore (fun q => (0≤q ∧ q<170) ∨ (171≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
    decide +kernel

private theorem s2Step196ExitFv_Outgoing : rowsOwned s2Step196ExitGvAfter [s2Step196ExitFvOut,s2Step196ExitGvOut] :=
  hmrRows_owned_drop s2Step196ExitGvAfter [s2Step196ExitGOut,s2Step196ExitFOut,s2Step196ExitFvOut,s2Step196ExitGvOut] 2 s2Step196ExitBank_outgoingOwned

private theorem s2Step196ExitFv_distinct : (s2Step196ExitFvRow.sign::s2Step196ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196ExitFv_owned : (s2Step196ExitFvRow.sign::s2Step196ExitFvRow.payload).toFinset⊆s2Step196ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step196ExitFvBefore (fun q => (0≤q ∧ q<170) ∨ (171≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196ExitFv_retired : s2Step196ExitFvBefore.retireSet s2Step196ExitFvExtra.toFinset=s2Step196ExitFvAfter := by
  unfold Arena.retireSet s2Step196ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step196ExitFvBefore,s2Step196ExitFAfter,s2Step196ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step196ExitFv_checked : planRowResizeLog s2Step196ExitFvBefore s2Step196ExitFvRow 113 []=
    some (s2Step196ExitFvAfter,s2Step196ExitFvOut,shrinkRow 770 s2Step196ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step196ExitFvBefore s2Step196ExitFvRow 113 s2Step196ExitFv_distinct s2Step196ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step196ExitFvRow.payload.take 113) s2Step196ExitFvRow.sign=s2Step196ExitFvOut := by decide +kernel
  have hi : s2Step196ExitFvRow.payload.drop 113=s2Step196ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step196ExitFv_retired] at result
  exact result

private def s2Step196ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private theorem s2Step196ExitG_Incoming : rowsOwned s2Step196ExitGBefore [s2Step196ExitGRow,s2Step196ExitFRow,s2Step196ExitFvRow,s2Step196ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step196ExitGRow,s2Step196ExitFRow,s2Step196ExitFvRow,s2Step196ExitGvRow] 0 s2Step196ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step196ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
    decide +kernel

private theorem s2Step196ExitG_Outgoing : rowsOwned s2Step196ExitGvAfter [s2Step196ExitGOut,s2Step196ExitFOut,s2Step196ExitFvOut,s2Step196ExitGvOut] :=
  hmrRows_owned_drop s2Step196ExitGvAfter [s2Step196ExitGOut,s2Step196ExitFOut,s2Step196ExitFvOut,s2Step196ExitGvOut] 0 s2Step196ExitBank_outgoingOwned

private theorem s2Step196ExitG_distinct : (s2Step196ExitGRow.sign::s2Step196ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196ExitG_owned : (s2Step196ExitGRow.sign::s2Step196ExitGRow.payload).toFinset⊆s2Step196ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step196ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196ExitG_retired : s2Step196ExitGBefore.retireSet s2Step196ExitGExtra.toFinset=s2Step196ExitGAfter := by
  unfold Arena.retireSet s2Step196ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step196ExitGBefore,s2Step196ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step196ExitG_checked : planRowResizeLog s2Step196ExitGBefore s2Step196ExitGRow 170 []=
    some (s2Step196ExitGAfter,s2Step196ExitGOut,shrinkRow 769 s2Step196ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step196ExitGBefore s2Step196ExitGRow 170 s2Step196ExitG_distinct s2Step196ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step196ExitGRow.payload.take 170) s2Step196ExitGRow.sign=s2Step196ExitGOut := by decide +kernel
  have hi : s2Step196ExitGRow.payload.drop 170=s2Step196ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step196ExitG_retired] at result
  exact result

private def s2Step196ExitGvBefore : Arena := s2Step196ExitFvAfter

private theorem s2Step196ExitGv_Incoming : rowsOwned s2Step196ExitGvBefore [s2Step196ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step196ExitGRow,s2Step196ExitFRow,s2Step196ExitFvRow,s2Step196ExitGvRow] 3 s2Step196ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step196ExitGvBefore (fun q => (0≤q ∧ q<170) ∨ (171≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
    decide +kernel

private theorem s2Step196ExitGv_Outgoing : rowsOwned s2Step196ExitGvAfter [s2Step196ExitGvOut] :=
  hmrRows_owned_drop s2Step196ExitGvAfter [s2Step196ExitGOut,s2Step196ExitFOut,s2Step196ExitFvOut,s2Step196ExitGvOut] 3 s2Step196ExitBank_outgoingOwned

private theorem s2Step196ExitGv_distinct : (s2Step196ExitGvRow.sign::s2Step196ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196ExitGv_owned : (s2Step196ExitGvRow.sign::s2Step196ExitGvRow.payload).toFinset⊆s2Step196ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step196ExitGvBefore (fun q => (0≤q ∧ q<170) ∨ (171≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196ExitGv_retired : s2Step196ExitGvBefore.retireSet s2Step196ExitGvExtra.toFinset=s2Step196ExitGvAfter := by
  unfold Arena.retireSet s2Step196ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step196ExitGvBefore,s2Step196ExitFvAfter,s2Step196ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step196ExitGv_checked : planRowResizeLog s2Step196ExitGvBefore s2Step196ExitGvRow 112 []=
    some (s2Step196ExitGvAfter,s2Step196ExitGvOut,shrinkRow 771 s2Step196ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step196ExitGvBefore s2Step196ExitGvRow 112 s2Step196ExitGv_distinct s2Step196ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step196ExitGvRow.payload.take 112) s2Step196ExitGvRow.sign=s2Step196ExitGvOut := by decide +kernel
  have hi : s2Step196ExitGvRow.payload.drop 112=s2Step196ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step196ExitGv_retired] at result
  exact result

private theorem s2Step196ExitBank_rows : planWindowRowsLog s2Step196ExitGBefore [(s2Step196ExitGRow,170),(s2Step196ExitFRow,172),(s2Step196ExitFvRow,113),(s2Step196ExitGvRow,112)] [[],[],[],[]]=
    some (s2Step196ExitGvAfter,[s2Step196ExitGOut,s2Step196ExitFOut,s2Step196ExitFvOut,s2Step196ExitGvOut],(shrinkRow 769 s2Step196ExitGExtra ++ (shrinkRow 768 s2Step196ExitFExtra ++ (shrinkRow 770 s2Step196ExitFvExtra ++ (shrinkRow 771 s2Step196ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step196ExitGvAfter [] []=some (s2Step196ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step196ExitGvBefore s2Step196ExitGvAfter s2Step196ExitGvAfter
    s2Step196ExitGvRow s2Step196ExitGvOut 112 [] [] [] []
    (shrinkRow 771 s2Step196ExitGvExtra) ([]) s2Step196ExitGv_Incoming s2Step196ExitGv_checked h4 s2Step196ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step196ExitFvBefore s2Step196ExitFvAfter s2Step196ExitGvAfter
    s2Step196ExitFvRow s2Step196ExitFvOut 113 [] [(s2Step196ExitGvRow,112)] [[]] [s2Step196ExitGvOut]
    (shrinkRow 770 s2Step196ExitFvExtra) ((shrinkRow 771 s2Step196ExitGvExtra ++ [])) s2Step196ExitFv_Incoming s2Step196ExitFv_checked h3 s2Step196ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step196ExitFBefore s2Step196ExitFAfter s2Step196ExitGvAfter
    s2Step196ExitFRow s2Step196ExitFOut 172 [] [(s2Step196ExitFvRow,113),(s2Step196ExitGvRow,112)] [[],[]] [s2Step196ExitFvOut,s2Step196ExitGvOut]
    (shrinkRow 768 s2Step196ExitFExtra) ((shrinkRow 770 s2Step196ExitFvExtra ++ (shrinkRow 771 s2Step196ExitGvExtra ++ []))) s2Step196ExitF_Incoming s2Step196ExitF_checked h2 s2Step196ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step196ExitGBefore s2Step196ExitGAfter s2Step196ExitGvAfter
    s2Step196ExitGRow s2Step196ExitGOut 170 [] [(s2Step196ExitFRow,172),(s2Step196ExitFvRow,113),(s2Step196ExitGvRow,112)] [[],[],[]] [s2Step196ExitFOut,s2Step196ExitFvOut,s2Step196ExitGvOut]
    (shrinkRow 769 s2Step196ExitGExtra) ((shrinkRow 768 s2Step196ExitFExtra ++ (shrinkRow 770 s2Step196ExitFvExtra ++ (shrinkRow 771 s2Step196ExitGvExtra ++ [])))) s2Step196ExitG_Incoming s2Step196ExitG_checked h1 s2Step196ExitG_Outgoing
  exact h0

private theorem s2Step196ExitBank_checked : compileHmrBankResizeLog .exit s2Step196ExitGBefore ⟨s2Step196ExitFRow,s2Step196ExitGRow,s2Step196ExitFvRow,s2Step196ExitGvRow⟩ ⟨172,170,113,112⟩ [[],[],[],[]]=
    some (s2Step196ExitGvAfter,⟨s2Step196ExitFOut,s2Step196ExitGOut,s2Step196ExitFvOut,s2Step196ExitGvOut⟩,(shrinkRow 769 s2Step196ExitGExtra ++ (shrinkRow 768 s2Step196ExitFExtra ++ (shrinkRow 770 s2Step196ExitFvExtra ++ (shrinkRow 771 s2Step196ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step196ExitBank_rows]
  rfl

private theorem s2Step196Add0_apart : Disjoint s2Step196Add0Arena.live s2Step196Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step196Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196Add0_card : s2Step196Add0Arena.live.card=889 := by
  decide +kernel

private theorem s2Step196Add0_borrowed : s2Step196Add0Arena.checkBorrow (hmrHybridCount s2Step196Add0Arena s2Step196Add0B.length) s2Step196Add0Work=some s2Step196Add0During := by
  have len : s2Step196Add0Work.length=hmrHybridCount s2Step196Add0Arena s2Step196Add0B.length := by
    rw [hmrHybridCount,s2Step196Add0_card]
    decide +kernel
  have nd : s2Step196Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step196Add0Arena s2Step196Add0During s2Step196Add0Work.toFinset s2Step196Add0_bounded s2Step196Add0_apart rfl

private theorem s2Step196Add0_distinct : (867::814::877::(s2Step196Add0A++s2Step196Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196Add0_owned : (867::814::877::(s2Step196Add0A++s2Step196Add0B)).toFinset⊆s2Step196Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step196Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196Add0_checked : compileHmrHybridCinLog s2Step196Add0Arena 814 867 877 s2Step196Add0A s2Step196Add0B s2Step196Add0Work=some s2Step196Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step196Add0Arena s2Step196Add0During 814 867 877 s2Step196Add0A s2Step196Add0B s2Step196Add0Work
    (by decide +kernel) (by decide +kernel) s2Step196Add0_distinct
    (fun q hq => s2Step196Add0_owned (List.mem_toFinset.mpr hq)) s2Step196Add0_borrowed

private theorem s2Step196Add1_apart : Disjoint s2Step196Add1Arena.live s2Step196Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step196Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196Add1_card : s2Step196Add1Arena.live.card=889 := by
  decide +kernel

private theorem s2Step196Add1_borrowed : s2Step196Add1Arena.checkBorrow (hmrHybridCount s2Step196Add1Arena s2Step196Add1B.length) s2Step196Add1Work=some s2Step196Add1During := by
  have len : s2Step196Add1Work.length=hmrHybridCount s2Step196Add1Arena s2Step196Add1B.length := by
    rw [hmrHybridCount,s2Step196Add1_card]
    decide +kernel
  have nd : s2Step196Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step196Add1Arena s2Step196Add1During s2Step196Add1Work.toFinset s2Step196Add1_bounded s2Step196Add1_apart rfl

private theorem s2Step196Add1_distinct : (867::814::877::(s2Step196Add1A++s2Step196Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196Add1_owned : (867::814::877::(s2Step196Add1A++s2Step196Add1B)).toFinset⊆s2Step196Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step196Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196Add1_checked : compileHmrHybridCinLog s2Step196Add1Arena 814 867 877 s2Step196Add1A s2Step196Add1B s2Step196Add1Work=some s2Step196Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step196Add1Arena s2Step196Add1During 814 867 877 s2Step196Add1A s2Step196Add1B s2Step196Add1Work
    (by decide +kernel) (by decide +kernel) s2Step196Add1_distinct
    (fun q hq => s2Step196Add1_owned (List.mem_toFinset.mpr hq)) s2Step196Add1_borrowed

private theorem s2Step196F4_apart : Disjoint (s2Step196Add0A++s2Step196Add0B).toFinset (s2Step196Add1A++s2Step196Add1B).toFinset := by
  have nd : ((s2Step196Add0A++s2Step196Add0B)++(s2Step196Add1A++s2Step196Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step196F4_carry : s2Step196F4FlagArena.checkBorrow 1 [877]=some s2Step196Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step196F4FlagArena,s2Step196HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step196F4FlagArena,s2Step196HeadFvAfter,s2Step196Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step196F4_distinct : (807::814::867::877::((s2Step196Add0A++s2Step196Add1A)++(s2Step196Add0B++s2Step196Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196F4_flag : s2Step196HeadFvAfter.checkBorrow 1 [867]=some s2Step196F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step196HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step196F4_owned : (807::814::((s2Step196Add0A++s2Step196Add1A)++(s2Step196Add0B++s2Step196Add1B))).toFinset⊆s2Step196HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step196HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196F4_checked : compileHmrHybridF4Log s2Step196HeadFvAfter 807 814 s2Step196Add0A s2Step196Add0B s2Step196Add1A s2Step196Add1B [867] [877] s2Step196Add0Work s2Step196Add1Work=some s2Step196F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step196HeadFvAfter s2Step196F4FlagArena s2Step196Add0Arena s2Step196Add0During s2Step196Add1During 807 814
    s2Step196Add0A s2Step196Add0B s2Step196Add1A s2Step196Add1B [867] [877] s2Step196Add0Work s2Step196Add1Work
    (fun q hq => s2Step196F4_owned (List.mem_toFinset.mpr hq)) s2Step196F4_flag s2Step196F4_carry
    s2Step196F4_distinct s2Step196F4_apart s2Step196Add0_checked s2Step196Add1_checked

private theorem s2Step196Front_branch : s2Step196FrontSigmaArena.checkBorrow 1 [814]=some s2Step196HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step196FrontSigmaArena,s2Step196EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step196FrontSigmaArena,s2Step196EntryGvAfter,s2Step196HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step196Front_entry : HmrFrontEntryValid s2Step196EntryFBefore s2Step196FrontBank 172 113 ⟨172,170,113,112⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step196FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step196EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step196EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step196FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step196Front_sigma : s2Step196EntryGvAfter.checkBorrow 1 [807]=some s2Step196FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step196EntryGvAfter,arenaWires]
  · rfl

private def s2Step196HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196HeadFBefore : Arena := s2Step196HeadGAfter

private def s2Step196HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩

private def s2Step196HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827],770⟩

private def s2Step196HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 829],769⟩

private def s2Step196HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 822],771⟩

private theorem s2Step196HeadBank_incomingDistinct : ([s2Step196HeadGRow,s2Step196HeadFRow,s2Step196HeadGvRow,s2Step196HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196HeadF_Incoming : rowsOwned s2Step196HeadFBefore [s2Step196HeadFRow,s2Step196HeadGvRow,s2Step196HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step196HeadGRow,s2Step196HeadFRow,s2Step196HeadGvRow,s2Step196HeadFvRow] 1 s2Step196HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step196HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
    decide +kernel

private theorem s2Step196HeadBank_outgoingOwned : rowsOwned s2Step196HeadFvAfter [s2Step196HeadGOut,s2Step196HeadFOut,s2Step196HeadGvOut,s2Step196HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step196HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
    decide +kernel

private theorem s2Step196HeadF_Outgoing : rowsOwned s2Step196HeadFvAfter [s2Step196HeadFOut,s2Step196HeadGvOut,s2Step196HeadFvOut] :=
  hmrRows_owned_drop s2Step196HeadFvAfter [s2Step196HeadGOut,s2Step196HeadFOut,s2Step196HeadGvOut,s2Step196HeadFvOut] 1 s2Step196HeadBank_outgoingOwned

private theorem s2Step196HeadF_distinct : (s2Step196HeadFRow.sign::s2Step196HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196HeadF_owned : (s2Step196HeadFRow.sign::s2Step196HeadFRow.payload).toFinset⊆s2Step196HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step196HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196HeadF_reserved : s2Step196HeadFBefore.reserve s2Step196HeadFFresh.toFinset=some s2Step196HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step196HeadFFresh,arenaWires]
  · norm_num [s2Step196HeadFBefore,s2Step196HeadGAfter,s2Step196HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step196HeadFAfter,s2Step196HeadFBefore,s2Step196HeadGAfter,s2Step196HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step196HeadF_checked : planRowResizeLog s2Step196HeadFBefore s2Step196HeadFRow 173 s2Step196HeadFFresh=
    some (s2Step196HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 826],768⟩,growRow 768 s2Step196HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step196HeadFBefore s2Step196HeadFAfter s2Step196HeadFRow 173 s2Step196HeadFFresh
    s2Step196HeadF_distinct s2Step196HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step196HeadF_reserved
  have rowEq : WindowRow.mk (s2Step196HeadFRow.payload++s2Step196HeadFFresh) s2Step196HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 826],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step196HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)),Finset.filter_subset _ _⟩

private def s2Step196HeadFvBefore : Arena := s2Step196HeadGvAfter

private theorem s2Step196HeadFv_Incoming : rowsOwned s2Step196HeadFvBefore [s2Step196HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step196HeadGRow,s2Step196HeadFRow,s2Step196HeadGvRow,s2Step196HeadFvRow] 3 s2Step196HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step196HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
    decide +kernel

private theorem s2Step196HeadFv_Outgoing : rowsOwned s2Step196HeadFvAfter [s2Step196HeadFvOut] :=
  hmrRows_owned_drop s2Step196HeadFvAfter [s2Step196HeadGOut,s2Step196HeadFOut,s2Step196HeadGvOut,s2Step196HeadFvOut] 3 s2Step196HeadBank_outgoingOwned

private theorem s2Step196HeadFv_distinct : (s2Step196HeadFvRow.sign::s2Step196HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196HeadFv_owned : (s2Step196HeadFvRow.sign::s2Step196HeadFvRow.payload).toFinset⊆s2Step196HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step196HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196HeadFv_reserved : s2Step196HeadFvBefore.reserve s2Step196HeadFvFresh.toFinset=some s2Step196HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step196HeadFvFresh,arenaWires]
  · norm_num [s2Step196HeadFvBefore,s2Step196HeadGvAfter,s2Step196HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step196HeadFvAfter,s2Step196HeadFvBefore,s2Step196HeadGvAfter,s2Step196HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step196HeadFv_checked : planRowResizeLog s2Step196HeadFvBefore s2Step196HeadFvRow 114 s2Step196HeadFvFresh=
    some (s2Step196HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 794],770⟩,growRow 770 s2Step196HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step196HeadFvBefore s2Step196HeadFvAfter s2Step196HeadFvRow 114 s2Step196HeadFvFresh
    s2Step196HeadFv_distinct s2Step196HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step196HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step196HeadFvRow.payload++s2Step196HeadFvFresh) s2Step196HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 794],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step196HeadG_Incoming : rowsOwned s2Step196HeadGBefore [s2Step196HeadGRow,s2Step196HeadFRow,s2Step196HeadGvRow,s2Step196HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step196HeadGRow,s2Step196HeadFRow,s2Step196HeadGvRow,s2Step196HeadFvRow] 0 s2Step196HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step196HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
    decide +kernel

private theorem s2Step196HeadG_Outgoing : rowsOwned s2Step196HeadFvAfter [s2Step196HeadGOut,s2Step196HeadFOut,s2Step196HeadGvOut,s2Step196HeadFvOut] :=
  hmrRows_owned_drop s2Step196HeadFvAfter [s2Step196HeadGOut,s2Step196HeadFOut,s2Step196HeadGvOut,s2Step196HeadFvOut] 0 s2Step196HeadBank_outgoingOwned

private theorem s2Step196HeadG_distinct : (s2Step196HeadGRow.sign::s2Step196HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196HeadG_owned : (s2Step196HeadGRow.sign::s2Step196HeadGRow.payload).toFinset⊆s2Step196HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step196HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196HeadG_reserved : s2Step196HeadGBefore.reserve s2Step196HeadGFresh.toFinset=some s2Step196HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step196HeadGFresh,arenaWires]
  · norm_num [s2Step196HeadGBefore,s2Step196HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step196HeadGAfter,s2Step196HeadGBefore,s2Step196HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step196HeadG_checked : planRowResizeLog s2Step196HeadGBefore s2Step196HeadGRow 173 s2Step196HeadGFresh=
    some (s2Step196HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 829, 817],769⟩,growRow 769 s2Step196HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step196HeadGBefore s2Step196HeadGAfter s2Step196HeadGRow 173 s2Step196HeadGFresh
    s2Step196HeadG_distinct s2Step196HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step196HeadG_reserved
  have rowEq : WindowRow.mk (s2Step196HeadGRow.payload++s2Step196HeadGFresh) s2Step196HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 829, 817],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step196HeadGvBefore : Arena := s2Step196HeadFAfter

private theorem s2Step196HeadGv_Incoming : rowsOwned s2Step196HeadGvBefore [s2Step196HeadGvRow,s2Step196HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step196HeadGRow,s2Step196HeadFRow,s2Step196HeadGvRow,s2Step196HeadFvRow] 2 s2Step196HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step196HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
    decide +kernel

private theorem s2Step196HeadGv_Outgoing : rowsOwned s2Step196HeadFvAfter [s2Step196HeadGvOut,s2Step196HeadFvOut] :=
  hmrRows_owned_drop s2Step196HeadFvAfter [s2Step196HeadGOut,s2Step196HeadFOut,s2Step196HeadGvOut,s2Step196HeadFvOut] 2 s2Step196HeadBank_outgoingOwned

private theorem s2Step196HeadGv_distinct : (s2Step196HeadGvRow.sign::s2Step196HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step196HeadGv_owned : (s2Step196HeadGvRow.sign::s2Step196HeadGvRow.payload).toFinset⊆s2Step196HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step196HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893)) rfl
  decide +kernel

private theorem s2Step196HeadGv_reserved : s2Step196HeadGvBefore.reserve s2Step196HeadGvFresh.toFinset=some s2Step196HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step196HeadGvFresh,arenaWires]
  · norm_num [s2Step196HeadGvBefore,s2Step196HeadFAfter,s2Step196HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step196HeadGvAfter,s2Step196HeadGvBefore,s2Step196HeadFAfter,s2Step196HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step196HeadGv_checked : planRowResizeLog s2Step196HeadGvBefore s2Step196HeadGvRow 114 s2Step196HeadGvFresh=
    some (s2Step196HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 822, 840],771⟩,growRow 771 s2Step196HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step196HeadGvBefore s2Step196HeadGvAfter s2Step196HeadGvRow 114 s2Step196HeadGvFresh
    s2Step196HeadGv_distinct s2Step196HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step196HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step196HeadGvRow.payload++s2Step196HeadGvFresh) s2Step196HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 822, 840],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step196HeadBank_rows : planWindowRowsLog s2Step196HeadGBefore [(s2Step196HeadGRow,173),(s2Step196HeadFRow,173),(s2Step196HeadGvRow,114),(s2Step196HeadFvRow,114)] [s2Step196HeadGFresh,s2Step196HeadFFresh,s2Step196HeadGvFresh,s2Step196HeadFvFresh]=
    some (s2Step196HeadFvAfter,[s2Step196HeadGOut,s2Step196HeadFOut,s2Step196HeadGvOut,s2Step196HeadFvOut],(growRow 769 s2Step196HeadGFresh ++ (growRow 768 s2Step196HeadFFresh ++ (growRow 771 s2Step196HeadGvFresh ++ (growRow 770 s2Step196HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step196HeadFvAfter [] []=some (s2Step196HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step196HeadFvBefore s2Step196HeadFvAfter s2Step196HeadFvAfter
    s2Step196HeadFvRow s2Step196HeadFvOut 114 s2Step196HeadFvFresh [] [] []
    (growRow 770 s2Step196HeadFvFresh) ([]) s2Step196HeadFv_Incoming s2Step196HeadFv_checked h4 s2Step196HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step196HeadGvBefore s2Step196HeadGvAfter s2Step196HeadFvAfter
    s2Step196HeadGvRow s2Step196HeadGvOut 114 s2Step196HeadGvFresh [(s2Step196HeadFvRow,114)] [s2Step196HeadFvFresh] [s2Step196HeadFvOut]
    (growRow 771 s2Step196HeadGvFresh) ((growRow 770 s2Step196HeadFvFresh ++ [])) s2Step196HeadGv_Incoming s2Step196HeadGv_checked h3 s2Step196HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step196HeadFBefore s2Step196HeadFAfter s2Step196HeadFvAfter
    s2Step196HeadFRow s2Step196HeadFOut 173 s2Step196HeadFFresh [(s2Step196HeadGvRow,114),(s2Step196HeadFvRow,114)] [s2Step196HeadGvFresh,s2Step196HeadFvFresh] [s2Step196HeadGvOut,s2Step196HeadFvOut]
    (growRow 768 s2Step196HeadFFresh) ((growRow 771 s2Step196HeadGvFresh ++ (growRow 770 s2Step196HeadFvFresh ++ []))) s2Step196HeadF_Incoming s2Step196HeadF_checked h2 s2Step196HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step196HeadGBefore s2Step196HeadGAfter s2Step196HeadFvAfter
    s2Step196HeadGRow s2Step196HeadGOut 173 s2Step196HeadGFresh [(s2Step196HeadFRow,173),(s2Step196HeadGvRow,114),(s2Step196HeadFvRow,114)] [s2Step196HeadFFresh,s2Step196HeadGvFresh,s2Step196HeadFvFresh] [s2Step196HeadFOut,s2Step196HeadGvOut,s2Step196HeadFvOut]
    (growRow 769 s2Step196HeadGFresh) ((growRow 768 s2Step196HeadFFresh ++ (growRow 771 s2Step196HeadGvFresh ++ (growRow 770 s2Step196HeadFvFresh ++ [])))) s2Step196HeadG_Incoming s2Step196HeadG_checked h1 s2Step196HeadG_Outgoing
  exact h0

private theorem s2Step196HeadBank_checked : compileHmrBankResizeLog .headroom s2Step196HeadGBefore ⟨s2Step196HeadFRow,s2Step196HeadGRow,s2Step196HeadFvRow,s2Step196HeadGvRow⟩ ⟨173,173,114,114⟩ [s2Step196HeadGFresh,s2Step196HeadFFresh,s2Step196HeadGvFresh,s2Step196HeadFvFresh]=
    some (s2Step196HeadFvAfter,⟨s2Step196HeadFOut,s2Step196HeadGOut,s2Step196HeadFvOut,s2Step196HeadGvOut⟩,(growRow 769 s2Step196HeadGFresh ++ (growRow 768 s2Step196HeadFFresh ++ (growRow 771 s2Step196HeadGvFresh ++ (growRow 770 s2Step196HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step196HeadBank_rows]
  rfl

private theorem s2Step196Front_checked : compileHmrSourceFrontLog s2Step196EntryFBefore s2Step196FrontBank 172 113 ⟨172,170,113,112⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step196FrontLog=some s2Step196FrontPlan := by
  have pairEq : s2Step196FrontPair=⟨s2Step196HeadFRow,s2Step196HeadGRow,s2Step196HeadFvRow,s2Step196HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step196FrontHead=⟨s2Step196ExitFRow,s2Step196ExitGRow,s2Step196ExitFvRow,s2Step196ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step196Add0A=s2Step196FrontHead.f.wires := by decide +kernel
  have gEq : s2Step196Add0B=s2Step196FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step196Add1A=s2Step196FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step196Add1B=s2Step196FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step196EntryFBefore s2Step196FrontBank 172 113 ⟨172,170,113,112⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step196FrontLog s2Step196FrontPlan
  · exact s2Step196Front_entry
  · exact s2Step196EntryBank_checked
  · exact s2Step196Front_sigma
  · rfl
  · exact s2Step196Front_branch
  · rfl
  · simpa only [s2Step196FrontPlan,pairEq] using s2Step196HeadBank_checked
  · simpa only [s2Step196FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step196F4_checked
  · exact s2Step196Counter_checked
  · rfl
  · simpa only [s2Step196FrontPlan,headEq] using s2Step196ExitBank_checked

private theorem s2Step196Complete_explicit_checked : compileHmrEarlyStepLog s2Step196EntryFBefore s2Step196FrontBank 172 113 ⟨172,170,113,112⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892] 46 s2Step196CompleteLog=some s2Step196CompletePlan := by
  let Q := s2Step196EarlyControlPlan
  have hq := s2Step196EarlyControl_plan_checked
  have fv1 : s2Step196CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step196CompleteOut.fv.payload[2]?.getD s2Step196CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step196CompleteOut.fv.payload[3]?.getD s2Step196CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step196CompleteOut.fv.payload[4]?.getD s2Step196CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step196EntryFBefore s2Step196EarlyControlArena s2Step196FrontBank 172 113 ⟨172,170,113,112⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892] 46 s2Step196CompleteLog s2Step196FrontPlan Q
    s2Step196Front_checked s2Step196Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step196Complete_owned s2Step196Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step196EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892] 777 807 s2Step196CompleteOut.fv.second (s2Step196CompleteOut.fv.payload[2]?.getD s2Step196CompleteOut.fv.sign) (s2Step196CompleteOut.fv.payload[3]?.getD s2Step196CompleteOut.fv.sign) (s2Step196CompleteOut.fv.payload[4]?.getD s2Step196CompleteOut.fv.sign) 814 46 s2Step196EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep196Arena : Arena := s2Step196EntryFBefore
def s2PrivateStep196Bank : WindowBank := s2Step196FrontBank
def s2PrivateStep196Spec : HmrSourceWalkStepLog := ⟨172,113,⟨172,170,113,112⟩,46,.early s2Step196CompleteLog⟩
def s2PrivateStep196Plan : HmrSourceStepPlan := .early s2Step196CompletePlan
theorem s2PrivateStep196_source : s2PrivateStep196Spec=s2ObservedLogs192[4] := rfl
theorem s2PrivateStep196_checked : compileHmrSourceStepLog s2PrivateStep196Arena s2PrivateStep196Bank
    s2PrivateStep196Spec.fgWidth s2PrivateStep196Spec.vWidth s2PrivateStep196Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892]
    6 498 196 s2PrivateStep196Spec.need none s2PrivateStep196Spec.log=some s2PrivateStep196Plan := by
  change compileHmrSourceStepLog s2Step196EntryFBefore s2Step196FrontBank 172 113 ⟨172,170,113,112⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892] 6 498 196 46 none (.early s2Step196CompleteLog)=some (.early s2Step196CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 196<498)]
  rw [s2Step196Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
