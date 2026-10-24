import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep196
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

private def s2Step198CompleteMoves : List (Wire × Wire) := []

private def s2Step198EarlyControlLog : HmrEarlyControlLog := ⟨[822, 807, 826, 814, 829],[867],[877],[879, 882, 885, 891, 894, 895],[]⟩

private def s2Step198FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [840, 822]],[[829], [826], [807], [794]],[[], [], [], []]⟩,[781],[842],[867],[877],[879, 882, 885, 891, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[879, 882, 885, 891, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882]⟩

private def s2Step198CompleteLog : HmrEarlyStepLog := ⟨s2Step198FrontLog,s2Step198CompleteMoves,s2Step198EarlyControlLog⟩

private def s2Step198ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩

private def s2Step198ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794],770⟩

private def s2Step198ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169],769⟩

private def s2Step198ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840],771⟩

private def s2Step198FrontOut : WindowBank := ⟨s2Step198ExitFOut,s2Step198ExitGOut,s2Step198ExitFvOut,s2Step198ExitGvOut⟩

private def s2Step198CompleteOut : WindowBank := s2Step198FrontOut.repacked s2Step198CompleteMoves

private def s2Step198EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step198EarlyControlPositiveArena,[867],s2Step198EarlyControlEqualityArena,[877],⟨⟨781,false⟩,[⟨⟨867,false⟩,877⟩]⟩⟩

private def s2Step198EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896)),Finset.filter_subset _ _⟩

private def s2Step198EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896)),Finset.filter_subset _ _⟩

private def s2Step198EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,822⟩,⟨⟨774,false⟩,807⟩,⟨⟨775,false⟩,826⟩,⟨⟨776,false⟩,814⟩,⟨⟨777,false⟩,829⟩]⟩

private def s2Step198EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step198EarlyControlZeroArena,s2Step198EarlyControlZeroPlan,s2Step198EarlyControlClassPlan,s2Step198EarlyControlFlagArena,s2Step198EarlyControlFittedArena,s2Step198EarlyControlHistoryArena,s2Step198EarlyControlSigmaArena,s2Step198EarlyControlOutputArena,s2Step198EarlyControlLog⟩

private def s2Step198CounterWork : List Wire := [867, 877, 879, 882]

private theorem s2Step198Counter_bounded : s2Step198CounterWork.toFinset⊆arenaWires := by norm_num [s2Step198CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step198HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198CounterDuring : Arena := ⟨s2Step198HeadFvAfter.live∪s2Step198CounterWork.toFinset,Finset.union_subset s2Step198HeadFvAfter.bounded s2Step198Counter_bounded⟩

private def s2Step198EntryFFresh : List Wire := []

private def s2Step198EntryFvFresh : List Wire := []

private def s2Step198EntryGFresh : List Wire := []

private def s2Step198EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198EntryGvFresh : List Wire := [840, 822]

private def s2Step198ExitFExtra : List Wire := [826]

private def s2Step198ExitGExtra : List Wire := [814, 829]

private def s2Step198ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198ExitGvExtra : List Wire := [822, 807]

private def s2Step198Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198Add0Work : List Wire := [879, 882, 885, 891, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step198Add0_bounded : s2Step198Add0Work.toFinset⊆arenaWires := by
  have h : s2Step198Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step198Add0During : Arena := ⟨s2Step198Add0Arena.live∪s2Step198Add0Work.toFinset,Finset.union_subset s2Step198Add0Arena.bounded s2Step198Add0_bounded⟩

private def s2Step198Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198Add1Work : List Wire := [879, 882, 885, 891, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step198Add1_bounded : s2Step198Add1Work.toFinset⊆arenaWires := by
  have h : s2Step198Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step198Add1During : Arena := ⟨s2Step198Add1Arena.live∪s2Step198Add1Work.toFinset,Finset.union_subset s2Step198Add1Arena.bounded s2Step198Add1_bounded⟩

private def s2Step198F4FlagArena : Arena := ⟨s2Step198HeadFvAfter.live∪{867},Finset.union_subset s2Step198HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step198F4Plan : HmrHybridF4Plan := ⟨s2Step198F4FlagArena,[867],s2Step198Add0Arena,[877],s2Step198Add0During,s2Step198Add0Work,s2Step198Add1During,s2Step198Add1Work⟩

private def s2Step198HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 826],768⟩

private def s2Step198HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794],770⟩

private def s2Step198HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814, 829],769⟩

private def s2Step198HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 822, 807],771⟩

private def s2Step198FrontHead : WindowBank := ⟨s2Step198HeadFOut,s2Step198HeadGOut,s2Step198HeadFvOut,s2Step198HeadGvOut⟩

private def s2Step198EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩

private def s2Step198EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817],770⟩

private def s2Step198EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814],769⟩

private def s2Step198EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 822],771⟩

private def s2Step198FrontPair : WindowBank := ⟨s2Step198EntryFOut,s2Step198EntryGOut,s2Step198EntryFvOut,s2Step198EntryGvOut⟩

private def s2Step198FrontSigmaArena : Arena := ⟨s2Step198EntryGvAfter.live∪{781},Finset.union_subset s2Step198EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step198HeadFFresh : List Wire := [826]

private def s2Step198HeadFvFresh : List Wire := [794]

private def s2Step198HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198HeadGFresh : List Wire := [829]

private def s2Step198HeadGvFresh : List Wire := [807]

private def s2Step198FrontPlan : HmrSourceFront := ⟨s2Step198EntryGvAfter,s2Step198FrontPair,(growRow 768 s2Step198EntryFFresh ++ (growRow 769 s2Step198EntryGFresh ++ (growRow 770 s2Step198EntryFvFresh ++ (growRow 771 s2Step198EntryGvFresh ++ [])))),s2Step198FrontSigmaArena,[781],s2Step198HeadGBefore,[842],
  s2Step198HeadFvAfter,s2Step198FrontHead,(growRow 769 s2Step198HeadGFresh ++ (growRow 768 s2Step198HeadFFresh ++ (growRow 771 s2Step198HeadGvFresh ++ (growRow 770 s2Step198HeadFvFresh ++ [])))),s2Step198F4Plan,s2Step198CounterDuring,s2Step198CounterWork,s2Step198ExitGvAfter,s2Step198FrontOut,(shrinkRow 769 s2Step198ExitGExtra ++ (shrinkRow 768 s2Step198ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step198ExitGvExtra ++ []))))⟩

private def s2Step198CompletePlan : HmrEarlyStepPlan := ⟨s2Step198FrontPlan,s2Step198EarlyControlArena,s2Step198EarlyControlPlan,s2Step198CompleteMoves⟩

private theorem s2Step198Complete_apart : List.Disjoint (s2Step198CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [781, 842, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] := by
  have nd : ((s2Step198CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[781, 842, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step198Complete_owned : (s2Step198CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step198EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step198EarlyControlArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198Complete_repack : s2Step198ExitGvAfter.checkRepack s2Step198CompleteMoves=some s2Step198EarlyControlArena := by rfl

private theorem s2Step198EarlyControl_branchOwned : ([842] : List Wire).toFinset⊆s2Step198EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step198EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198EarlyControl_branch : compileHmrBranchRetirement s2Step198EarlyControlSigmaArena 842=some s2Step198EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step198EarlyControl_branchOwned
  · ext q
    simp [s2Step198EarlyControlOutputArena,s2Step198EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step198EarlyControl_classEqualityBorrow : s2Step198EarlyControlPositiveArena.checkBorrow (([781, 867] : List Wire).length-1) s2Step198EarlyControlLog.classWork=some s2Step198EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step198EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step198EarlyControlPositiveArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
      decide +kernel
    · ext q
      simp [s2Step198EarlyControlEqualityArena,s2Step198EarlyControlPositiveArena,s2Step198EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step198EarlyControl_classEqualityOwned : ([781, 867] : List Wire).toFinset⊆s2Step198EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step198EarlyControlPositiveArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198EarlyControl_classEquality : compileHmrEqualityLog s2Step198EarlyControlPositiveArena [781, 867] 0 s2Step198EarlyControlLog.classWork=some (s2Step198EarlyControlEqualityArena,s2Step198EarlyControlLog.classWork,s2Step198EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step198EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step198EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step198EarlyControl_classOwned : ([777, 829, 781] : List Wire).toFinset⊆s2Step198EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step198EarlyControlZeroArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198EarlyControl_positiveBorrow : s2Step198EarlyControlZeroArena.checkBorrow (1) s2Step198EarlyControlLog.positiveWork=some s2Step198EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step198EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step198EarlyControlZeroArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
      decide +kernel
    · ext q
      simp [s2Step198EarlyControlPositiveArena,s2Step198EarlyControlZeroArena,s2Step198EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step198EarlyControl_class : compileHmrSourceClassLog s2Step198EarlyControlZeroArena false 777 s2Step198EarlyControlZeroPlan.top 0 781 s2Step198EarlyControlLog.positiveWork s2Step198EarlyControlLog.classWork=some s2Step198EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step198EarlyControlClassPlan s2Step198EarlyControlZeroArena false 777 s2Step198EarlyControlZeroPlan.top 0 781
  constructor
  · decide +kernel
  · exact s2Step198EarlyControl_classOwned
  · exact s2Step198EarlyControl_positiveBorrow
  · exact s2Step198EarlyControl_classEquality

private theorem s2Step198EarlyControl_entryRecordOwned : ([842, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] : List Wire).toFinset⊆s2Step198EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step198EarlyControlArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198EarlyControl_entrySigmaOwned : ([781, 254] : List Wire).toFinset⊆s2Step198EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step198EarlyControlArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198EarlyControl_fitBorrow : s2Step198EarlyControlFlagArena.checkBorrow ((46-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] : List Wire).length)) s2Step198EarlyControlLog.recordFresh=some s2Step198EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step198EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step198EarlyControlFlagArena (fun q => (0≤q ∧ q<896)) rfl
      decide +kernel
    · ext q
      simp [s2Step198EarlyControlFittedArena,s2Step198EarlyControlFlagArena,s2Step198EarlyControlLog,arenaWires]

private theorem s2Step198EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] : List Wire).toFinset⊆s2Step198EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step198EarlyControlFlagArena (fun q => (0≤q ∧ q<896)) rfl
  decide +kernel

private theorem s2Step198EarlyControl_fit : compileHmrRecordGrowLog s2Step198EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 46 s2Step198EarlyControlLog.recordFresh=some s2Step198EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step198EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step198EarlyControl_fitBorrow

private theorem s2Step198EarlyControl_flagsBorrow : s2Step198EarlyControlEqualityArena.checkBorrow (6) s2Step198EarlyControlLog.flagWork=some s2Step198EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step198EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step198EarlyControlEqualityArena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
      decide +kernel
    · ext q
      simp [s2Step198EarlyControlFlagArena,s2Step198EarlyControlEqualityArena,s2Step198EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step198EarlyControl_flagsOwned : ([877, 253, 252, 251] : List Wire).toFinset⊆s2Step198EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step198EarlyControlEqualityArena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198EarlyControl_flags : compileHmrFlagsLog s2Step198EarlyControlClassPlan.equalityArena s2Step198EarlyControlClassPlan.equality.top 253 252 251 s2Step198EarlyControlLog.flagWork=some s2Step198EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step198EarlyControl_flagsOwned⟩
  · exact s2Step198EarlyControl_flagsBorrow

private theorem s2Step198EarlyControl_historyBorrow : s2Step198EarlyControlArena.checkBorrow ((46-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] : List Wire).length)) s2Step198EarlyControlLog.recordFresh=some s2Step198EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step198EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step198EarlyControlArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
      decide +kernel
    · ext q
      simp [s2Step198EarlyControlHistoryArena,s2Step198EarlyControlArena,s2Step198EarlyControlLog,arenaWires]

private theorem s2Step198EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] : List Wire).toFinset⊆s2Step198EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step198EarlyControlArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198EarlyControl_history : compileHmrRecordGrowLog s2Step198EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 46 s2Step198EarlyControlLog.recordFresh=some s2Step198EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step198EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step198EarlyControl_historyBorrow

private theorem s2Step198EarlyControl_sigmaOwned : ([254, 781] : List Wire).toFinset⊆s2Step198EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step198EarlyControlHistoryArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198EarlyControl_sigmaReleaseOwned : ([781] : List Wire).toFinset⊆s2Step198EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step198EarlyControlHistoryArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198EarlyControl_sigmaRelease : s2Step198EarlyControlHistoryArena.release {781} (fun _ => false)=some s2Step198EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step198EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step198EarlyControlSigmaArena,s2Step198EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step198EarlyControl_sigma : compileHmrSigmaDropLog s2Step198EarlyControlHistoryArena false 0 0 254 781 []=some s2Step198EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step198EarlyControl_sigmaOwned⟩
  · exact s2Step198EarlyControl_sigmaRelease

private theorem s2Step198EarlyControl_zeroBorrow : s2Step198EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step198EarlyControlLog.zeroWork=some s2Step198EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step198EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step198EarlyControlArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
      decide +kernel
    · ext q
      simp [s2Step198EarlyControlZeroArena,s2Step198EarlyControlArena,s2Step198EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step198EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step198EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step198EarlyControlArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198EarlyControl_zero : compileHmrEqualityLog s2Step198EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step198EarlyControlLog.zeroWork=some (s2Step198EarlyControlZeroArena,s2Step198EarlyControlLog.zeroWork,s2Step198EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step198EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step198EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step198EarlyControl_logged : s2Step198EarlyControlPlan.Logged s2Step198EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 777 781 254 253 252 251 842 46 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step198EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step198EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step198EarlyControl_zero
  · exact s2Step198EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step198EarlyControl_flags
  · exact s2Step198EarlyControl_fit
  · exact s2Step198EarlyControl_history
  · exact s2Step198EarlyControl_sigma
  · exact s2Step198EarlyControl_branch

private theorem s2Step198EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step198EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 777 781 254 253 252 251 842 46 s2Step198EarlyControlLog=some s2Step198EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step198EarlyControlPlan s2Step198EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 777 781 254 253 252 251 842 46 s2Step198EarlyControl_logged

private def s2Step198EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩

private def s2Step198EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817],770⟩

private def s2Step198EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814],769⟩

private def s2Step198EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837],771⟩

private def s2Step198FrontBank : WindowBank := ⟨s2Step198EntryFRow,s2Step198EntryGRow,s2Step198EntryFvRow,s2Step198EntryGvRow⟩

private def s2Step198Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 826, 768]

private def s2Step198Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814, 829, 769]

private def s2Step198Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 770]

private def s2Step198Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 822, 807, 771]

private theorem s2Step198Counter_apart : Disjoint s2Step198HeadFvAfter.live s2Step198CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step198HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198Counter_borrowed : s2Step198HeadFvAfter.checkBorrow 4 s2Step198CounterWork=some s2Step198CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step198HeadFvAfter s2Step198CounterDuring s2Step198CounterWork.toFinset s2Step198Counter_bounded s2Step198Counter_apart rfl

private theorem s2Step198Counter_owned : (781::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step198HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step198HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198Counter_checked : compileHmrCounterStepLog s2Step198HeadFvAfter true 781 [772, 773, 774, 775, 776, 777] s2Step198CounterWork=some s2Step198CounterDuring := by
  have owned : ∀q∈781::[772, 773, 774, 775, 776, 777],q∈s2Step198HeadFvAfter.live := fun q hq => s2Step198Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step198Counter_borrowed

private def s2Step198EntryFAfter : Arena := s2Step198EntryFBefore

private theorem s2Step198EntryBank_incomingDistinct : ([s2Step198EntryFRow,s2Step198EntryGRow,s2Step198EntryFvRow,s2Step198EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198EntryF_Incoming : rowsOwned s2Step198EntryFBefore [s2Step198EntryFRow,s2Step198EntryGRow,s2Step198EntryFvRow,s2Step198EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step198EntryFRow,s2Step198EntryGRow,s2Step198EntryFvRow,s2Step198EntryGvRow] 0 s2Step198EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step198EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step198EntryBank_outgoingOwned : rowsOwned s2Step198EntryGvAfter [s2Step198EntryFOut,s2Step198EntryGOut,s2Step198EntryFvOut,s2Step198EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step198EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step198EntryF_Outgoing : rowsOwned s2Step198EntryGvAfter [s2Step198EntryFOut,s2Step198EntryGOut,s2Step198EntryFvOut,s2Step198EntryGvOut] :=
  hmrRows_owned_drop s2Step198EntryGvAfter [s2Step198EntryFOut,s2Step198EntryGOut,s2Step198EntryFvOut,s2Step198EntryGvOut] 0 s2Step198EntryBank_outgoingOwned

private theorem s2Step198EntryF_distinct : (s2Step198EntryFRow.sign::s2Step198EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198EntryF_owned : (s2Step198EntryFRow.sign::s2Step198EntryFRow.payload).toFinset⊆s2Step198EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step198EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198EntryF_reserved : s2Step198EntryFBefore.reserve s2Step198EntryFFresh.toFinset=some s2Step198EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step198EntryFFresh,arenaWires]
  · norm_num [s2Step198EntryFBefore,s2Step198EntryFFresh,arenaWires]
  · simp only [s2Step198EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step198EntryF_checked : planRowResizeLog s2Step198EntryFBefore s2Step198EntryFRow 171 s2Step198EntryFFresh=
    some (s2Step198EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩,growRow 768 s2Step198EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step198EntryFBefore s2Step198EntryFAfter s2Step198EntryFRow 171 s2Step198EntryFFresh
    s2Step198EntryF_distinct s2Step198EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step198EntryF_reserved
  have rowEq : WindowRow.mk (s2Step198EntryFRow.payload++s2Step198EntryFFresh) s2Step198EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step198EntryFvAfter : Arena := s2Step198EntryFBefore

private def s2Step198EntryFvBefore : Arena := s2Step198EntryFBefore

private theorem s2Step198EntryFv_Incoming : rowsOwned s2Step198EntryFvBefore [s2Step198EntryFvRow,s2Step198EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step198EntryFRow,s2Step198EntryGRow,s2Step198EntryFvRow,s2Step198EntryGvRow] 2 s2Step198EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step198EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step198EntryFv_Outgoing : rowsOwned s2Step198EntryGvAfter [s2Step198EntryFvOut,s2Step198EntryGvOut] :=
  hmrRows_owned_drop s2Step198EntryGvAfter [s2Step198EntryFOut,s2Step198EntryGOut,s2Step198EntryFvOut,s2Step198EntryGvOut] 2 s2Step198EntryBank_outgoingOwned

private theorem s2Step198EntryFv_distinct : (s2Step198EntryFvRow.sign::s2Step198EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198EntryFv_owned : (s2Step198EntryFvRow.sign::s2Step198EntryFvRow.payload).toFinset⊆s2Step198EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step198EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198EntryFv_reserved : s2Step198EntryFvBefore.reserve s2Step198EntryFvFresh.toFinset=some s2Step198EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step198EntryFvFresh,arenaWires]
  · norm_num [s2Step198EntryFvBefore,s2Step198EntryFBefore,s2Step198EntryFvFresh,arenaWires]
  · simp only [s2Step198EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step198EntryFv_checked : planRowResizeLog s2Step198EntryFvBefore s2Step198EntryFvRow 114 s2Step198EntryFvFresh=
    some (s2Step198EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817],770⟩,growRow 770 s2Step198EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step198EntryFvBefore s2Step198EntryFvAfter s2Step198EntryFvRow 114 s2Step198EntryFvFresh
    s2Step198EntryFv_distinct s2Step198EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step198EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step198EntryFvRow.payload++s2Step198EntryFvFresh) s2Step198EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step198EntryGAfter : Arena := s2Step198EntryFBefore

private def s2Step198EntryGBefore : Arena := s2Step198EntryFBefore

private theorem s2Step198EntryG_Incoming : rowsOwned s2Step198EntryGBefore [s2Step198EntryGRow,s2Step198EntryFvRow,s2Step198EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step198EntryFRow,s2Step198EntryGRow,s2Step198EntryFvRow,s2Step198EntryGvRow] 1 s2Step198EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step198EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step198EntryG_Outgoing : rowsOwned s2Step198EntryGvAfter [s2Step198EntryGOut,s2Step198EntryFvOut,s2Step198EntryGvOut] :=
  hmrRows_owned_drop s2Step198EntryGvAfter [s2Step198EntryFOut,s2Step198EntryGOut,s2Step198EntryFvOut,s2Step198EntryGvOut] 1 s2Step198EntryBank_outgoingOwned

private theorem s2Step198EntryG_distinct : (s2Step198EntryGRow.sign::s2Step198EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198EntryG_owned : (s2Step198EntryGRow.sign::s2Step198EntryGRow.payload).toFinset⊆s2Step198EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step198EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198EntryG_reserved : s2Step198EntryGBefore.reserve s2Step198EntryGFresh.toFinset=some s2Step198EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step198EntryGFresh,arenaWires]
  · norm_num [s2Step198EntryGBefore,s2Step198EntryFBefore,s2Step198EntryGFresh,arenaWires]
  · simp only [s2Step198EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step198EntryG_checked : planRowResizeLog s2Step198EntryGBefore s2Step198EntryGRow 171 s2Step198EntryGFresh=
    some (s2Step198EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814],769⟩,growRow 769 s2Step198EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step198EntryGBefore s2Step198EntryGAfter s2Step198EntryGRow 171 s2Step198EntryGFresh
    s2Step198EntryG_distinct s2Step198EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step198EntryG_reserved
  have rowEq : WindowRow.mk (s2Step198EntryGRow.payload++s2Step198EntryGFresh) s2Step198EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step198EntryGvBefore : Arena := s2Step198EntryFBefore

private theorem s2Step198EntryGv_Incoming : rowsOwned s2Step198EntryGvBefore [s2Step198EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step198EntryFRow,s2Step198EntryGRow,s2Step198EntryFvRow,s2Step198EntryGvRow] 3 s2Step198EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step198EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step198EntryGv_Outgoing : rowsOwned s2Step198EntryGvAfter [s2Step198EntryGvOut] :=
  hmrRows_owned_drop s2Step198EntryGvAfter [s2Step198EntryFOut,s2Step198EntryGOut,s2Step198EntryFvOut,s2Step198EntryGvOut] 3 s2Step198EntryBank_outgoingOwned

private theorem s2Step198EntryGv_distinct : (s2Step198EntryGvRow.sign::s2Step198EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198EntryGv_owned : (s2Step198EntryGvRow.sign::s2Step198EntryGvRow.payload).toFinset⊆s2Step198EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step198EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198EntryGv_reserved : s2Step198EntryGvBefore.reserve s2Step198EntryGvFresh.toFinset=some s2Step198EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step198EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step198EntryGvBefore,s2Step198EntryFBefore,s2Step198EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step198EntryGvAfter,s2Step198EntryGvBefore,s2Step198EntryFBefore,s2Step198EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step198EntryGv_checked : planRowResizeLog s2Step198EntryGvBefore s2Step198EntryGvRow 114 s2Step198EntryGvFresh=
    some (s2Step198EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 822],771⟩,growRow 771 s2Step198EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step198EntryGvBefore s2Step198EntryGvAfter s2Step198EntryGvRow 114 s2Step198EntryGvFresh
    s2Step198EntryGv_distinct s2Step198EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step198EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step198EntryGvRow.payload++s2Step198EntryGvFresh) s2Step198EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step198EntryBank_rows : planWindowRowsLog s2Step198EntryFBefore [(s2Step198EntryFRow,171),(s2Step198EntryGRow,171),(s2Step198EntryFvRow,114),(s2Step198EntryGvRow,114)] [s2Step198EntryFFresh,s2Step198EntryGFresh,s2Step198EntryFvFresh,s2Step198EntryGvFresh]=
    some (s2Step198EntryGvAfter,[s2Step198EntryFOut,s2Step198EntryGOut,s2Step198EntryFvOut,s2Step198EntryGvOut],(growRow 768 s2Step198EntryFFresh ++ (growRow 769 s2Step198EntryGFresh ++ (growRow 770 s2Step198EntryFvFresh ++ (growRow 771 s2Step198EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step198EntryGvAfter [] []=some (s2Step198EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step198EntryGvBefore s2Step198EntryGvAfter s2Step198EntryGvAfter
    s2Step198EntryGvRow s2Step198EntryGvOut 114 s2Step198EntryGvFresh [] [] []
    (growRow 771 s2Step198EntryGvFresh) ([]) s2Step198EntryGv_Incoming s2Step198EntryGv_checked h4 s2Step198EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step198EntryFvBefore s2Step198EntryFvAfter s2Step198EntryGvAfter
    s2Step198EntryFvRow s2Step198EntryFvOut 114 s2Step198EntryFvFresh [(s2Step198EntryGvRow,114)] [s2Step198EntryGvFresh] [s2Step198EntryGvOut]
    (growRow 770 s2Step198EntryFvFresh) ((growRow 771 s2Step198EntryGvFresh ++ [])) s2Step198EntryFv_Incoming s2Step198EntryFv_checked h3 s2Step198EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step198EntryGBefore s2Step198EntryGAfter s2Step198EntryGvAfter
    s2Step198EntryGRow s2Step198EntryGOut 171 s2Step198EntryGFresh [(s2Step198EntryFvRow,114),(s2Step198EntryGvRow,114)] [s2Step198EntryFvFresh,s2Step198EntryGvFresh] [s2Step198EntryFvOut,s2Step198EntryGvOut]
    (growRow 769 s2Step198EntryGFresh) ((growRow 770 s2Step198EntryFvFresh ++ (growRow 771 s2Step198EntryGvFresh ++ []))) s2Step198EntryG_Incoming s2Step198EntryG_checked h2 s2Step198EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step198EntryFBefore s2Step198EntryFAfter s2Step198EntryGvAfter
    s2Step198EntryFRow s2Step198EntryFOut 171 s2Step198EntryFFresh [(s2Step198EntryGRow,171),(s2Step198EntryFvRow,114),(s2Step198EntryGvRow,114)] [s2Step198EntryGFresh,s2Step198EntryFvFresh,s2Step198EntryGvFresh] [s2Step198EntryGOut,s2Step198EntryFvOut,s2Step198EntryGvOut]
    (growRow 768 s2Step198EntryFFresh) ((growRow 769 s2Step198EntryGFresh ++ (growRow 770 s2Step198EntryFvFresh ++ (growRow 771 s2Step198EntryGvFresh ++ [])))) s2Step198EntryF_Incoming s2Step198EntryF_checked h1 s2Step198EntryF_Outgoing
  exact h0

private theorem s2Step198EntryBank_checked : compileHmrBankResizeLog .entry s2Step198EntryFBefore ⟨s2Step198EntryFRow,s2Step198EntryGRow,s2Step198EntryFvRow,s2Step198EntryGvRow⟩ ⟨171,171,114,114⟩ [s2Step198EntryFFresh,s2Step198EntryGFresh,s2Step198EntryFvFresh,s2Step198EntryGvFresh]=
    some (s2Step198EntryGvAfter,⟨s2Step198EntryFOut,s2Step198EntryGOut,s2Step198EntryFvOut,s2Step198EntryGvOut⟩,(growRow 768 s2Step198EntryFFresh ++ (growRow 769 s2Step198EntryGFresh ++ (growRow 770 s2Step198EntryFvFresh ++ (growRow 771 s2Step198EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step198EntryBank_rows]
  rfl

private def s2Step198ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198ExitFBefore : Arena := s2Step198ExitGAfter

private def s2Step198ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 826],768⟩

private def s2Step198ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794],770⟩

private def s2Step198ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814, 829],769⟩

private def s2Step198ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 822, 807],771⟩

private theorem s2Step198ExitBank_incomingDistinct : ([s2Step198ExitGRow,s2Step198ExitFRow,s2Step198ExitFvRow,s2Step198ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198ExitF_Incoming : rowsOwned s2Step198ExitFBefore [s2Step198ExitFRow,s2Step198ExitFvRow,s2Step198ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step198ExitGRow,s2Step198ExitFRow,s2Step198ExitFvRow,s2Step198ExitGvRow] 1 s2Step198ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step198ExitFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step198ExitBank_outgoingOwned : rowsOwned s2Step198ExitGvAfter [s2Step198ExitGOut,s2Step198ExitFOut,s2Step198ExitFvOut,s2Step198ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step198ExitGvAfter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step198ExitF_Outgoing : rowsOwned s2Step198ExitGvAfter [s2Step198ExitFOut,s2Step198ExitFvOut,s2Step198ExitGvOut] :=
  hmrRows_owned_drop s2Step198ExitGvAfter [s2Step198ExitGOut,s2Step198ExitFOut,s2Step198ExitFvOut,s2Step198ExitGvOut] 1 s2Step198ExitBank_outgoingOwned

private theorem s2Step198ExitF_distinct : (s2Step198ExitFRow.sign::s2Step198ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198ExitF_owned : (s2Step198ExitFRow.sign::s2Step198ExitFRow.payload).toFinset⊆s2Step198ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step198ExitFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198ExitF_retired : s2Step198ExitFBefore.retireSet s2Step198ExitFExtra.toFinset=s2Step198ExitFAfter := by
  unfold Arena.retireSet s2Step198ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step198ExitFBefore,s2Step198ExitGAfter,s2Step198ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step198ExitF_checked : planRowResizeLog s2Step198ExitFBefore s2Step198ExitFRow 171 []=
    some (s2Step198ExitFAfter,s2Step198ExitFOut,shrinkRow 768 s2Step198ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step198ExitFBefore s2Step198ExitFRow 171 s2Step198ExitF_distinct s2Step198ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step198ExitFRow.payload.take 171) s2Step198ExitFRow.sign=s2Step198ExitFOut := by decide +kernel
  have hi : s2Step198ExitFRow.payload.drop 171=s2Step198ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step198ExitF_retired] at result
  exact result

private def s2Step198ExitFvAfter : Arena := s2Step198ExitFAfter

private def s2Step198ExitFvBefore : Arena := s2Step198ExitFAfter

private theorem s2Step198ExitFv_Incoming : rowsOwned s2Step198ExitFvBefore [s2Step198ExitFvRow,s2Step198ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step198ExitGRow,s2Step198ExitFRow,s2Step198ExitFvRow,s2Step198ExitGvRow] 2 s2Step198ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step198ExitFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step198ExitFv_Outgoing : rowsOwned s2Step198ExitGvAfter [s2Step198ExitFvOut,s2Step198ExitGvOut] :=
  hmrRows_owned_drop s2Step198ExitGvAfter [s2Step198ExitGOut,s2Step198ExitFOut,s2Step198ExitFvOut,s2Step198ExitGvOut] 2 s2Step198ExitBank_outgoingOwned

private theorem s2Step198ExitFv_distinct : (s2Step198ExitFvRow.sign::s2Step198ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198ExitFv_owned : (s2Step198ExitFvRow.sign::s2Step198ExitFvRow.payload).toFinset⊆s2Step198ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step198ExitFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198ExitFv_reserved : s2Step198ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step198ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step198ExitFv_checked : planRowResizeLog s2Step198ExitFvBefore s2Step198ExitFvRow 115 []=
    some (s2Step198ExitFvAfter,s2Step198ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step198ExitFvBefore s2Step198ExitFvAfter s2Step198ExitFvRow 115 []
    s2Step198ExitFv_distinct s2Step198ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step198ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step198ExitFvRow.payload++[]) s2Step198ExitFvRow.sign=s2Step198ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step198ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private theorem s2Step198ExitG_Incoming : rowsOwned s2Step198ExitGBefore [s2Step198ExitGRow,s2Step198ExitFRow,s2Step198ExitFvRow,s2Step198ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step198ExitGRow,s2Step198ExitFRow,s2Step198ExitFvRow,s2Step198ExitGvRow] 0 s2Step198ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step198ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step198ExitG_Outgoing : rowsOwned s2Step198ExitGvAfter [s2Step198ExitGOut,s2Step198ExitFOut,s2Step198ExitFvOut,s2Step198ExitGvOut] :=
  hmrRows_owned_drop s2Step198ExitGvAfter [s2Step198ExitGOut,s2Step198ExitFOut,s2Step198ExitFvOut,s2Step198ExitGvOut] 0 s2Step198ExitBank_outgoingOwned

private theorem s2Step198ExitG_distinct : (s2Step198ExitGRow.sign::s2Step198ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198ExitG_owned : (s2Step198ExitGRow.sign::s2Step198ExitGRow.payload).toFinset⊆s2Step198ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step198ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198ExitG_retired : s2Step198ExitGBefore.retireSet s2Step198ExitGExtra.toFinset=s2Step198ExitGAfter := by
  unfold Arena.retireSet s2Step198ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step198ExitGBefore,s2Step198ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step198ExitG_checked : planRowResizeLog s2Step198ExitGBefore s2Step198ExitGRow 170 []=
    some (s2Step198ExitGAfter,s2Step198ExitGOut,shrinkRow 769 s2Step198ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step198ExitGBefore s2Step198ExitGRow 170 s2Step198ExitG_distinct s2Step198ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step198ExitGRow.payload.take 170) s2Step198ExitGRow.sign=s2Step198ExitGOut := by decide +kernel
  have hi : s2Step198ExitGRow.payload.drop 170=s2Step198ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step198ExitG_retired] at result
  exact result

private def s2Step198ExitGvBefore : Arena := s2Step198ExitFAfter

private theorem s2Step198ExitGv_Incoming : rowsOwned s2Step198ExitGvBefore [s2Step198ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step198ExitGRow,s2Step198ExitFRow,s2Step198ExitFvRow,s2Step198ExitGvRow] 3 s2Step198ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step198ExitGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step198ExitGv_Outgoing : rowsOwned s2Step198ExitGvAfter [s2Step198ExitGvOut] :=
  hmrRows_owned_drop s2Step198ExitGvAfter [s2Step198ExitGOut,s2Step198ExitFOut,s2Step198ExitFvOut,s2Step198ExitGvOut] 3 s2Step198ExitBank_outgoingOwned

private theorem s2Step198ExitGv_distinct : (s2Step198ExitGvRow.sign::s2Step198ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198ExitGv_owned : (s2Step198ExitGvRow.sign::s2Step198ExitGvRow.payload).toFinset⊆s2Step198ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step198ExitGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198ExitGv_retired : s2Step198ExitGvBefore.retireSet s2Step198ExitGvExtra.toFinset=s2Step198ExitGvAfter := by
  unfold Arena.retireSet s2Step198ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step198ExitGvBefore,s2Step198ExitFAfter,s2Step198ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step198ExitGv_checked : planRowResizeLog s2Step198ExitGvBefore s2Step198ExitGvRow 113 []=
    some (s2Step198ExitGvAfter,s2Step198ExitGvOut,shrinkRow 771 s2Step198ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step198ExitGvBefore s2Step198ExitGvRow 113 s2Step198ExitGv_distinct s2Step198ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step198ExitGvRow.payload.take 113) s2Step198ExitGvRow.sign=s2Step198ExitGvOut := by decide +kernel
  have hi : s2Step198ExitGvRow.payload.drop 113=s2Step198ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step198ExitGv_retired] at result
  exact result

private theorem s2Step198ExitBank_rows : planWindowRowsLog s2Step198ExitGBefore [(s2Step198ExitGRow,170),(s2Step198ExitFRow,171),(s2Step198ExitFvRow,115),(s2Step198ExitGvRow,113)] [[],[],[],[]]=
    some (s2Step198ExitGvAfter,[s2Step198ExitGOut,s2Step198ExitFOut,s2Step198ExitFvOut,s2Step198ExitGvOut],(shrinkRow 769 s2Step198ExitGExtra ++ (shrinkRow 768 s2Step198ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step198ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step198ExitGvAfter [] []=some (s2Step198ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step198ExitGvBefore s2Step198ExitGvAfter s2Step198ExitGvAfter
    s2Step198ExitGvRow s2Step198ExitGvOut 113 [] [] [] []
    (shrinkRow 771 s2Step198ExitGvExtra) ([]) s2Step198ExitGv_Incoming s2Step198ExitGv_checked h4 s2Step198ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step198ExitFvBefore s2Step198ExitFvAfter s2Step198ExitGvAfter
    s2Step198ExitFvRow s2Step198ExitFvOut 115 [] [(s2Step198ExitGvRow,113)] [[]] [s2Step198ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step198ExitGvExtra ++ [])) s2Step198ExitFv_Incoming s2Step198ExitFv_checked h3 s2Step198ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step198ExitFBefore s2Step198ExitFAfter s2Step198ExitGvAfter
    s2Step198ExitFRow s2Step198ExitFOut 171 [] [(s2Step198ExitFvRow,115),(s2Step198ExitGvRow,113)] [[],[]] [s2Step198ExitFvOut,s2Step198ExitGvOut]
    (shrinkRow 768 s2Step198ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step198ExitGvExtra ++ []))) s2Step198ExitF_Incoming s2Step198ExitF_checked h2 s2Step198ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step198ExitGBefore s2Step198ExitGAfter s2Step198ExitGvAfter
    s2Step198ExitGRow s2Step198ExitGOut 170 [] [(s2Step198ExitFRow,171),(s2Step198ExitFvRow,115),(s2Step198ExitGvRow,113)] [[],[],[]] [s2Step198ExitFOut,s2Step198ExitFvOut,s2Step198ExitGvOut]
    (shrinkRow 769 s2Step198ExitGExtra) ((shrinkRow 768 s2Step198ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step198ExitGvExtra ++ [])))) s2Step198ExitG_Incoming s2Step198ExitG_checked h1 s2Step198ExitG_Outgoing
  exact h0

private theorem s2Step198ExitBank_checked : compileHmrBankResizeLog .exit s2Step198ExitGBefore ⟨s2Step198ExitFRow,s2Step198ExitGRow,s2Step198ExitFvRow,s2Step198ExitGvRow⟩ ⟨171,170,115,113⟩ [[],[],[],[]]=
    some (s2Step198ExitGvAfter,⟨s2Step198ExitFOut,s2Step198ExitGOut,s2Step198ExitFvOut,s2Step198ExitGvOut⟩,(shrinkRow 769 s2Step198ExitGExtra ++ (shrinkRow 768 s2Step198ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step198ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step198ExitBank_rows]
  rfl

private theorem s2Step198Add0_apart : Disjoint s2Step198Add0Arena.live s2Step198Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step198Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198Add0_card : s2Step198Add0Arena.live.card=890 := by
  decide +kernel

private theorem s2Step198Add0_borrowed : s2Step198Add0Arena.checkBorrow (hmrHybridCount s2Step198Add0Arena s2Step198Add0B.length) s2Step198Add0Work=some s2Step198Add0During := by
  have len : s2Step198Add0Work.length=hmrHybridCount s2Step198Add0Arena s2Step198Add0B.length := by
    rw [hmrHybridCount,s2Step198Add0_card]
    decide +kernel
  have nd : s2Step198Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step198Add0Arena s2Step198Add0During s2Step198Add0Work.toFinset s2Step198Add0_bounded s2Step198Add0_apart rfl

private theorem s2Step198Add0_distinct : (867::842::877::(s2Step198Add0A++s2Step198Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198Add0_owned : (867::842::877::(s2Step198Add0A++s2Step198Add0B)).toFinset⊆s2Step198Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step198Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198Add0_checked : compileHmrHybridCinLog s2Step198Add0Arena 842 867 877 s2Step198Add0A s2Step198Add0B s2Step198Add0Work=some s2Step198Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step198Add0Arena s2Step198Add0During 842 867 877 s2Step198Add0A s2Step198Add0B s2Step198Add0Work
    (by decide +kernel) (by decide +kernel) s2Step198Add0_distinct
    (fun q hq => s2Step198Add0_owned (List.mem_toFinset.mpr hq)) s2Step198Add0_borrowed

private theorem s2Step198Add1_apart : Disjoint s2Step198Add1Arena.live s2Step198Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step198Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198Add1_card : s2Step198Add1Arena.live.card=890 := by
  decide +kernel

private theorem s2Step198Add1_borrowed : s2Step198Add1Arena.checkBorrow (hmrHybridCount s2Step198Add1Arena s2Step198Add1B.length) s2Step198Add1Work=some s2Step198Add1During := by
  have len : s2Step198Add1Work.length=hmrHybridCount s2Step198Add1Arena s2Step198Add1B.length := by
    rw [hmrHybridCount,s2Step198Add1_card]
    decide +kernel
  have nd : s2Step198Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step198Add1Arena s2Step198Add1During s2Step198Add1Work.toFinset s2Step198Add1_bounded s2Step198Add1_apart rfl

private theorem s2Step198Add1_distinct : (867::842::877::(s2Step198Add1A++s2Step198Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198Add1_owned : (867::842::877::(s2Step198Add1A++s2Step198Add1B)).toFinset⊆s2Step198Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step198Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198Add1_checked : compileHmrHybridCinLog s2Step198Add1Arena 842 867 877 s2Step198Add1A s2Step198Add1B s2Step198Add1Work=some s2Step198Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step198Add1Arena s2Step198Add1During 842 867 877 s2Step198Add1A s2Step198Add1B s2Step198Add1Work
    (by decide +kernel) (by decide +kernel) s2Step198Add1_distinct
    (fun q hq => s2Step198Add1_owned (List.mem_toFinset.mpr hq)) s2Step198Add1_borrowed

private theorem s2Step198F4_apart : Disjoint (s2Step198Add0A++s2Step198Add0B).toFinset (s2Step198Add1A++s2Step198Add1B).toFinset := by
  have nd : ((s2Step198Add0A++s2Step198Add0B)++(s2Step198Add1A++s2Step198Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step198F4_carry : s2Step198F4FlagArena.checkBorrow 1 [877]=some s2Step198Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step198F4FlagArena,s2Step198HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step198F4FlagArena,s2Step198HeadFvAfter,s2Step198Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step198F4_distinct : (781::842::867::877::((s2Step198Add0A++s2Step198Add1A)++(s2Step198Add0B++s2Step198Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198F4_flag : s2Step198HeadFvAfter.checkBorrow 1 [867]=some s2Step198F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step198HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step198F4_owned : (781::842::((s2Step198Add0A++s2Step198Add1A)++(s2Step198Add0B++s2Step198Add1B))).toFinset⊆s2Step198HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step198HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198F4_checked : compileHmrHybridF4Log s2Step198HeadFvAfter 781 842 s2Step198Add0A s2Step198Add0B s2Step198Add1A s2Step198Add1B [867] [877] s2Step198Add0Work s2Step198Add1Work=some s2Step198F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step198HeadFvAfter s2Step198F4FlagArena s2Step198Add0Arena s2Step198Add0During s2Step198Add1During 781 842
    s2Step198Add0A s2Step198Add0B s2Step198Add1A s2Step198Add1B [867] [877] s2Step198Add0Work s2Step198Add1Work
    (fun q hq => s2Step198F4_owned (List.mem_toFinset.mpr hq)) s2Step198F4_flag s2Step198F4_carry
    s2Step198F4_distinct s2Step198F4_apart s2Step198Add0_checked s2Step198Add1_checked

private theorem s2Step198Front_branch : s2Step198FrontSigmaArena.checkBorrow 1 [842]=some s2Step198HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step198FrontSigmaArena,s2Step198EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step198FrontSigmaArena,s2Step198EntryGvAfter,s2Step198HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step198Front_entry : HmrFrontEntryValid s2Step198EntryFBefore s2Step198FrontBank 171 114 ⟨171,170,115,113⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step198FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step198EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step198EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step198FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step198Front_sigma : s2Step198EntryGvAfter.checkBorrow 1 [781]=some s2Step198FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step198EntryGvAfter,arenaWires]
  · rfl

private def s2Step198HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198HeadFBefore : Arena := s2Step198HeadGAfter

private def s2Step198HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682],768⟩

private def s2Step198HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817],770⟩

private def s2Step198HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814],769⟩

private def s2Step198HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 822],771⟩

private theorem s2Step198HeadBank_incomingDistinct : ([s2Step198HeadGRow,s2Step198HeadFRow,s2Step198HeadGvRow,s2Step198HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198HeadF_Incoming : rowsOwned s2Step198HeadFBefore [s2Step198HeadFRow,s2Step198HeadGvRow,s2Step198HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step198HeadGRow,s2Step198HeadFRow,s2Step198HeadGvRow,s2Step198HeadFvRow] 1 s2Step198HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step198HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step198HeadBank_outgoingOwned : rowsOwned s2Step198HeadFvAfter [s2Step198HeadGOut,s2Step198HeadFOut,s2Step198HeadGvOut,s2Step198HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step198HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step198HeadF_Outgoing : rowsOwned s2Step198HeadFvAfter [s2Step198HeadFOut,s2Step198HeadGvOut,s2Step198HeadFvOut] :=
  hmrRows_owned_drop s2Step198HeadFvAfter [s2Step198HeadGOut,s2Step198HeadFOut,s2Step198HeadGvOut,s2Step198HeadFvOut] 1 s2Step198HeadBank_outgoingOwned

private theorem s2Step198HeadF_distinct : (s2Step198HeadFRow.sign::s2Step198HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198HeadF_owned : (s2Step198HeadFRow.sign::s2Step198HeadFRow.payload).toFinset⊆s2Step198HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step198HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198HeadF_reserved : s2Step198HeadFBefore.reserve s2Step198HeadFFresh.toFinset=some s2Step198HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step198HeadFFresh,arenaWires]
  · norm_num [s2Step198HeadFBefore,s2Step198HeadGAfter,s2Step198HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step198HeadFAfter,s2Step198HeadFBefore,s2Step198HeadGAfter,s2Step198HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step198HeadF_checked : planRowResizeLog s2Step198HeadFBefore s2Step198HeadFRow 172 s2Step198HeadFFresh=
    some (s2Step198HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 826],768⟩,growRow 768 s2Step198HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step198HeadFBefore s2Step198HeadFAfter s2Step198HeadFRow 172 s2Step198HeadFFresh
    s2Step198HeadF_distinct s2Step198HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step198HeadF_reserved
  have rowEq : WindowRow.mk (s2Step198HeadFRow.payload++s2Step198HeadFFresh) s2Step198HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 826],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step198HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)),Finset.filter_subset _ _⟩

private def s2Step198HeadFvBefore : Arena := s2Step198HeadGvAfter

private theorem s2Step198HeadFv_Incoming : rowsOwned s2Step198HeadFvBefore [s2Step198HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step198HeadGRow,s2Step198HeadFRow,s2Step198HeadGvRow,s2Step198HeadFvRow] 3 s2Step198HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step198HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step198HeadFv_Outgoing : rowsOwned s2Step198HeadFvAfter [s2Step198HeadFvOut] :=
  hmrRows_owned_drop s2Step198HeadFvAfter [s2Step198HeadGOut,s2Step198HeadFOut,s2Step198HeadGvOut,s2Step198HeadFvOut] 3 s2Step198HeadBank_outgoingOwned

private theorem s2Step198HeadFv_distinct : (s2Step198HeadFvRow.sign::s2Step198HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198HeadFv_owned : (s2Step198HeadFvRow.sign::s2Step198HeadFvRow.payload).toFinset⊆s2Step198HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step198HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198HeadFv_reserved : s2Step198HeadFvBefore.reserve s2Step198HeadFvFresh.toFinset=some s2Step198HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step198HeadFvFresh,arenaWires]
  · norm_num [s2Step198HeadFvBefore,s2Step198HeadGvAfter,s2Step198HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step198HeadFvAfter,s2Step198HeadFvBefore,s2Step198HeadGvAfter,s2Step198HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step198HeadFv_checked : planRowResizeLog s2Step198HeadFvBefore s2Step198HeadFvRow 115 s2Step198HeadFvFresh=
    some (s2Step198HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794],770⟩,growRow 770 s2Step198HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step198HeadFvBefore s2Step198HeadFvAfter s2Step198HeadFvRow 115 s2Step198HeadFvFresh
    s2Step198HeadFv_distinct s2Step198HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step198HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step198HeadFvRow.payload++s2Step198HeadFvFresh) s2Step198HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step198HeadG_Incoming : rowsOwned s2Step198HeadGBefore [s2Step198HeadGRow,s2Step198HeadFRow,s2Step198HeadGvRow,s2Step198HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step198HeadGRow,s2Step198HeadFRow,s2Step198HeadGvRow,s2Step198HeadFvRow] 0 s2Step198HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step198HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step198HeadG_Outgoing : rowsOwned s2Step198HeadFvAfter [s2Step198HeadGOut,s2Step198HeadFOut,s2Step198HeadGvOut,s2Step198HeadFvOut] :=
  hmrRows_owned_drop s2Step198HeadFvAfter [s2Step198HeadGOut,s2Step198HeadFOut,s2Step198HeadGvOut,s2Step198HeadFvOut] 0 s2Step198HeadBank_outgoingOwned

private theorem s2Step198HeadG_distinct : (s2Step198HeadGRow.sign::s2Step198HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198HeadG_owned : (s2Step198HeadGRow.sign::s2Step198HeadGRow.payload).toFinset⊆s2Step198HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step198HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198HeadG_reserved : s2Step198HeadGBefore.reserve s2Step198HeadGFresh.toFinset=some s2Step198HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step198HeadGFresh,arenaWires]
  · norm_num [s2Step198HeadGBefore,s2Step198HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step198HeadGAfter,s2Step198HeadGBefore,s2Step198HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step198HeadG_checked : planRowResizeLog s2Step198HeadGBefore s2Step198HeadGRow 172 s2Step198HeadGFresh=
    some (s2Step198HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814, 829],769⟩,growRow 769 s2Step198HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step198HeadGBefore s2Step198HeadGAfter s2Step198HeadGRow 172 s2Step198HeadGFresh
    s2Step198HeadG_distinct s2Step198HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step198HeadG_reserved
  have rowEq : WindowRow.mk (s2Step198HeadGRow.payload++s2Step198HeadGFresh) s2Step198HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 814, 829],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step198HeadGvBefore : Arena := s2Step198HeadFAfter

private theorem s2Step198HeadGv_Incoming : rowsOwned s2Step198HeadGvBefore [s2Step198HeadGvRow,s2Step198HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step198HeadGRow,s2Step198HeadFRow,s2Step198HeadGvRow,s2Step198HeadFvRow] 2 s2Step198HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step198HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
    decide +kernel

private theorem s2Step198HeadGv_Outgoing : rowsOwned s2Step198HeadFvAfter [s2Step198HeadGvOut,s2Step198HeadFvOut] :=
  hmrRows_owned_drop s2Step198HeadFvAfter [s2Step198HeadGOut,s2Step198HeadFOut,s2Step198HeadGvOut,s2Step198HeadFvOut] 2 s2Step198HeadBank_outgoingOwned

private theorem s2Step198HeadGv_distinct : (s2Step198HeadGvRow.sign::s2Step198HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step198HeadGv_owned : (s2Step198HeadGvRow.sign::s2Step198HeadGvRow.payload).toFinset⊆s2Step198HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step198HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<807) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894)) rfl
  decide +kernel

private theorem s2Step198HeadGv_reserved : s2Step198HeadGvBefore.reserve s2Step198HeadGvFresh.toFinset=some s2Step198HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step198HeadGvFresh,arenaWires]
  · norm_num [s2Step198HeadGvBefore,s2Step198HeadFAfter,s2Step198HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step198HeadGvAfter,s2Step198HeadGvBefore,s2Step198HeadFAfter,s2Step198HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step198HeadGv_checked : planRowResizeLog s2Step198HeadGvBefore s2Step198HeadGvRow 115 s2Step198HeadGvFresh=
    some (s2Step198HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 822, 807],771⟩,growRow 771 s2Step198HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step198HeadGvBefore s2Step198HeadGvAfter s2Step198HeadGvRow 115 s2Step198HeadGvFresh
    s2Step198HeadGv_distinct s2Step198HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step198HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step198HeadGvRow.payload++s2Step198HeadGvFresh) s2Step198HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 822, 807],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step198HeadBank_rows : planWindowRowsLog s2Step198HeadGBefore [(s2Step198HeadGRow,172),(s2Step198HeadFRow,172),(s2Step198HeadGvRow,115),(s2Step198HeadFvRow,115)] [s2Step198HeadGFresh,s2Step198HeadFFresh,s2Step198HeadGvFresh,s2Step198HeadFvFresh]=
    some (s2Step198HeadFvAfter,[s2Step198HeadGOut,s2Step198HeadFOut,s2Step198HeadGvOut,s2Step198HeadFvOut],(growRow 769 s2Step198HeadGFresh ++ (growRow 768 s2Step198HeadFFresh ++ (growRow 771 s2Step198HeadGvFresh ++ (growRow 770 s2Step198HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step198HeadFvAfter [] []=some (s2Step198HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step198HeadFvBefore s2Step198HeadFvAfter s2Step198HeadFvAfter
    s2Step198HeadFvRow s2Step198HeadFvOut 115 s2Step198HeadFvFresh [] [] []
    (growRow 770 s2Step198HeadFvFresh) ([]) s2Step198HeadFv_Incoming s2Step198HeadFv_checked h4 s2Step198HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step198HeadGvBefore s2Step198HeadGvAfter s2Step198HeadFvAfter
    s2Step198HeadGvRow s2Step198HeadGvOut 115 s2Step198HeadGvFresh [(s2Step198HeadFvRow,115)] [s2Step198HeadFvFresh] [s2Step198HeadFvOut]
    (growRow 771 s2Step198HeadGvFresh) ((growRow 770 s2Step198HeadFvFresh ++ [])) s2Step198HeadGv_Incoming s2Step198HeadGv_checked h3 s2Step198HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step198HeadFBefore s2Step198HeadFAfter s2Step198HeadFvAfter
    s2Step198HeadFRow s2Step198HeadFOut 172 s2Step198HeadFFresh [(s2Step198HeadGvRow,115),(s2Step198HeadFvRow,115)] [s2Step198HeadGvFresh,s2Step198HeadFvFresh] [s2Step198HeadGvOut,s2Step198HeadFvOut]
    (growRow 768 s2Step198HeadFFresh) ((growRow 771 s2Step198HeadGvFresh ++ (growRow 770 s2Step198HeadFvFresh ++ []))) s2Step198HeadF_Incoming s2Step198HeadF_checked h2 s2Step198HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step198HeadGBefore s2Step198HeadGAfter s2Step198HeadFvAfter
    s2Step198HeadGRow s2Step198HeadGOut 172 s2Step198HeadGFresh [(s2Step198HeadFRow,172),(s2Step198HeadGvRow,115),(s2Step198HeadFvRow,115)] [s2Step198HeadFFresh,s2Step198HeadGvFresh,s2Step198HeadFvFresh] [s2Step198HeadFOut,s2Step198HeadGvOut,s2Step198HeadFvOut]
    (growRow 769 s2Step198HeadGFresh) ((growRow 768 s2Step198HeadFFresh ++ (growRow 771 s2Step198HeadGvFresh ++ (growRow 770 s2Step198HeadFvFresh ++ [])))) s2Step198HeadG_Incoming s2Step198HeadG_checked h1 s2Step198HeadG_Outgoing
  exact h0

private theorem s2Step198HeadBank_checked : compileHmrBankResizeLog .headroom s2Step198HeadGBefore ⟨s2Step198HeadFRow,s2Step198HeadGRow,s2Step198HeadFvRow,s2Step198HeadGvRow⟩ ⟨172,172,115,115⟩ [s2Step198HeadGFresh,s2Step198HeadFFresh,s2Step198HeadGvFresh,s2Step198HeadFvFresh]=
    some (s2Step198HeadFvAfter,⟨s2Step198HeadFOut,s2Step198HeadGOut,s2Step198HeadFvOut,s2Step198HeadGvOut⟩,(growRow 769 s2Step198HeadGFresh ++ (growRow 768 s2Step198HeadFFresh ++ (growRow 771 s2Step198HeadGvFresh ++ (growRow 770 s2Step198HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step198HeadBank_rows]
  rfl

private theorem s2Step198Front_checked : compileHmrSourceFrontLog s2Step198EntryFBefore s2Step198FrontBank 171 114 ⟨171,170,115,113⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step198FrontLog=some s2Step198FrontPlan := by
  have pairEq : s2Step198FrontPair=⟨s2Step198HeadFRow,s2Step198HeadGRow,s2Step198HeadFvRow,s2Step198HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step198FrontHead=⟨s2Step198ExitFRow,s2Step198ExitGRow,s2Step198ExitFvRow,s2Step198ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step198Add0A=s2Step198FrontHead.f.wires := by decide +kernel
  have gEq : s2Step198Add0B=s2Step198FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step198Add1A=s2Step198FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step198Add1B=s2Step198FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step198EntryFBefore s2Step198FrontBank 171 114 ⟨171,170,115,113⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step198FrontLog s2Step198FrontPlan
  · exact s2Step198Front_entry
  · exact s2Step198EntryBank_checked
  · exact s2Step198Front_sigma
  · rfl
  · exact s2Step198Front_branch
  · rfl
  · simpa only [s2Step198FrontPlan,pairEq] using s2Step198HeadBank_checked
  · simpa only [s2Step198FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step198F4_checked
  · exact s2Step198Counter_checked
  · rfl
  · simpa only [s2Step198FrontPlan,headEq] using s2Step198ExitBank_checked

private theorem s2Step198Complete_explicit_checked : compileHmrEarlyStepLog s2Step198EntryFBefore s2Step198FrontBank 171 114 ⟨171,170,115,113⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 46 s2Step198CompleteLog=some s2Step198CompletePlan := by
  let Q := s2Step198EarlyControlPlan
  have hq := s2Step198EarlyControl_plan_checked
  have fv1 : s2Step198CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step198CompleteOut.fv.payload[2]?.getD s2Step198CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step198CompleteOut.fv.payload[3]?.getD s2Step198CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step198CompleteOut.fv.payload[4]?.getD s2Step198CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step198EntryFBefore s2Step198EarlyControlArena s2Step198FrontBank 171 114 ⟨171,170,115,113⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 46 s2Step198CompleteLog s2Step198FrontPlan Q
    s2Step198Front_checked s2Step198Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step198Complete_owned s2Step198Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step198EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 777 781 s2Step198CompleteOut.fv.second (s2Step198CompleteOut.fv.payload[2]?.getD s2Step198CompleteOut.fv.sign) (s2Step198CompleteOut.fv.payload[3]?.getD s2Step198CompleteOut.fv.sign) (s2Step198CompleteOut.fv.payload[4]?.getD s2Step198CompleteOut.fv.sign) 842 46 s2Step198EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep198Arena : Arena := s2Step198EntryFBefore
def s2PrivateStep198Bank : WindowBank := s2Step198FrontBank
def s2PrivateStep198Spec : HmrSourceWalkStepLog := ⟨171,114,⟨171,170,115,113⟩,46,.early s2Step198CompleteLog⟩
def s2PrivateStep198Plan : HmrSourceStepPlan := .early s2Step198CompletePlan
theorem s2PrivateStep198_source : s2PrivateStep198Spec=s2ObservedLogs192[6] := rfl
theorem s2PrivateStep198_checked : compileHmrSourceStepLog s2PrivateStep198Arena s2PrivateStep198Bank
    s2PrivateStep198Spec.fgWidth s2PrivateStep198Spec.vWidth s2PrivateStep198Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893]
    6 498 198 s2PrivateStep198Spec.need none s2PrivateStep198Spec.log=some s2PrivateStep198Plan := by
  change compileHmrSourceStepLog s2Step198EntryFBefore s2Step198FrontBank 171 114 ⟨171,170,115,113⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893] 6 498 198 46 none (.early s2Step198CompleteLog)=some (.early s2Step198CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 198<498)]
  rw [s2Step198Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
