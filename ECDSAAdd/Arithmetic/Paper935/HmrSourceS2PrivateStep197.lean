import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep195
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

private def s2Step197CompleteMoves : List (Wire × Wire) := [(781,683)]

private def s2Step197EarlyControlLog : HmrEarlyControlLog := ⟨[781, 842, 829, 826, 807],[794],[867],[877, 879, 882, 885, 891, 894],[]⟩

private def s2Step197FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [814, 807], [], [842]],[[794], [826], [829], [817]],[[], [], [], []]⟩,[822],[840],[867],[877],[879, 882, 885, 891, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[879, 882, 885, 891, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882]⟩

private def s2Step197CompleteLog : HmrEarlyStepLog := ⟨s2Step197FrontLog,s2Step197CompleteMoves,s2Step197EarlyControlLog⟩

private def s2Step197ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩

private def s2Step197ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817],770⟩

private def s2Step197ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814],769⟩

private def s2Step197ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837],771⟩

private def s2Step197FrontOut : WindowBank := ⟨s2Step197ExitFOut,s2Step197ExitGOut,s2Step197ExitFvOut,s2Step197ExitGvOut⟩

private def s2Step197CompleteOut : WindowBank := s2Step197FrontOut.repacked s2Step197CompleteMoves

private def s2Step197EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step197EarlyControlPositiveArena,[794],s2Step197EarlyControlEqualityArena,[867],⟨⟨822,false⟩,[⟨⟨794,false⟩,867⟩]⟩⟩

private def s2Step197EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895)),Finset.filter_subset _ _⟩

private def s2Step197EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895)),Finset.filter_subset _ _⟩

private def s2Step197EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,781⟩,⟨⟨774,false⟩,842⟩,⟨⟨775,false⟩,829⟩,⟨⟨776,false⟩,826⟩,⟨⟨777,false⟩,807⟩]⟩

private def s2Step197EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step197EarlyControlZeroArena,s2Step197EarlyControlZeroPlan,s2Step197EarlyControlClassPlan,s2Step197EarlyControlFlagArena,s2Step197EarlyControlFittedArena,s2Step197EarlyControlHistoryArena,s2Step197EarlyControlSigmaArena,s2Step197EarlyControlOutputArena,s2Step197EarlyControlLog⟩

private def s2Step197CounterWork : List Wire := [867, 877, 879, 882]

private theorem s2Step197Counter_bounded : s2Step197CounterWork.toFinset⊆arenaWires := by norm_num [s2Step197CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step197HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197CounterDuring : Arena := ⟨s2Step197HeadFvAfter.live∪s2Step197CounterWork.toFinset,Finset.union_subset s2Step197HeadFvAfter.bounded s2Step197Counter_bounded⟩

private def s2Step197EntryFFresh : List Wire := []

private def s2Step197EntryFvFresh : List Wire := []

private def s2Step197EntryGFresh : List Wire := [814, 807]

private def s2Step197EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197EntryGvFresh : List Wire := [842]

private def s2Step197ExitFExtra : List Wire := [683, 826]

private def s2Step197ExitGExtra : List Wire := [807, 794]

private def s2Step197ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<683) ∨ (684≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197ExitGvExtra : List Wire := [842, 829]

private def s2Step197Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197Add0Work : List Wire := [879, 882, 885, 891, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step197Add0_bounded : s2Step197Add0Work.toFinset⊆arenaWires := by
  have h : s2Step197Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step197Add0During : Arena := ⟨s2Step197Add0Arena.live∪s2Step197Add0Work.toFinset,Finset.union_subset s2Step197Add0Arena.bounded s2Step197Add0_bounded⟩

private def s2Step197Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197Add1Work : List Wire := [879, 882, 885, 891, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step197Add1_bounded : s2Step197Add1Work.toFinset⊆arenaWires := by
  have h : s2Step197Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step197Add1During : Arena := ⟨s2Step197Add1Arena.live∪s2Step197Add1Work.toFinset,Finset.union_subset s2Step197Add1Arena.bounded s2Step197Add1_bounded⟩

private def s2Step197F4FlagArena : Arena := ⟨s2Step197HeadFvAfter.live∪{867},Finset.union_subset s2Step197HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step197F4Plan : HmrHybridF4Plan := ⟨s2Step197F4FlagArena,[867],s2Step197Add0Arena,[877],s2Step197Add0During,s2Step197Add0Work,s2Step197Add1During,s2Step197Add1Work⟩

private def s2Step197HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 826],768⟩

private def s2Step197HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817],770⟩

private def s2Step197HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814, 807, 794],769⟩

private def s2Step197HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 842, 829],771⟩

private def s2Step197FrontHead : WindowBank := ⟨s2Step197HeadFOut,s2Step197HeadGOut,s2Step197HeadFvOut,s2Step197HeadGvOut⟩

private def s2Step197EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩

private def s2Step197EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827],770⟩

private def s2Step197EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814, 807],769⟩

private def s2Step197EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 842],771⟩

private def s2Step197FrontPair : WindowBank := ⟨s2Step197EntryFOut,s2Step197EntryGOut,s2Step197EntryFvOut,s2Step197EntryGvOut⟩

private def s2Step197FrontSigmaArena : Arena := ⟨s2Step197EntryGvAfter.live∪{822},Finset.union_subset s2Step197EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step197HeadFFresh : List Wire := [826]

private def s2Step197HeadFvFresh : List Wire := [817]

private def s2Step197HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197HeadGFresh : List Wire := [794]

private def s2Step197HeadGvFresh : List Wire := [829]

private def s2Step197FrontPlan : HmrSourceFront := ⟨s2Step197EntryGvAfter,s2Step197FrontPair,(growRow 768 s2Step197EntryFFresh ++ (growRow 769 s2Step197EntryGFresh ++ (growRow 770 s2Step197EntryFvFresh ++ (growRow 771 s2Step197EntryGvFresh ++ [])))),s2Step197FrontSigmaArena,[822],s2Step197HeadGBefore,[840],
  s2Step197HeadFvAfter,s2Step197FrontHead,(growRow 769 s2Step197HeadGFresh ++ (growRow 768 s2Step197HeadFFresh ++ (growRow 771 s2Step197HeadGvFresh ++ (growRow 770 s2Step197HeadFvFresh ++ [])))),s2Step197F4Plan,s2Step197CounterDuring,s2Step197CounterWork,s2Step197ExitGvAfter,s2Step197FrontOut,(shrinkRow 769 s2Step197ExitGExtra ++ (shrinkRow 768 s2Step197ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step197ExitGvExtra ++ []))))⟩

private def s2Step197CompletePlan : HmrEarlyStepPlan := ⟨s2Step197FrontPlan,s2Step197EarlyControlArena,s2Step197EarlyControlPlan,s2Step197CompleteMoves⟩

private theorem s2Step197Complete_apart : List.Disjoint (s2Step197CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [822, 840, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] := by
  have nd : ((s2Step197CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[822, 840, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step197Complete_owned : (s2Step197CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step197EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step197EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private def s2Step197CompleteMoveArena : Arena := ⟨s2Step197ExitGvAfter.live∪{683},Finset.union_subset s2Step197ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step197Complete_repack : s2Step197ExitGvAfter.checkRepack s2Step197CompleteMoves=some s2Step197EarlyControlArena := by
  have owned : 781∈s2Step197ExitGvAfter.live := by norm_num [s2Step197ExitGvAfter,arenaWires]
  have reserve : s2Step197ExitGvAfter.reserve {683}=some s2Step197CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step197ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step197CompleteMoveArena.retireSet {781}=s2Step197EarlyControlArena := by
    unfold Arena.retireSet s2Step197EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step197CompleteMoveArena,s2Step197ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step197CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step197CompleteMoveArena.retireSet {781}).checkRepack []=some s2Step197EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step197EarlyControl_branchOwned : ([840] : List Wire).toFinset⊆s2Step197EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step197EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197EarlyControl_branch : compileHmrBranchRetirement s2Step197EarlyControlSigmaArena 840=some s2Step197EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step197EarlyControl_branchOwned
  · ext q
    simp [s2Step197EarlyControlOutputArena,s2Step197EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step197EarlyControl_classEqualityBorrow : s2Step197EarlyControlPositiveArena.checkBorrow (([822, 794] : List Wire).length-1) s2Step197EarlyControlLog.classWork=some s2Step197EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step197EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step197EarlyControlPositiveArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
      decide +kernel
    · ext q
      simp [s2Step197EarlyControlEqualityArena,s2Step197EarlyControlPositiveArena,s2Step197EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step197EarlyControl_classEqualityOwned : ([822, 794] : List Wire).toFinset⊆s2Step197EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step197EarlyControlPositiveArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197EarlyControl_classEquality : compileHmrEqualityLog s2Step197EarlyControlPositiveArena [822, 794] 0 s2Step197EarlyControlLog.classWork=some (s2Step197EarlyControlEqualityArena,s2Step197EarlyControlLog.classWork,s2Step197EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step197EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step197EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step197EarlyControl_classOwned : ([777, 807, 822] : List Wire).toFinset⊆s2Step197EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step197EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197EarlyControl_positiveBorrow : s2Step197EarlyControlZeroArena.checkBorrow (1) s2Step197EarlyControlLog.positiveWork=some s2Step197EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step197EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step197EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
      decide +kernel
    · ext q
      simp [s2Step197EarlyControlPositiveArena,s2Step197EarlyControlZeroArena,s2Step197EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step197EarlyControl_class : compileHmrSourceClassLog s2Step197EarlyControlZeroArena false 777 s2Step197EarlyControlZeroPlan.top 0 822 s2Step197EarlyControlLog.positiveWork s2Step197EarlyControlLog.classWork=some s2Step197EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step197EarlyControlClassPlan s2Step197EarlyControlZeroArena false 777 s2Step197EarlyControlZeroPlan.top 0 822
  constructor
  · decide +kernel
  · exact s2Step197EarlyControl_classOwned
  · exact s2Step197EarlyControl_positiveBorrow
  · exact s2Step197EarlyControl_classEquality

private theorem s2Step197EarlyControl_entryRecordOwned : ([840, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] : List Wire).toFinset⊆s2Step197EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step197EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197EarlyControl_entrySigmaOwned : ([822, 254] : List Wire).toFinset⊆s2Step197EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step197EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197EarlyControl_fitBorrow : s2Step197EarlyControlFlagArena.checkBorrow ((46-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] : List Wire).length)) s2Step197EarlyControlLog.recordFresh=some s2Step197EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step197EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step197EarlyControlFlagArena (fun q => (0≤q ∧ q<895)) rfl
      decide +kernel
    · ext q
      simp [s2Step197EarlyControlFittedArena,s2Step197EarlyControlFlagArena,s2Step197EarlyControlLog,arenaWires]

private theorem s2Step197EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] : List Wire).toFinset⊆s2Step197EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step197EarlyControlFlagArena (fun q => (0≤q ∧ q<895)) rfl
  decide +kernel

private theorem s2Step197EarlyControl_fit : compileHmrRecordGrowLog s2Step197EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 46 s2Step197EarlyControlLog.recordFresh=some s2Step197EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step197EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step197EarlyControl_fitBorrow

private theorem s2Step197EarlyControl_flagsBorrow : s2Step197EarlyControlEqualityArena.checkBorrow (6) s2Step197EarlyControlLog.flagWork=some s2Step197EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step197EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step197EarlyControlEqualityArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
      decide +kernel
    · ext q
      simp [s2Step197EarlyControlFlagArena,s2Step197EarlyControlEqualityArena,s2Step197EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step197EarlyControl_flagsOwned : ([867, 253, 252, 251] : List Wire).toFinset⊆s2Step197EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step197EarlyControlEqualityArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197EarlyControl_flags : compileHmrFlagsLog s2Step197EarlyControlClassPlan.equalityArena s2Step197EarlyControlClassPlan.equality.top 253 252 251 s2Step197EarlyControlLog.flagWork=some s2Step197EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step197EarlyControl_flagsOwned⟩
  · exact s2Step197EarlyControl_flagsBorrow

private theorem s2Step197EarlyControl_historyBorrow : s2Step197EarlyControlArena.checkBorrow ((46-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] : List Wire).length)) s2Step197EarlyControlLog.recordFresh=some s2Step197EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step197EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step197EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
      decide +kernel
    · ext q
      simp [s2Step197EarlyControlHistoryArena,s2Step197EarlyControlArena,s2Step197EarlyControlLog,arenaWires]

private theorem s2Step197EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] : List Wire).toFinset⊆s2Step197EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step197EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197EarlyControl_history : compileHmrRecordGrowLog s2Step197EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 46 s2Step197EarlyControlLog.recordFresh=some s2Step197EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step197EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step197EarlyControl_historyBorrow

private theorem s2Step197EarlyControl_sigmaOwned : ([254, 822] : List Wire).toFinset⊆s2Step197EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step197EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197EarlyControl_sigmaReleaseOwned : ([822] : List Wire).toFinset⊆s2Step197EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step197EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197EarlyControl_sigmaRelease : s2Step197EarlyControlHistoryArena.release {822} (fun _ => false)=some s2Step197EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step197EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step197EarlyControlSigmaArena,s2Step197EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step197EarlyControl_sigma : compileHmrSigmaDropLog s2Step197EarlyControlHistoryArena false 0 0 254 822 []=some s2Step197EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step197EarlyControl_sigmaOwned⟩
  · exact s2Step197EarlyControl_sigmaRelease

private theorem s2Step197EarlyControl_zeroBorrow : s2Step197EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step197EarlyControlLog.zeroWork=some s2Step197EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step197EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step197EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
      decide +kernel
    · ext q
      simp [s2Step197EarlyControlZeroArena,s2Step197EarlyControlArena,s2Step197EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step197EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step197EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step197EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197EarlyControl_zero : compileHmrEqualityLog s2Step197EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step197EarlyControlLog.zeroWork=some (s2Step197EarlyControlZeroArena,s2Step197EarlyControlLog.zeroWork,s2Step197EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step197EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step197EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step197EarlyControl_logged : s2Step197EarlyControlPlan.Logged s2Step197EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 777 822 254 253 252 251 840 46 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step197EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step197EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step197EarlyControl_zero
  · exact s2Step197EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step197EarlyControl_flags
  · exact s2Step197EarlyControl_fit
  · exact s2Step197EarlyControl_history
  · exact s2Step197EarlyControl_sigma
  · exact s2Step197EarlyControl_branch

private theorem s2Step197EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step197EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 777 822 254 253 252 251 840 46 s2Step197EarlyControlLog=some s2Step197EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step197EarlyControlPlan s2Step197EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 777 822 254 253 252 251 840 46 s2Step197EarlyControl_logged

private def s2Step197EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩

private def s2Step197EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827],770⟩

private def s2Step197EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169],769⟩

private def s2Step197EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837],771⟩

private def s2Step197FrontBank : WindowBank := ⟨s2Step197EntryFRow,s2Step197EntryGRow,s2Step197EntryFvRow,s2Step197EntryGvRow⟩

private def s2Step197Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 826, 768]

private def s2Step197Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814, 807, 794, 769]

private def s2Step197Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 770]

private def s2Step197Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 842, 829, 771]

private theorem s2Step197Counter_apart : Disjoint s2Step197HeadFvAfter.live s2Step197CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step197HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197Counter_borrowed : s2Step197HeadFvAfter.checkBorrow 4 s2Step197CounterWork=some s2Step197CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step197HeadFvAfter s2Step197CounterDuring s2Step197CounterWork.toFinset s2Step197Counter_bounded s2Step197Counter_apart rfl

private theorem s2Step197Counter_owned : (822::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step197HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step197HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197Counter_checked : compileHmrCounterStepLog s2Step197HeadFvAfter true 822 [772, 773, 774, 775, 776, 777] s2Step197CounterWork=some s2Step197CounterDuring := by
  have owned : ∀q∈822::[772, 773, 774, 775, 776, 777],q∈s2Step197HeadFvAfter.live := fun q hq => s2Step197Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step197Counter_borrowed

private def s2Step197EntryFAfter : Arena := s2Step197EntryFBefore

private theorem s2Step197EntryBank_incomingDistinct : ([s2Step197EntryFRow,s2Step197EntryGRow,s2Step197EntryFvRow,s2Step197EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197EntryF_Incoming : rowsOwned s2Step197EntryFBefore [s2Step197EntryFRow,s2Step197EntryGRow,s2Step197EntryFvRow,s2Step197EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step197EntryFRow,s2Step197EntryGRow,s2Step197EntryFvRow,s2Step197EntryGvRow] 0 s2Step197EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step197EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step197EntryBank_outgoingOwned : rowsOwned s2Step197EntryGvAfter [s2Step197EntryFOut,s2Step197EntryGOut,s2Step197EntryFvOut,s2Step197EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step197EntryGvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step197EntryF_Outgoing : rowsOwned s2Step197EntryGvAfter [s2Step197EntryFOut,s2Step197EntryGOut,s2Step197EntryFvOut,s2Step197EntryGvOut] :=
  hmrRows_owned_drop s2Step197EntryGvAfter [s2Step197EntryFOut,s2Step197EntryGOut,s2Step197EntryFvOut,s2Step197EntryGvOut] 0 s2Step197EntryBank_outgoingOwned

private theorem s2Step197EntryF_distinct : (s2Step197EntryFRow.sign::s2Step197EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197EntryF_owned : (s2Step197EntryFRow.sign::s2Step197EntryFRow.payload).toFinset⊆s2Step197EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step197EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197EntryF_reserved : s2Step197EntryFBefore.reserve s2Step197EntryFFresh.toFinset=some s2Step197EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step197EntryFFresh,arenaWires]
  · norm_num [s2Step197EntryFBefore,s2Step197EntryFFresh,arenaWires]
  · simp only [s2Step197EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step197EntryF_checked : planRowResizeLog s2Step197EntryFBefore s2Step197EntryFRow 172 s2Step197EntryFFresh=
    some (s2Step197EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩,growRow 768 s2Step197EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step197EntryFBefore s2Step197EntryFAfter s2Step197EntryFRow 172 s2Step197EntryFFresh
    s2Step197EntryF_distinct s2Step197EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step197EntryF_reserved
  have rowEq : WindowRow.mk (s2Step197EntryFRow.payload++s2Step197EntryFFresh) s2Step197EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step197EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197EntryFvAfter : Arena := s2Step197EntryGAfter

private def s2Step197EntryFvBefore : Arena := s2Step197EntryGAfter

private theorem s2Step197EntryFv_Incoming : rowsOwned s2Step197EntryFvBefore [s2Step197EntryFvRow,s2Step197EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step197EntryFRow,s2Step197EntryGRow,s2Step197EntryFvRow,s2Step197EntryGvRow] 2 s2Step197EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step197EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step197EntryFv_Outgoing : rowsOwned s2Step197EntryGvAfter [s2Step197EntryFvOut,s2Step197EntryGvOut] :=
  hmrRows_owned_drop s2Step197EntryGvAfter [s2Step197EntryFOut,s2Step197EntryGOut,s2Step197EntryFvOut,s2Step197EntryGvOut] 2 s2Step197EntryBank_outgoingOwned

private theorem s2Step197EntryFv_distinct : (s2Step197EntryFvRow.sign::s2Step197EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197EntryFv_owned : (s2Step197EntryFvRow.sign::s2Step197EntryFvRow.payload).toFinset⊆s2Step197EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step197EntryFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197EntryFv_reserved : s2Step197EntryFvBefore.reserve s2Step197EntryFvFresh.toFinset=some s2Step197EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step197EntryFvFresh,arenaWires]
  · norm_num [s2Step197EntryFvBefore,s2Step197EntryGAfter,s2Step197EntryFvFresh,arenaWires]
  · simp only [s2Step197EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step197EntryFv_checked : planRowResizeLog s2Step197EntryFvBefore s2Step197EntryFvRow 113 s2Step197EntryFvFresh=
    some (s2Step197EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827],770⟩,growRow 770 s2Step197EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step197EntryFvBefore s2Step197EntryFvAfter s2Step197EntryFvRow 113 s2Step197EntryFvFresh
    s2Step197EntryFv_distinct s2Step197EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step197EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step197EntryFvRow.payload++s2Step197EntryFvFresh) s2Step197EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step197EntryGBefore : Arena := s2Step197EntryFBefore

private theorem s2Step197EntryG_Incoming : rowsOwned s2Step197EntryGBefore [s2Step197EntryGRow,s2Step197EntryFvRow,s2Step197EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step197EntryFRow,s2Step197EntryGRow,s2Step197EntryFvRow,s2Step197EntryGvRow] 1 s2Step197EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step197EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step197EntryG_Outgoing : rowsOwned s2Step197EntryGvAfter [s2Step197EntryGOut,s2Step197EntryFvOut,s2Step197EntryGvOut] :=
  hmrRows_owned_drop s2Step197EntryGvAfter [s2Step197EntryFOut,s2Step197EntryGOut,s2Step197EntryFvOut,s2Step197EntryGvOut] 1 s2Step197EntryBank_outgoingOwned

private theorem s2Step197EntryG_distinct : (s2Step197EntryGRow.sign::s2Step197EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197EntryG_owned : (s2Step197EntryGRow.sign::s2Step197EntryGRow.payload).toFinset⊆s2Step197EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step197EntryGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197EntryG_reserved : s2Step197EntryGBefore.reserve s2Step197EntryGFresh.toFinset=some s2Step197EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step197EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step197EntryGBefore,s2Step197EntryFBefore,s2Step197EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step197EntryGAfter,s2Step197EntryGBefore,s2Step197EntryFBefore,s2Step197EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step197EntryG_checked : planRowResizeLog s2Step197EntryGBefore s2Step197EntryGRow 172 s2Step197EntryGFresh=
    some (s2Step197EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814, 807],769⟩,growRow 769 s2Step197EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step197EntryGBefore s2Step197EntryGAfter s2Step197EntryGRow 172 s2Step197EntryGFresh
    s2Step197EntryG_distinct s2Step197EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step197EntryG_reserved
  have rowEq : WindowRow.mk (s2Step197EntryGRow.payload++s2Step197EntryGFresh) s2Step197EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814, 807],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step197EntryGvBefore : Arena := s2Step197EntryGAfter

private theorem s2Step197EntryGv_Incoming : rowsOwned s2Step197EntryGvBefore [s2Step197EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step197EntryFRow,s2Step197EntryGRow,s2Step197EntryFvRow,s2Step197EntryGvRow] 3 s2Step197EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step197EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step197EntryGv_Outgoing : rowsOwned s2Step197EntryGvAfter [s2Step197EntryGvOut] :=
  hmrRows_owned_drop s2Step197EntryGvAfter [s2Step197EntryFOut,s2Step197EntryGOut,s2Step197EntryFvOut,s2Step197EntryGvOut] 3 s2Step197EntryBank_outgoingOwned

private theorem s2Step197EntryGv_distinct : (s2Step197EntryGvRow.sign::s2Step197EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197EntryGv_owned : (s2Step197EntryGvRow.sign::s2Step197EntryGvRow.payload).toFinset⊆s2Step197EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step197EntryGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197EntryGv_reserved : s2Step197EntryGvBefore.reserve s2Step197EntryGvFresh.toFinset=some s2Step197EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step197EntryGvFresh,arenaWires]
  · norm_num [s2Step197EntryGvBefore,s2Step197EntryGAfter,s2Step197EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step197EntryGvAfter,s2Step197EntryGvBefore,s2Step197EntryGAfter,s2Step197EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step197EntryGv_checked : planRowResizeLog s2Step197EntryGvBefore s2Step197EntryGvRow 113 s2Step197EntryGvFresh=
    some (s2Step197EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 842],771⟩,growRow 771 s2Step197EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step197EntryGvBefore s2Step197EntryGvAfter s2Step197EntryGvRow 113 s2Step197EntryGvFresh
    s2Step197EntryGv_distinct s2Step197EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step197EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step197EntryGvRow.payload++s2Step197EntryGvFresh) s2Step197EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 842],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step197EntryBank_rows : planWindowRowsLog s2Step197EntryFBefore [(s2Step197EntryFRow,172),(s2Step197EntryGRow,172),(s2Step197EntryFvRow,113),(s2Step197EntryGvRow,113)] [s2Step197EntryFFresh,s2Step197EntryGFresh,s2Step197EntryFvFresh,s2Step197EntryGvFresh]=
    some (s2Step197EntryGvAfter,[s2Step197EntryFOut,s2Step197EntryGOut,s2Step197EntryFvOut,s2Step197EntryGvOut],(growRow 768 s2Step197EntryFFresh ++ (growRow 769 s2Step197EntryGFresh ++ (growRow 770 s2Step197EntryFvFresh ++ (growRow 771 s2Step197EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step197EntryGvAfter [] []=some (s2Step197EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step197EntryGvBefore s2Step197EntryGvAfter s2Step197EntryGvAfter
    s2Step197EntryGvRow s2Step197EntryGvOut 113 s2Step197EntryGvFresh [] [] []
    (growRow 771 s2Step197EntryGvFresh) ([]) s2Step197EntryGv_Incoming s2Step197EntryGv_checked h4 s2Step197EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step197EntryFvBefore s2Step197EntryFvAfter s2Step197EntryGvAfter
    s2Step197EntryFvRow s2Step197EntryFvOut 113 s2Step197EntryFvFresh [(s2Step197EntryGvRow,113)] [s2Step197EntryGvFresh] [s2Step197EntryGvOut]
    (growRow 770 s2Step197EntryFvFresh) ((growRow 771 s2Step197EntryGvFresh ++ [])) s2Step197EntryFv_Incoming s2Step197EntryFv_checked h3 s2Step197EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step197EntryGBefore s2Step197EntryGAfter s2Step197EntryGvAfter
    s2Step197EntryGRow s2Step197EntryGOut 172 s2Step197EntryGFresh [(s2Step197EntryFvRow,113),(s2Step197EntryGvRow,113)] [s2Step197EntryFvFresh,s2Step197EntryGvFresh] [s2Step197EntryFvOut,s2Step197EntryGvOut]
    (growRow 769 s2Step197EntryGFresh) ((growRow 770 s2Step197EntryFvFresh ++ (growRow 771 s2Step197EntryGvFresh ++ []))) s2Step197EntryG_Incoming s2Step197EntryG_checked h2 s2Step197EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step197EntryFBefore s2Step197EntryFAfter s2Step197EntryGvAfter
    s2Step197EntryFRow s2Step197EntryFOut 172 s2Step197EntryFFresh [(s2Step197EntryGRow,172),(s2Step197EntryFvRow,113),(s2Step197EntryGvRow,113)] [s2Step197EntryGFresh,s2Step197EntryFvFresh,s2Step197EntryGvFresh] [s2Step197EntryGOut,s2Step197EntryFvOut,s2Step197EntryGvOut]
    (growRow 768 s2Step197EntryFFresh) ((growRow 769 s2Step197EntryGFresh ++ (growRow 770 s2Step197EntryFvFresh ++ (growRow 771 s2Step197EntryGvFresh ++ [])))) s2Step197EntryF_Incoming s2Step197EntryF_checked h1 s2Step197EntryF_Outgoing
  exact h0

private theorem s2Step197EntryBank_checked : compileHmrBankResizeLog .entry s2Step197EntryFBefore ⟨s2Step197EntryFRow,s2Step197EntryGRow,s2Step197EntryFvRow,s2Step197EntryGvRow⟩ ⟨172,172,113,113⟩ [s2Step197EntryFFresh,s2Step197EntryGFresh,s2Step197EntryFvFresh,s2Step197EntryGvFresh]=
    some (s2Step197EntryGvAfter,⟨s2Step197EntryFOut,s2Step197EntryGOut,s2Step197EntryFvOut,s2Step197EntryGvOut⟩,(growRow 768 s2Step197EntryFFresh ++ (growRow 769 s2Step197EntryGFresh ++ (growRow 770 s2Step197EntryFvFresh ++ (growRow 771 s2Step197EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step197EntryBank_rows]
  rfl

private def s2Step197ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<683) ∨ (684≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197ExitFBefore : Arena := s2Step197ExitGAfter

private def s2Step197ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 826],768⟩

private def s2Step197ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817],770⟩

private def s2Step197ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814, 807, 794],769⟩

private def s2Step197ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 842, 829],771⟩

private theorem s2Step197ExitBank_incomingDistinct : ([s2Step197ExitGRow,s2Step197ExitFRow,s2Step197ExitFvRow,s2Step197ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197ExitF_Incoming : rowsOwned s2Step197ExitFBefore [s2Step197ExitFRow,s2Step197ExitFvRow,s2Step197ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step197ExitGRow,s2Step197ExitFRow,s2Step197ExitFvRow,s2Step197ExitGvRow] 1 s2Step197ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step197ExitFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step197ExitBank_outgoingOwned : rowsOwned s2Step197ExitGvAfter [s2Step197ExitGOut,s2Step197ExitFOut,s2Step197ExitFvOut,s2Step197ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step197ExitGvAfter (fun q => (0≤q ∧ q<683) ∨ (684≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step197ExitF_Outgoing : rowsOwned s2Step197ExitGvAfter [s2Step197ExitFOut,s2Step197ExitFvOut,s2Step197ExitGvOut] :=
  hmrRows_owned_drop s2Step197ExitGvAfter [s2Step197ExitGOut,s2Step197ExitFOut,s2Step197ExitFvOut,s2Step197ExitGvOut] 1 s2Step197ExitBank_outgoingOwned

private theorem s2Step197ExitF_distinct : (s2Step197ExitFRow.sign::s2Step197ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197ExitF_owned : (s2Step197ExitFRow.sign::s2Step197ExitFRow.payload).toFinset⊆s2Step197ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step197ExitFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197ExitF_retired : s2Step197ExitFBefore.retireSet s2Step197ExitFExtra.toFinset=s2Step197ExitFAfter := by
  unfold Arena.retireSet s2Step197ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step197ExitFBefore,s2Step197ExitGAfter,s2Step197ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step197ExitF_checked : planRowResizeLog s2Step197ExitFBefore s2Step197ExitFRow 171 []=
    some (s2Step197ExitFAfter,s2Step197ExitFOut,shrinkRow 768 s2Step197ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step197ExitFBefore s2Step197ExitFRow 171 s2Step197ExitF_distinct s2Step197ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step197ExitFRow.payload.take 171) s2Step197ExitFRow.sign=s2Step197ExitFOut := by decide +kernel
  have hi : s2Step197ExitFRow.payload.drop 171=s2Step197ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step197ExitF_retired] at result
  exact result

private def s2Step197ExitFvAfter : Arena := s2Step197ExitFAfter

private def s2Step197ExitFvBefore : Arena := s2Step197ExitFAfter

private theorem s2Step197ExitFv_Incoming : rowsOwned s2Step197ExitFvBefore [s2Step197ExitFvRow,s2Step197ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step197ExitGRow,s2Step197ExitFRow,s2Step197ExitFvRow,s2Step197ExitGvRow] 2 s2Step197ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step197ExitFvBefore (fun q => (0≤q ∧ q<683) ∨ (684≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step197ExitFv_Outgoing : rowsOwned s2Step197ExitGvAfter [s2Step197ExitFvOut,s2Step197ExitGvOut] :=
  hmrRows_owned_drop s2Step197ExitGvAfter [s2Step197ExitGOut,s2Step197ExitFOut,s2Step197ExitFvOut,s2Step197ExitGvOut] 2 s2Step197ExitBank_outgoingOwned

private theorem s2Step197ExitFv_distinct : (s2Step197ExitFvRow.sign::s2Step197ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197ExitFv_owned : (s2Step197ExitFvRow.sign::s2Step197ExitFvRow.payload).toFinset⊆s2Step197ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step197ExitFvBefore (fun q => (0≤q ∧ q<683) ∨ (684≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197ExitFv_reserved : s2Step197ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step197ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step197ExitFv_checked : planRowResizeLog s2Step197ExitFvBefore s2Step197ExitFvRow 114 []=
    some (s2Step197ExitFvAfter,s2Step197ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step197ExitFvBefore s2Step197ExitFvAfter s2Step197ExitFvRow 114 []
    s2Step197ExitFv_distinct s2Step197ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step197ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step197ExitFvRow.payload++[]) s2Step197ExitFvRow.sign=s2Step197ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step197ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private theorem s2Step197ExitG_Incoming : rowsOwned s2Step197ExitGBefore [s2Step197ExitGRow,s2Step197ExitFRow,s2Step197ExitFvRow,s2Step197ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step197ExitGRow,s2Step197ExitFRow,s2Step197ExitFvRow,s2Step197ExitGvRow] 0 s2Step197ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step197ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step197ExitG_Outgoing : rowsOwned s2Step197ExitGvAfter [s2Step197ExitGOut,s2Step197ExitFOut,s2Step197ExitFvOut,s2Step197ExitGvOut] :=
  hmrRows_owned_drop s2Step197ExitGvAfter [s2Step197ExitGOut,s2Step197ExitFOut,s2Step197ExitFvOut,s2Step197ExitGvOut] 0 s2Step197ExitBank_outgoingOwned

private theorem s2Step197ExitG_distinct : (s2Step197ExitGRow.sign::s2Step197ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197ExitG_owned : (s2Step197ExitGRow.sign::s2Step197ExitGRow.payload).toFinset⊆s2Step197ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step197ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197ExitG_retired : s2Step197ExitGBefore.retireSet s2Step197ExitGExtra.toFinset=s2Step197ExitGAfter := by
  unfold Arena.retireSet s2Step197ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step197ExitGBefore,s2Step197ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step197ExitG_checked : planRowResizeLog s2Step197ExitGBefore s2Step197ExitGRow 171 []=
    some (s2Step197ExitGAfter,s2Step197ExitGOut,shrinkRow 769 s2Step197ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step197ExitGBefore s2Step197ExitGRow 171 s2Step197ExitG_distinct s2Step197ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step197ExitGRow.payload.take 171) s2Step197ExitGRow.sign=s2Step197ExitGOut := by decide +kernel
  have hi : s2Step197ExitGRow.payload.drop 171=s2Step197ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step197ExitG_retired] at result
  exact result

private def s2Step197ExitGvBefore : Arena := s2Step197ExitFAfter

private theorem s2Step197ExitGv_Incoming : rowsOwned s2Step197ExitGvBefore [s2Step197ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step197ExitGRow,s2Step197ExitFRow,s2Step197ExitFvRow,s2Step197ExitGvRow] 3 s2Step197ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step197ExitGvBefore (fun q => (0≤q ∧ q<683) ∨ (684≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step197ExitGv_Outgoing : rowsOwned s2Step197ExitGvAfter [s2Step197ExitGvOut] :=
  hmrRows_owned_drop s2Step197ExitGvAfter [s2Step197ExitGOut,s2Step197ExitFOut,s2Step197ExitFvOut,s2Step197ExitGvOut] 3 s2Step197ExitBank_outgoingOwned

private theorem s2Step197ExitGv_distinct : (s2Step197ExitGvRow.sign::s2Step197ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197ExitGv_owned : (s2Step197ExitGvRow.sign::s2Step197ExitGvRow.payload).toFinset⊆s2Step197ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step197ExitGvBefore (fun q => (0≤q ∧ q<683) ∨ (684≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197ExitGv_retired : s2Step197ExitGvBefore.retireSet s2Step197ExitGvExtra.toFinset=s2Step197ExitGvAfter := by
  unfold Arena.retireSet s2Step197ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step197ExitGvBefore,s2Step197ExitFAfter,s2Step197ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step197ExitGv_checked : planRowResizeLog s2Step197ExitGvBefore s2Step197ExitGvRow 112 []=
    some (s2Step197ExitGvAfter,s2Step197ExitGvOut,shrinkRow 771 s2Step197ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step197ExitGvBefore s2Step197ExitGvRow 112 s2Step197ExitGv_distinct s2Step197ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step197ExitGvRow.payload.take 112) s2Step197ExitGvRow.sign=s2Step197ExitGvOut := by decide +kernel
  have hi : s2Step197ExitGvRow.payload.drop 112=s2Step197ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step197ExitGv_retired] at result
  exact result

private theorem s2Step197ExitBank_rows : planWindowRowsLog s2Step197ExitGBefore [(s2Step197ExitGRow,171),(s2Step197ExitFRow,171),(s2Step197ExitFvRow,114),(s2Step197ExitGvRow,112)] [[],[],[],[]]=
    some (s2Step197ExitGvAfter,[s2Step197ExitGOut,s2Step197ExitFOut,s2Step197ExitFvOut,s2Step197ExitGvOut],(shrinkRow 769 s2Step197ExitGExtra ++ (shrinkRow 768 s2Step197ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step197ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step197ExitGvAfter [] []=some (s2Step197ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step197ExitGvBefore s2Step197ExitGvAfter s2Step197ExitGvAfter
    s2Step197ExitGvRow s2Step197ExitGvOut 112 [] [] [] []
    (shrinkRow 771 s2Step197ExitGvExtra) ([]) s2Step197ExitGv_Incoming s2Step197ExitGv_checked h4 s2Step197ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step197ExitFvBefore s2Step197ExitFvAfter s2Step197ExitGvAfter
    s2Step197ExitFvRow s2Step197ExitFvOut 114 [] [(s2Step197ExitGvRow,112)] [[]] [s2Step197ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step197ExitGvExtra ++ [])) s2Step197ExitFv_Incoming s2Step197ExitFv_checked h3 s2Step197ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step197ExitFBefore s2Step197ExitFAfter s2Step197ExitGvAfter
    s2Step197ExitFRow s2Step197ExitFOut 171 [] [(s2Step197ExitFvRow,114),(s2Step197ExitGvRow,112)] [[],[]] [s2Step197ExitFvOut,s2Step197ExitGvOut]
    (shrinkRow 768 s2Step197ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step197ExitGvExtra ++ []))) s2Step197ExitF_Incoming s2Step197ExitF_checked h2 s2Step197ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step197ExitGBefore s2Step197ExitGAfter s2Step197ExitGvAfter
    s2Step197ExitGRow s2Step197ExitGOut 171 [] [(s2Step197ExitFRow,171),(s2Step197ExitFvRow,114),(s2Step197ExitGvRow,112)] [[],[],[]] [s2Step197ExitFOut,s2Step197ExitFvOut,s2Step197ExitGvOut]
    (shrinkRow 769 s2Step197ExitGExtra) ((shrinkRow 768 s2Step197ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step197ExitGvExtra ++ [])))) s2Step197ExitG_Incoming s2Step197ExitG_checked h1 s2Step197ExitG_Outgoing
  exact h0

private theorem s2Step197ExitBank_checked : compileHmrBankResizeLog .exit s2Step197ExitGBefore ⟨s2Step197ExitFRow,s2Step197ExitGRow,s2Step197ExitFvRow,s2Step197ExitGvRow⟩ ⟨171,171,114,112⟩ [[],[],[],[]]=
    some (s2Step197ExitGvAfter,⟨s2Step197ExitFOut,s2Step197ExitGOut,s2Step197ExitFvOut,s2Step197ExitGvOut⟩,(shrinkRow 769 s2Step197ExitGExtra ++ (shrinkRow 768 s2Step197ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step197ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step197ExitBank_rows]
  rfl

private theorem s2Step197Add0_apart : Disjoint s2Step197Add0Arena.live s2Step197Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step197Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197Add0_card : s2Step197Add0Arena.live.card=890 := by
  decide +kernel

private theorem s2Step197Add0_borrowed : s2Step197Add0Arena.checkBorrow (hmrHybridCount s2Step197Add0Arena s2Step197Add0B.length) s2Step197Add0Work=some s2Step197Add0During := by
  have len : s2Step197Add0Work.length=hmrHybridCount s2Step197Add0Arena s2Step197Add0B.length := by
    rw [hmrHybridCount,s2Step197Add0_card]
    decide +kernel
  have nd : s2Step197Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step197Add0Arena s2Step197Add0During s2Step197Add0Work.toFinset s2Step197Add0_bounded s2Step197Add0_apart rfl

private theorem s2Step197Add0_distinct : (867::840::877::(s2Step197Add0A++s2Step197Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197Add0_owned : (867::840::877::(s2Step197Add0A++s2Step197Add0B)).toFinset⊆s2Step197Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step197Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197Add0_checked : compileHmrHybridCinLog s2Step197Add0Arena 840 867 877 s2Step197Add0A s2Step197Add0B s2Step197Add0Work=some s2Step197Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step197Add0Arena s2Step197Add0During 840 867 877 s2Step197Add0A s2Step197Add0B s2Step197Add0Work
    (by decide +kernel) (by decide +kernel) s2Step197Add0_distinct
    (fun q hq => s2Step197Add0_owned (List.mem_toFinset.mpr hq)) s2Step197Add0_borrowed

private theorem s2Step197Add1_apart : Disjoint s2Step197Add1Arena.live s2Step197Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step197Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197Add1_card : s2Step197Add1Arena.live.card=890 := by
  decide +kernel

private theorem s2Step197Add1_borrowed : s2Step197Add1Arena.checkBorrow (hmrHybridCount s2Step197Add1Arena s2Step197Add1B.length) s2Step197Add1Work=some s2Step197Add1During := by
  have len : s2Step197Add1Work.length=hmrHybridCount s2Step197Add1Arena s2Step197Add1B.length := by
    rw [hmrHybridCount,s2Step197Add1_card]
    decide +kernel
  have nd : s2Step197Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step197Add1Arena s2Step197Add1During s2Step197Add1Work.toFinset s2Step197Add1_bounded s2Step197Add1_apart rfl

private theorem s2Step197Add1_distinct : (867::840::877::(s2Step197Add1A++s2Step197Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197Add1_owned : (867::840::877::(s2Step197Add1A++s2Step197Add1B)).toFinset⊆s2Step197Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step197Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197Add1_checked : compileHmrHybridCinLog s2Step197Add1Arena 840 867 877 s2Step197Add1A s2Step197Add1B s2Step197Add1Work=some s2Step197Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step197Add1Arena s2Step197Add1During 840 867 877 s2Step197Add1A s2Step197Add1B s2Step197Add1Work
    (by decide +kernel) (by decide +kernel) s2Step197Add1_distinct
    (fun q hq => s2Step197Add1_owned (List.mem_toFinset.mpr hq)) s2Step197Add1_borrowed

private theorem s2Step197F4_apart : Disjoint (s2Step197Add0A++s2Step197Add0B).toFinset (s2Step197Add1A++s2Step197Add1B).toFinset := by
  have nd : ((s2Step197Add0A++s2Step197Add0B)++(s2Step197Add1A++s2Step197Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step197F4_carry : s2Step197F4FlagArena.checkBorrow 1 [877]=some s2Step197Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step197F4FlagArena,s2Step197HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step197F4FlagArena,s2Step197HeadFvAfter,s2Step197Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step197F4_distinct : (822::840::867::877::((s2Step197Add0A++s2Step197Add1A)++(s2Step197Add0B++s2Step197Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197F4_flag : s2Step197HeadFvAfter.checkBorrow 1 [867]=some s2Step197F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step197HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step197F4_owned : (822::840::((s2Step197Add0A++s2Step197Add1A)++(s2Step197Add0B++s2Step197Add1B))).toFinset⊆s2Step197HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step197HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197F4_checked : compileHmrHybridF4Log s2Step197HeadFvAfter 822 840 s2Step197Add0A s2Step197Add0B s2Step197Add1A s2Step197Add1B [867] [877] s2Step197Add0Work s2Step197Add1Work=some s2Step197F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step197HeadFvAfter s2Step197F4FlagArena s2Step197Add0Arena s2Step197Add0During s2Step197Add1During 822 840
    s2Step197Add0A s2Step197Add0B s2Step197Add1A s2Step197Add1B [867] [877] s2Step197Add0Work s2Step197Add1Work
    (fun q hq => s2Step197F4_owned (List.mem_toFinset.mpr hq)) s2Step197F4_flag s2Step197F4_carry
    s2Step197F4_distinct s2Step197F4_apart s2Step197Add0_checked s2Step197Add1_checked

private theorem s2Step197Front_branch : s2Step197FrontSigmaArena.checkBorrow 1 [840]=some s2Step197HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step197FrontSigmaArena,s2Step197EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step197FrontSigmaArena,s2Step197EntryGvAfter,s2Step197HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step197Front_entry : HmrFrontEntryValid s2Step197EntryFBefore s2Step197FrontBank 172 113 ⟨171,171,114,112⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step197FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step197EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step197EntryFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step197FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step197Front_sigma : s2Step197EntryGvAfter.checkBorrow 1 [822]=some s2Step197FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step197EntryGvAfter,arenaWires]
  · rfl

private def s2Step197HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197HeadFBefore : Arena := s2Step197HeadGAfter

private def s2Step197HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683],768⟩

private def s2Step197HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827],770⟩

private def s2Step197HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814, 807],769⟩

private def s2Step197HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 842],771⟩

private theorem s2Step197HeadBank_incomingDistinct : ([s2Step197HeadGRow,s2Step197HeadFRow,s2Step197HeadGvRow,s2Step197HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197HeadF_Incoming : rowsOwned s2Step197HeadFBefore [s2Step197HeadFRow,s2Step197HeadGvRow,s2Step197HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step197HeadGRow,s2Step197HeadFRow,s2Step197HeadGvRow,s2Step197HeadFvRow] 1 s2Step197HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step197HeadFBefore (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step197HeadBank_outgoingOwned : rowsOwned s2Step197HeadFvAfter [s2Step197HeadGOut,s2Step197HeadFOut,s2Step197HeadGvOut,s2Step197HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step197HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step197HeadF_Outgoing : rowsOwned s2Step197HeadFvAfter [s2Step197HeadFOut,s2Step197HeadGvOut,s2Step197HeadFvOut] :=
  hmrRows_owned_drop s2Step197HeadFvAfter [s2Step197HeadGOut,s2Step197HeadFOut,s2Step197HeadGvOut,s2Step197HeadFvOut] 1 s2Step197HeadBank_outgoingOwned

private theorem s2Step197HeadF_distinct : (s2Step197HeadFRow.sign::s2Step197HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197HeadF_owned : (s2Step197HeadFRow.sign::s2Step197HeadFRow.payload).toFinset⊆s2Step197HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step197HeadFBefore (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197HeadF_reserved : s2Step197HeadFBefore.reserve s2Step197HeadFFresh.toFinset=some s2Step197HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step197HeadFFresh,arenaWires]
  · norm_num [s2Step197HeadFBefore,s2Step197HeadGAfter,s2Step197HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step197HeadFAfter,s2Step197HeadFBefore,s2Step197HeadGAfter,s2Step197HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step197HeadF_checked : planRowResizeLog s2Step197HeadFBefore s2Step197HeadFRow 173 s2Step197HeadFFresh=
    some (s2Step197HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 826],768⟩,growRow 768 s2Step197HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step197HeadFBefore s2Step197HeadFAfter s2Step197HeadFRow 173 s2Step197HeadFFresh
    s2Step197HeadF_distinct s2Step197HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step197HeadF_reserved
  have rowEq : WindowRow.mk (s2Step197HeadFRow.payload++s2Step197HeadFFresh) s2Step197HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 826],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step197HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step197HeadFvBefore : Arena := s2Step197HeadGvAfter

private theorem s2Step197HeadFv_Incoming : rowsOwned s2Step197HeadFvBefore [s2Step197HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step197HeadGRow,s2Step197HeadFRow,s2Step197HeadGvRow,s2Step197HeadFvRow] 3 s2Step197HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step197HeadFvBefore (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step197HeadFv_Outgoing : rowsOwned s2Step197HeadFvAfter [s2Step197HeadFvOut] :=
  hmrRows_owned_drop s2Step197HeadFvAfter [s2Step197HeadGOut,s2Step197HeadFOut,s2Step197HeadGvOut,s2Step197HeadFvOut] 3 s2Step197HeadBank_outgoingOwned

private theorem s2Step197HeadFv_distinct : (s2Step197HeadFvRow.sign::s2Step197HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197HeadFv_owned : (s2Step197HeadFvRow.sign::s2Step197HeadFvRow.payload).toFinset⊆s2Step197HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step197HeadFvBefore (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197HeadFv_reserved : s2Step197HeadFvBefore.reserve s2Step197HeadFvFresh.toFinset=some s2Step197HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step197HeadFvFresh,arenaWires]
  · norm_num [s2Step197HeadFvBefore,s2Step197HeadGvAfter,s2Step197HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step197HeadFvAfter,s2Step197HeadFvBefore,s2Step197HeadGvAfter,s2Step197HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step197HeadFv_checked : planRowResizeLog s2Step197HeadFvBefore s2Step197HeadFvRow 114 s2Step197HeadFvFresh=
    some (s2Step197HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817],770⟩,growRow 770 s2Step197HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step197HeadFvBefore s2Step197HeadFvAfter s2Step197HeadFvRow 114 s2Step197HeadFvFresh
    s2Step197HeadFv_distinct s2Step197HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step197HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step197HeadFvRow.payload++s2Step197HeadFvFresh) s2Step197HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step197HeadG_Incoming : rowsOwned s2Step197HeadGBefore [s2Step197HeadGRow,s2Step197HeadFRow,s2Step197HeadGvRow,s2Step197HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step197HeadGRow,s2Step197HeadFRow,s2Step197HeadGvRow,s2Step197HeadFvRow] 0 s2Step197HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step197HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step197HeadG_Outgoing : rowsOwned s2Step197HeadFvAfter [s2Step197HeadGOut,s2Step197HeadFOut,s2Step197HeadGvOut,s2Step197HeadFvOut] :=
  hmrRows_owned_drop s2Step197HeadFvAfter [s2Step197HeadGOut,s2Step197HeadFOut,s2Step197HeadGvOut,s2Step197HeadFvOut] 0 s2Step197HeadBank_outgoingOwned

private theorem s2Step197HeadG_distinct : (s2Step197HeadGRow.sign::s2Step197HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197HeadG_owned : (s2Step197HeadGRow.sign::s2Step197HeadGRow.payload).toFinset⊆s2Step197HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step197HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<817) ∨ (818≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197HeadG_reserved : s2Step197HeadGBefore.reserve s2Step197HeadGFresh.toFinset=some s2Step197HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step197HeadGFresh,arenaWires]
  · norm_num [s2Step197HeadGBefore,s2Step197HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step197HeadGAfter,s2Step197HeadGBefore,s2Step197HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step197HeadG_checked : planRowResizeLog s2Step197HeadGBefore s2Step197HeadGRow 173 s2Step197HeadGFresh=
    some (s2Step197HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814, 807, 794],769⟩,growRow 769 s2Step197HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step197HeadGBefore s2Step197HeadGAfter s2Step197HeadGRow 173 s2Step197HeadGFresh
    s2Step197HeadG_distinct s2Step197HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step197HeadG_reserved
  have rowEq : WindowRow.mk (s2Step197HeadGRow.payload++s2Step197HeadGFresh) s2Step197HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814, 807, 794],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step197HeadGvBefore : Arena := s2Step197HeadFAfter

private theorem s2Step197HeadGv_Incoming : rowsOwned s2Step197HeadGvBefore [s2Step197HeadGvRow,s2Step197HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step197HeadGRow,s2Step197HeadFRow,s2Step197HeadGvRow,s2Step197HeadFvRow] 2 s2Step197HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step197HeadGvBefore (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step197HeadGv_Outgoing : rowsOwned s2Step197HeadFvAfter [s2Step197HeadGvOut,s2Step197HeadFvOut] :=
  hmrRows_owned_drop s2Step197HeadFvAfter [s2Step197HeadGOut,s2Step197HeadFOut,s2Step197HeadGvOut,s2Step197HeadFvOut] 2 s2Step197HeadBank_outgoingOwned

private theorem s2Step197HeadGv_distinct : (s2Step197HeadGvRow.sign::s2Step197HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step197HeadGv_owned : (s2Step197HeadGvRow.sign::s2Step197HeadGvRow.payload).toFinset⊆s2Step197HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step197HeadGvBefore (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step197HeadGv_reserved : s2Step197HeadGvBefore.reserve s2Step197HeadGvFresh.toFinset=some s2Step197HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step197HeadGvFresh,arenaWires]
  · norm_num [s2Step197HeadGvBefore,s2Step197HeadFAfter,s2Step197HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step197HeadGvAfter,s2Step197HeadGvBefore,s2Step197HeadFAfter,s2Step197HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step197HeadGv_checked : planRowResizeLog s2Step197HeadGvBefore s2Step197HeadGvRow 114 s2Step197HeadGvFresh=
    some (s2Step197HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 842, 829],771⟩,growRow 771 s2Step197HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step197HeadGvBefore s2Step197HeadGvAfter s2Step197HeadGvRow 114 s2Step197HeadGvFresh
    s2Step197HeadGv_distinct s2Step197HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step197HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step197HeadGvRow.payload++s2Step197HeadGvFresh) s2Step197HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 842, 829],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step197HeadBank_rows : planWindowRowsLog s2Step197HeadGBefore [(s2Step197HeadGRow,173),(s2Step197HeadFRow,173),(s2Step197HeadGvRow,114),(s2Step197HeadFvRow,114)] [s2Step197HeadGFresh,s2Step197HeadFFresh,s2Step197HeadGvFresh,s2Step197HeadFvFresh]=
    some (s2Step197HeadFvAfter,[s2Step197HeadGOut,s2Step197HeadFOut,s2Step197HeadGvOut,s2Step197HeadFvOut],(growRow 769 s2Step197HeadGFresh ++ (growRow 768 s2Step197HeadFFresh ++ (growRow 771 s2Step197HeadGvFresh ++ (growRow 770 s2Step197HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step197HeadFvAfter [] []=some (s2Step197HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step197HeadFvBefore s2Step197HeadFvAfter s2Step197HeadFvAfter
    s2Step197HeadFvRow s2Step197HeadFvOut 114 s2Step197HeadFvFresh [] [] []
    (growRow 770 s2Step197HeadFvFresh) ([]) s2Step197HeadFv_Incoming s2Step197HeadFv_checked h4 s2Step197HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step197HeadGvBefore s2Step197HeadGvAfter s2Step197HeadFvAfter
    s2Step197HeadGvRow s2Step197HeadGvOut 114 s2Step197HeadGvFresh [(s2Step197HeadFvRow,114)] [s2Step197HeadFvFresh] [s2Step197HeadFvOut]
    (growRow 771 s2Step197HeadGvFresh) ((growRow 770 s2Step197HeadFvFresh ++ [])) s2Step197HeadGv_Incoming s2Step197HeadGv_checked h3 s2Step197HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step197HeadFBefore s2Step197HeadFAfter s2Step197HeadFvAfter
    s2Step197HeadFRow s2Step197HeadFOut 173 s2Step197HeadFFresh [(s2Step197HeadGvRow,114),(s2Step197HeadFvRow,114)] [s2Step197HeadGvFresh,s2Step197HeadFvFresh] [s2Step197HeadGvOut,s2Step197HeadFvOut]
    (growRow 768 s2Step197HeadFFresh) ((growRow 771 s2Step197HeadGvFresh ++ (growRow 770 s2Step197HeadFvFresh ++ []))) s2Step197HeadF_Incoming s2Step197HeadF_checked h2 s2Step197HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step197HeadGBefore s2Step197HeadGAfter s2Step197HeadFvAfter
    s2Step197HeadGRow s2Step197HeadGOut 173 s2Step197HeadGFresh [(s2Step197HeadFRow,173),(s2Step197HeadGvRow,114),(s2Step197HeadFvRow,114)] [s2Step197HeadFFresh,s2Step197HeadGvFresh,s2Step197HeadFvFresh] [s2Step197HeadFOut,s2Step197HeadGvOut,s2Step197HeadFvOut]
    (growRow 769 s2Step197HeadGFresh) ((growRow 768 s2Step197HeadFFresh ++ (growRow 771 s2Step197HeadGvFresh ++ (growRow 770 s2Step197HeadFvFresh ++ [])))) s2Step197HeadG_Incoming s2Step197HeadG_checked h1 s2Step197HeadG_Outgoing
  exact h0

private theorem s2Step197HeadBank_checked : compileHmrBankResizeLog .headroom s2Step197HeadGBefore ⟨s2Step197HeadFRow,s2Step197HeadGRow,s2Step197HeadFvRow,s2Step197HeadGvRow⟩ ⟨173,173,114,114⟩ [s2Step197HeadGFresh,s2Step197HeadFFresh,s2Step197HeadGvFresh,s2Step197HeadFvFresh]=
    some (s2Step197HeadFvAfter,⟨s2Step197HeadFOut,s2Step197HeadGOut,s2Step197HeadFvOut,s2Step197HeadGvOut⟩,(growRow 769 s2Step197HeadGFresh ++ (growRow 768 s2Step197HeadFFresh ++ (growRow 771 s2Step197HeadGvFresh ++ (growRow 770 s2Step197HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step197HeadBank_rows]
  rfl

private theorem s2Step197Front_checked : compileHmrSourceFrontLog s2Step197EntryFBefore s2Step197FrontBank 172 113 ⟨171,171,114,112⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step197FrontLog=some s2Step197FrontPlan := by
  have pairEq : s2Step197FrontPair=⟨s2Step197HeadFRow,s2Step197HeadGRow,s2Step197HeadFvRow,s2Step197HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step197FrontHead=⟨s2Step197ExitFRow,s2Step197ExitGRow,s2Step197ExitFvRow,s2Step197ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step197Add0A=s2Step197FrontHead.f.wires := by decide +kernel
  have gEq : s2Step197Add0B=s2Step197FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step197Add1A=s2Step197FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step197Add1B=s2Step197FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step197EntryFBefore s2Step197FrontBank 172 113 ⟨171,171,114,112⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step197FrontLog s2Step197FrontPlan
  · exact s2Step197Front_entry
  · exact s2Step197EntryBank_checked
  · exact s2Step197Front_sigma
  · rfl
  · exact s2Step197Front_branch
  · rfl
  · simpa only [s2Step197FrontPlan,pairEq] using s2Step197HeadBank_checked
  · simpa only [s2Step197FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step197F4_checked
  · exact s2Step197Counter_checked
  · rfl
  · simpa only [s2Step197FrontPlan,headEq] using s2Step197ExitBank_checked

private theorem s2Step197Complete_explicit_checked : compileHmrEarlyStepLog s2Step197EntryFBefore s2Step197FrontBank 172 113 ⟨171,171,114,112⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 46 s2Step197CompleteLog=some s2Step197CompletePlan := by
  let Q := s2Step197EarlyControlPlan
  have hq := s2Step197EarlyControl_plan_checked
  have fv1 : s2Step197CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step197CompleteOut.fv.payload[2]?.getD s2Step197CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step197CompleteOut.fv.payload[3]?.getD s2Step197CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step197CompleteOut.fv.payload[4]?.getD s2Step197CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step197EntryFBefore s2Step197EarlyControlArena s2Step197FrontBank 172 113 ⟨171,171,114,112⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 46 s2Step197CompleteLog s2Step197FrontPlan Q
    s2Step197Front_checked s2Step197Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step197Complete_owned s2Step197Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step197EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 777 822 s2Step197CompleteOut.fv.second (s2Step197CompleteOut.fv.payload[2]?.getD s2Step197CompleteOut.fv.sign) (s2Step197CompleteOut.fv.payload[3]?.getD s2Step197CompleteOut.fv.sign) (s2Step197CompleteOut.fv.payload[4]?.getD s2Step197CompleteOut.fv.sign) 840 46 s2Step197EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep197Arena : Arena := s2Step197EntryFBefore
def s2PrivateStep197Bank : WindowBank := s2Step197FrontBank
def s2PrivateStep197Spec : HmrSourceWalkStepLog := ⟨172,113,⟨171,171,114,112⟩,46,.early s2Step197CompleteLog⟩
def s2PrivateStep197Plan : HmrSourceStepPlan := .early s2Step197CompletePlan
theorem s2PrivateStep197_source : s2PrivateStep197Spec=s2ObservedLogs192[5] := rfl
theorem s2PrivateStep197_checked : compileHmrSourceStepLog s2PrivateStep197Arena s2PrivateStep197Bank
    s2PrivateStep197Spec.fgWidth s2PrivateStep197Spec.vWidth s2PrivateStep197Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893]
    6 498 197 s2PrivateStep197Spec.need none s2PrivateStep197Spec.log=some s2PrivateStep197Plan := by
  change compileHmrSourceStepLog s2Step197EntryFBefore s2Step197FrontBank 172 113 ⟨171,171,114,112⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 6 498 197 46 none (.early s2Step197CompleteLog)=some (.early s2Step197CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 197<498)]
  rw [s2Step197Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
