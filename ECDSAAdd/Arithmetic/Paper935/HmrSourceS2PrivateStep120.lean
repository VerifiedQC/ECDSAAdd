import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep118
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

private def s2Step120CompleteMoves : List (Wire × Wire) := [(830,208)]

private def s2Step120EarlyControlLog : HmrEarlyControlLog := ⟨[830, 819, 792, 817, 815],[781],[806],[802, 867, 877, 879, 882, 883],[]⟩

private def s2Step120FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [815], [], [819]],[[781], [817], [792], [849]],[[], [], [], []]⟩,[790],[807],[806],[802],[867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 802, 867, 877]⟩

private def s2Step120CompleteLog : HmrEarlyStepLog := ⟨s2Step120FrontLog,s2Step120CompleteMoves,s2Step120EarlyControlLog⟩

private def s2Step120ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step120ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 849],770⟩

private def s2Step120ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207],769⟩

private def s2Step120ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794],771⟩

private def s2Step120FrontOut : WindowBank := ⟨s2Step120ExitFOut,s2Step120ExitGOut,s2Step120ExitFvOut,s2Step120ExitGvOut⟩

private def s2Step120CompleteOut : WindowBank := s2Step120FrontOut.repacked s2Step120CompleteMoves

private def s2Step120EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step120EarlyControlPositiveArena,[781],s2Step120EarlyControlEqualityArena,[806],⟨⟨790,false⟩,[⟨⟨781,false⟩,806⟩]⟩⟩

private def s2Step120EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<884)),Finset.filter_subset _ _⟩

private def s2Step120EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<884)),Finset.filter_subset _ _⟩

private def s2Step120EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,830⟩,⟨⟨774,false⟩,819⟩,⟨⟨775,false⟩,792⟩,⟨⟨776,false⟩,817⟩,⟨⟨777,false⟩,815⟩]⟩

private def s2Step120EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step120EarlyControlZeroArena,s2Step120EarlyControlZeroPlan,s2Step120EarlyControlClassPlan,s2Step120EarlyControlFlagArena,s2Step120EarlyControlFittedArena,s2Step120EarlyControlHistoryArena,s2Step120EarlyControlSigmaArena,s2Step120EarlyControlOutputArena,s2Step120EarlyControlLog⟩

private def s2Step120CounterWork : List Wire := [806, 802, 867, 877]

private theorem s2Step120Counter_bounded : s2Step120CounterWork.toFinset⊆arenaWires := by norm_num [s2Step120CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step120HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120CounterDuring : Arena := ⟨s2Step120HeadFvAfter.live∪s2Step120CounterWork.toFinset,Finset.union_subset s2Step120HeadFvAfter.bounded s2Step120Counter_bounded⟩

private def s2Step120EntryFFresh : List Wire := []

private def s2Step120EntryFvFresh : List Wire := []

private def s2Step120EntryGFresh : List Wire := [815]

private def s2Step120EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120EntryGvFresh : List Wire := [819]

private def s2Step120ExitFExtra : List Wire := [817]

private def s2Step120ExitGExtra : List Wire := [208, 815, 781]

private def s2Step120ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120ExitGvExtra : List Wire := [819, 792]

private def s2Step120Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120Add0Work : List Wire := [867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step120Add0_bounded : s2Step120Add0Work.toFinset⊆arenaWires := by
  have h : s2Step120Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step120Add0During : Arena := ⟨s2Step120Add0Arena.live∪s2Step120Add0Work.toFinset,Finset.union_subset s2Step120Add0Arena.bounded s2Step120Add0_bounded⟩

private def s2Step120Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120Add1Work : List Wire := [867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step120Add1_bounded : s2Step120Add1Work.toFinset⊆arenaWires := by
  have h : s2Step120Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step120Add1During : Arena := ⟨s2Step120Add1Arena.live∪s2Step120Add1Work.toFinset,Finset.union_subset s2Step120Add1Arena.bounded s2Step120Add1_bounded⟩

private def s2Step120F4FlagArena : Arena := ⟨s2Step120HeadFvAfter.live∪{806},Finset.union_subset s2Step120HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step120F4Plan : HmrHybridF4Plan := ⟨s2Step120F4FlagArena,[806],s2Step120Add0Arena,[802],s2Step120Add0During,s2Step120Add0Work,s2Step120Add1During,s2Step120Add1Work⟩

private def s2Step120HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 817],768⟩

private def s2Step120HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 849],770⟩

private def s2Step120HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 815, 781],769⟩

private def s2Step120HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 819, 792],771⟩

private def s2Step120FrontHead : WindowBank := ⟨s2Step120HeadFOut,s2Step120HeadGOut,s2Step120HeadFvOut,s2Step120HeadGvOut⟩

private def s2Step120EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step120EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821],770⟩

private def s2Step120EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 815],769⟩

private def s2Step120EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 819],771⟩

private def s2Step120FrontPair : WindowBank := ⟨s2Step120EntryFOut,s2Step120EntryGOut,s2Step120EntryFvOut,s2Step120EntryGvOut⟩

private def s2Step120FrontSigmaArena : Arena := ⟨s2Step120EntryGvAfter.live∪{790},Finset.union_subset s2Step120EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step120HeadFFresh : List Wire := [817]

private def s2Step120HeadFvFresh : List Wire := [849]

private def s2Step120HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120HeadGFresh : List Wire := [781]

private def s2Step120HeadGvFresh : List Wire := [792]

private def s2Step120FrontPlan : HmrSourceFront := ⟨s2Step120EntryGvAfter,s2Step120FrontPair,(growRow 768 s2Step120EntryFFresh ++ (growRow 769 s2Step120EntryGFresh ++ (growRow 770 s2Step120EntryFvFresh ++ (growRow 771 s2Step120EntryGvFresh ++ [])))),s2Step120FrontSigmaArena,[790],s2Step120HeadGBefore,[807],
  s2Step120HeadFvAfter,s2Step120FrontHead,(growRow 769 s2Step120HeadGFresh ++ (growRow 768 s2Step120HeadFFresh ++ (growRow 771 s2Step120HeadGvFresh ++ (growRow 770 s2Step120HeadFvFresh ++ [])))),s2Step120F4Plan,s2Step120CounterDuring,s2Step120CounterWork,s2Step120ExitGvAfter,s2Step120FrontOut,(shrinkRow 769 s2Step120ExitGExtra ++ (shrinkRow 768 s2Step120ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step120ExitGvExtra ++ []))))⟩

private def s2Step120CompletePlan : HmrEarlyStepPlan := ⟨s2Step120FrontPlan,s2Step120EarlyControlArena,s2Step120EarlyControlPlan,s2Step120CompleteMoves⟩

private theorem s2Step120Complete_apart : List.Disjoint (s2Step120CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [790, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step120CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[790, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step120Complete_owned : (s2Step120CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step120EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step120EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step120CompleteMoveArena : Arena := ⟨s2Step120ExitGvAfter.live∪{208},Finset.union_subset s2Step120ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step120Complete_repack : s2Step120ExitGvAfter.checkRepack s2Step120CompleteMoves=some s2Step120EarlyControlArena := by
  have owned : 830∈s2Step120ExitGvAfter.live := by norm_num [s2Step120ExitGvAfter,arenaWires]
  have reserve : s2Step120ExitGvAfter.reserve {208}=some s2Step120CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step120ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step120CompleteMoveArena.retireSet {830}=s2Step120EarlyControlArena := by
    unfold Arena.retireSet s2Step120EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step120CompleteMoveArena,s2Step120ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step120CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step120CompleteMoveArena.retireSet {830}).checkRepack []=some s2Step120EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step120EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s2Step120EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step120EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120EarlyControl_branch : compileHmrBranchRetirement s2Step120EarlyControlSigmaArena 807=some s2Step120EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step120EarlyControl_branchOwned
  · ext q
    simp [s2Step120EarlyControlOutputArena,s2Step120EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step120EarlyControl_classEqualityBorrow : s2Step120EarlyControlPositiveArena.checkBorrow (([790, 781] : List Wire).length-1) s2Step120EarlyControlLog.classWork=some s2Step120EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step120EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step120EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step120EarlyControlEqualityArena,s2Step120EarlyControlPositiveArena,s2Step120EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step120EarlyControl_classEqualityOwned : ([790, 781] : List Wire).toFinset⊆s2Step120EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step120EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120EarlyControl_classEquality : compileHmrEqualityLog s2Step120EarlyControlPositiveArena [790, 781] 0 s2Step120EarlyControlLog.classWork=some (s2Step120EarlyControlEqualityArena,s2Step120EarlyControlLog.classWork,s2Step120EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step120EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step120EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step120EarlyControl_classOwned : ([777, 815, 790] : List Wire).toFinset⊆s2Step120EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step120EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120EarlyControl_positiveBorrow : s2Step120EarlyControlZeroArena.checkBorrow (1) s2Step120EarlyControlLog.positiveWork=some s2Step120EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step120EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step120EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step120EarlyControlPositiveArena,s2Step120EarlyControlZeroArena,s2Step120EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step120EarlyControl_class : compileHmrSourceClassLog s2Step120EarlyControlZeroArena false 777 s2Step120EarlyControlZeroPlan.top 0 790 s2Step120EarlyControlLog.positiveWork s2Step120EarlyControlLog.classWork=some s2Step120EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step120EarlyControlClassPlan s2Step120EarlyControlZeroArena false 777 s2Step120EarlyControlZeroPlan.top 0 790
  constructor
  · decide +kernel
  · exact s2Step120EarlyControl_classOwned
  · exact s2Step120EarlyControl_positiveBorrow
  · exact s2Step120EarlyControl_classEquality

private theorem s2Step120EarlyControl_entryRecordOwned : ([807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step120EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step120EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120EarlyControl_entrySigmaOwned : ([790, 254] : List Wire).toFinset⊆s2Step120EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step120EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120EarlyControl_fitBorrow : s2Step120EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step120EarlyControlLog.recordFresh=some s2Step120EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step120EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step120EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
      decide +kernel
    · ext q
      simp [s2Step120EarlyControlFittedArena,s2Step120EarlyControlFlagArena,s2Step120EarlyControlLog,arenaWires]

private theorem s2Step120EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step120EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step120EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
  decide +kernel

private theorem s2Step120EarlyControl_fit : compileHmrRecordGrowLog s2Step120EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step120EarlyControlLog.recordFresh=some s2Step120EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step120EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step120EarlyControl_fitBorrow

private theorem s2Step120EarlyControl_flagsBorrow : s2Step120EarlyControlEqualityArena.checkBorrow (6) s2Step120EarlyControlLog.flagWork=some s2Step120EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step120EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step120EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step120EarlyControlFlagArena,s2Step120EarlyControlEqualityArena,s2Step120EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step120EarlyControl_flagsOwned : ([806, 253, 252, 251] : List Wire).toFinset⊆s2Step120EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step120EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120EarlyControl_flags : compileHmrFlagsLog s2Step120EarlyControlClassPlan.equalityArena s2Step120EarlyControlClassPlan.equality.top 253 252 251 s2Step120EarlyControlLog.flagWork=some s2Step120EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step120EarlyControl_flagsOwned⟩
  · exact s2Step120EarlyControl_flagsBorrow

private theorem s2Step120EarlyControl_historyBorrow : s2Step120EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step120EarlyControlLog.recordFresh=some s2Step120EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step120EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step120EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step120EarlyControlHistoryArena,s2Step120EarlyControlArena,s2Step120EarlyControlLog,arenaWires]

private theorem s2Step120EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step120EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step120EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120EarlyControl_history : compileHmrRecordGrowLog s2Step120EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step120EarlyControlLog.recordFresh=some s2Step120EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step120EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step120EarlyControl_historyBorrow

private theorem s2Step120EarlyControl_sigmaOwned : ([254, 790] : List Wire).toFinset⊆s2Step120EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step120EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120EarlyControl_sigmaReleaseOwned : ([790] : List Wire).toFinset⊆s2Step120EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step120EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120EarlyControl_sigmaRelease : s2Step120EarlyControlHistoryArena.release {790} (fun _ => false)=some s2Step120EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step120EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step120EarlyControlSigmaArena,s2Step120EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step120EarlyControl_sigma : compileHmrSigmaDropLog s2Step120EarlyControlHistoryArena false 0 0 254 790 []=some s2Step120EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step120EarlyControl_sigmaOwned⟩
  · exact s2Step120EarlyControl_sigmaRelease

private theorem s2Step120EarlyControl_zeroBorrow : s2Step120EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step120EarlyControlLog.zeroWork=some s2Step120EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step120EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step120EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step120EarlyControlZeroArena,s2Step120EarlyControlArena,s2Step120EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step120EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step120EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step120EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120EarlyControl_zero : compileHmrEqualityLog s2Step120EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step120EarlyControlLog.zeroWork=some (s2Step120EarlyControlZeroArena,s2Step120EarlyControlLog.zeroWork,s2Step120EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step120EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step120EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step120EarlyControl_logged : s2Step120EarlyControlPlan.Logged s2Step120EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 790 254 253 252 251 807 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step120EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step120EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step120EarlyControl_zero
  · exact s2Step120EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step120EarlyControl_flags
  · exact s2Step120EarlyControl_fit
  · exact s2Step120EarlyControl_history
  · exact s2Step120EarlyControl_sigma
  · exact s2Step120EarlyControl_branch

private theorem s2Step120EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step120EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 790 254 253 252 251 807 37 s2Step120EarlyControlLog=some s2Step120EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step120EarlyControlPlan s2Step120EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 790 254 253 252 251 807 37 s2Step120EarlyControl_logged

private def s2Step120EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step120EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821],770⟩

private def s2Step120EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208],769⟩

private def s2Step120EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794],771⟩

private def s2Step120FrontBank : WindowBank := ⟨s2Step120EntryFRow,s2Step120EntryGRow,s2Step120EntryFvRow,s2Step120EntryGvRow⟩

private def s2Step120Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 817, 768]

private def s2Step120Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 815, 781, 769]

private def s2Step120Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 849, 770]

private def s2Step120Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 819, 792, 771]

private theorem s2Step120Counter_apart : Disjoint s2Step120HeadFvAfter.live s2Step120CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step120HeadFvAfter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120Counter_borrowed : s2Step120HeadFvAfter.checkBorrow 4 s2Step120CounterWork=some s2Step120CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step120HeadFvAfter s2Step120CounterDuring s2Step120CounterWork.toFinset s2Step120Counter_bounded s2Step120Counter_apart rfl

private theorem s2Step120Counter_owned : (790::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step120HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step120HeadFvAfter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120Counter_checked : compileHmrCounterStepLog s2Step120HeadFvAfter true 790 [772, 773, 774, 775, 776, 777] s2Step120CounterWork=some s2Step120CounterDuring := by
  have owned : ∀q∈790::[772, 773, 774, 775, 776, 777],q∈s2Step120HeadFvAfter.live := fun q hq => s2Step120Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step120Counter_borrowed

private def s2Step120EntryFAfter : Arena := s2Step120EntryFBefore

private theorem s2Step120EntryBank_incomingDistinct : ([s2Step120EntryFRow,s2Step120EntryGRow,s2Step120EntryFvRow,s2Step120EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120EntryF_Incoming : rowsOwned s2Step120EntryFBefore [s2Step120EntryFRow,s2Step120EntryGRow,s2Step120EntryFvRow,s2Step120EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step120EntryFRow,s2Step120EntryGRow,s2Step120EntryFvRow,s2Step120EntryGvRow] 0 s2Step120EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step120EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step120EntryBank_outgoingOwned : rowsOwned s2Step120EntryGvAfter [s2Step120EntryFOut,s2Step120EntryGOut,s2Step120EntryFvOut,s2Step120EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step120EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step120EntryF_Outgoing : rowsOwned s2Step120EntryGvAfter [s2Step120EntryFOut,s2Step120EntryGOut,s2Step120EntryFvOut,s2Step120EntryGvOut] :=
  hmrRows_owned_drop s2Step120EntryGvAfter [s2Step120EntryFOut,s2Step120EntryGOut,s2Step120EntryFvOut,s2Step120EntryGvOut] 0 s2Step120EntryBank_outgoingOwned

private theorem s2Step120EntryF_distinct : (s2Step120EntryFRow.sign::s2Step120EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120EntryF_owned : (s2Step120EntryFRow.sign::s2Step120EntryFRow.payload).toFinset⊆s2Step120EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step120EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120EntryF_reserved : s2Step120EntryFBefore.reserve s2Step120EntryFFresh.toFinset=some s2Step120EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step120EntryFFresh,arenaWires]
  · norm_num [s2Step120EntryFBefore,s2Step120EntryFFresh,arenaWires]
  · simp only [s2Step120EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step120EntryF_checked : planRowResizeLog s2Step120EntryFBefore s2Step120EntryFRow 210 s2Step120EntryFFresh=
    some (s2Step120EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩,growRow 768 s2Step120EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step120EntryFBefore s2Step120EntryFAfter s2Step120EntryFRow 210 s2Step120EntryFFresh
    s2Step120EntryF_distinct s2Step120EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step120EntryF_reserved
  have rowEq : WindowRow.mk (s2Step120EntryFRow.payload++s2Step120EntryFFresh) s2Step120EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step120EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120EntryFvAfter : Arena := s2Step120EntryGAfter

private def s2Step120EntryFvBefore : Arena := s2Step120EntryGAfter

private theorem s2Step120EntryFv_Incoming : rowsOwned s2Step120EntryFvBefore [s2Step120EntryFvRow,s2Step120EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step120EntryFRow,s2Step120EntryGRow,s2Step120EntryFvRow,s2Step120EntryGvRow] 2 s2Step120EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step120EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step120EntryFv_Outgoing : rowsOwned s2Step120EntryGvAfter [s2Step120EntryFvOut,s2Step120EntryGvOut] :=
  hmrRows_owned_drop s2Step120EntryGvAfter [s2Step120EntryFOut,s2Step120EntryGOut,s2Step120EntryFvOut,s2Step120EntryGvOut] 2 s2Step120EntryBank_outgoingOwned

private theorem s2Step120EntryFv_distinct : (s2Step120EntryFvRow.sign::s2Step120EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120EntryFv_owned : (s2Step120EntryFvRow.sign::s2Step120EntryFvRow.payload).toFinset⊆s2Step120EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step120EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120EntryFv_reserved : s2Step120EntryFvBefore.reserve s2Step120EntryFvFresh.toFinset=some s2Step120EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step120EntryFvFresh,arenaWires]
  · norm_num [s2Step120EntryFvBefore,s2Step120EntryGAfter,s2Step120EntryFvFresh,arenaWires]
  · simp only [s2Step120EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step120EntryFv_checked : planRowResizeLog s2Step120EntryFvBefore s2Step120EntryFvRow 74 s2Step120EntryFvFresh=
    some (s2Step120EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821],770⟩,growRow 770 s2Step120EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step120EntryFvBefore s2Step120EntryFvAfter s2Step120EntryFvRow 74 s2Step120EntryFvFresh
    s2Step120EntryFv_distinct s2Step120EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step120EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step120EntryFvRow.payload++s2Step120EntryFvFresh) s2Step120EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step120EntryGBefore : Arena := s2Step120EntryFBefore

private theorem s2Step120EntryG_Incoming : rowsOwned s2Step120EntryGBefore [s2Step120EntryGRow,s2Step120EntryFvRow,s2Step120EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step120EntryFRow,s2Step120EntryGRow,s2Step120EntryFvRow,s2Step120EntryGvRow] 1 s2Step120EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step120EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step120EntryG_Outgoing : rowsOwned s2Step120EntryGvAfter [s2Step120EntryGOut,s2Step120EntryFvOut,s2Step120EntryGvOut] :=
  hmrRows_owned_drop s2Step120EntryGvAfter [s2Step120EntryFOut,s2Step120EntryGOut,s2Step120EntryFvOut,s2Step120EntryGvOut] 1 s2Step120EntryBank_outgoingOwned

private theorem s2Step120EntryG_distinct : (s2Step120EntryGRow.sign::s2Step120EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120EntryG_owned : (s2Step120EntryGRow.sign::s2Step120EntryGRow.payload).toFinset⊆s2Step120EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step120EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120EntryG_reserved : s2Step120EntryGBefore.reserve s2Step120EntryGFresh.toFinset=some s2Step120EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step120EntryGFresh,arenaWires]
  · norm_num [s2Step120EntryGBefore,s2Step120EntryFBefore,s2Step120EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step120EntryGAfter,s2Step120EntryGBefore,s2Step120EntryFBefore,s2Step120EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step120EntryG_checked : planRowResizeLog s2Step120EntryGBefore s2Step120EntryGRow 210 s2Step120EntryGFresh=
    some (s2Step120EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 815],769⟩,growRow 769 s2Step120EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step120EntryGBefore s2Step120EntryGAfter s2Step120EntryGRow 210 s2Step120EntryGFresh
    s2Step120EntryG_distinct s2Step120EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step120EntryG_reserved
  have rowEq : WindowRow.mk (s2Step120EntryGRow.payload++s2Step120EntryGFresh) s2Step120EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 815],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step120EntryGvBefore : Arena := s2Step120EntryGAfter

private theorem s2Step120EntryGv_Incoming : rowsOwned s2Step120EntryGvBefore [s2Step120EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step120EntryFRow,s2Step120EntryGRow,s2Step120EntryFvRow,s2Step120EntryGvRow] 3 s2Step120EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step120EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step120EntryGv_Outgoing : rowsOwned s2Step120EntryGvAfter [s2Step120EntryGvOut] :=
  hmrRows_owned_drop s2Step120EntryGvAfter [s2Step120EntryFOut,s2Step120EntryGOut,s2Step120EntryFvOut,s2Step120EntryGvOut] 3 s2Step120EntryBank_outgoingOwned

private theorem s2Step120EntryGv_distinct : (s2Step120EntryGvRow.sign::s2Step120EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120EntryGv_owned : (s2Step120EntryGvRow.sign::s2Step120EntryGvRow.payload).toFinset⊆s2Step120EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step120EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120EntryGv_reserved : s2Step120EntryGvBefore.reserve s2Step120EntryGvFresh.toFinset=some s2Step120EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step120EntryGvFresh,arenaWires]
  · norm_num [s2Step120EntryGvBefore,s2Step120EntryGAfter,s2Step120EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step120EntryGvAfter,s2Step120EntryGvBefore,s2Step120EntryGAfter,s2Step120EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step120EntryGv_checked : planRowResizeLog s2Step120EntryGvBefore s2Step120EntryGvRow 74 s2Step120EntryGvFresh=
    some (s2Step120EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 819],771⟩,growRow 771 s2Step120EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step120EntryGvBefore s2Step120EntryGvAfter s2Step120EntryGvRow 74 s2Step120EntryGvFresh
    s2Step120EntryGv_distinct s2Step120EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step120EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step120EntryGvRow.payload++s2Step120EntryGvFresh) s2Step120EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 819],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step120EntryBank_rows : planWindowRowsLog s2Step120EntryFBefore [(s2Step120EntryFRow,210),(s2Step120EntryGRow,210),(s2Step120EntryFvRow,74),(s2Step120EntryGvRow,74)] [s2Step120EntryFFresh,s2Step120EntryGFresh,s2Step120EntryFvFresh,s2Step120EntryGvFresh]=
    some (s2Step120EntryGvAfter,[s2Step120EntryFOut,s2Step120EntryGOut,s2Step120EntryFvOut,s2Step120EntryGvOut],(growRow 768 s2Step120EntryFFresh ++ (growRow 769 s2Step120EntryGFresh ++ (growRow 770 s2Step120EntryFvFresh ++ (growRow 771 s2Step120EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step120EntryGvAfter [] []=some (s2Step120EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step120EntryGvBefore s2Step120EntryGvAfter s2Step120EntryGvAfter
    s2Step120EntryGvRow s2Step120EntryGvOut 74 s2Step120EntryGvFresh [] [] []
    (growRow 771 s2Step120EntryGvFresh) ([]) s2Step120EntryGv_Incoming s2Step120EntryGv_checked h4 s2Step120EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step120EntryFvBefore s2Step120EntryFvAfter s2Step120EntryGvAfter
    s2Step120EntryFvRow s2Step120EntryFvOut 74 s2Step120EntryFvFresh [(s2Step120EntryGvRow,74)] [s2Step120EntryGvFresh] [s2Step120EntryGvOut]
    (growRow 770 s2Step120EntryFvFresh) ((growRow 771 s2Step120EntryGvFresh ++ [])) s2Step120EntryFv_Incoming s2Step120EntryFv_checked h3 s2Step120EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step120EntryGBefore s2Step120EntryGAfter s2Step120EntryGvAfter
    s2Step120EntryGRow s2Step120EntryGOut 210 s2Step120EntryGFresh [(s2Step120EntryFvRow,74),(s2Step120EntryGvRow,74)] [s2Step120EntryFvFresh,s2Step120EntryGvFresh] [s2Step120EntryFvOut,s2Step120EntryGvOut]
    (growRow 769 s2Step120EntryGFresh) ((growRow 770 s2Step120EntryFvFresh ++ (growRow 771 s2Step120EntryGvFresh ++ []))) s2Step120EntryG_Incoming s2Step120EntryG_checked h2 s2Step120EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step120EntryFBefore s2Step120EntryFAfter s2Step120EntryGvAfter
    s2Step120EntryFRow s2Step120EntryFOut 210 s2Step120EntryFFresh [(s2Step120EntryGRow,210),(s2Step120EntryFvRow,74),(s2Step120EntryGvRow,74)] [s2Step120EntryGFresh,s2Step120EntryFvFresh,s2Step120EntryGvFresh] [s2Step120EntryGOut,s2Step120EntryFvOut,s2Step120EntryGvOut]
    (growRow 768 s2Step120EntryFFresh) ((growRow 769 s2Step120EntryGFresh ++ (growRow 770 s2Step120EntryFvFresh ++ (growRow 771 s2Step120EntryGvFresh ++ [])))) s2Step120EntryF_Incoming s2Step120EntryF_checked h1 s2Step120EntryF_Outgoing
  exact h0

private theorem s2Step120EntryBank_checked : compileHmrBankResizeLog .entry s2Step120EntryFBefore ⟨s2Step120EntryFRow,s2Step120EntryGRow,s2Step120EntryFvRow,s2Step120EntryGvRow⟩ ⟨210,210,74,74⟩ [s2Step120EntryFFresh,s2Step120EntryGFresh,s2Step120EntryFvFresh,s2Step120EntryGvFresh]=
    some (s2Step120EntryGvAfter,⟨s2Step120EntryFOut,s2Step120EntryGOut,s2Step120EntryFvOut,s2Step120EntryGvOut⟩,(growRow 768 s2Step120EntryFFresh ++ (growRow 769 s2Step120EntryGFresh ++ (growRow 770 s2Step120EntryFvFresh ++ (growRow 771 s2Step120EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step120EntryBank_rows]
  rfl

private def s2Step120ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120ExitFBefore : Arena := s2Step120ExitGAfter

private def s2Step120ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 817],768⟩

private def s2Step120ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 849],770⟩

private def s2Step120ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 815, 781],769⟩

private def s2Step120ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 819, 792],771⟩

private theorem s2Step120ExitBank_incomingDistinct : ([s2Step120ExitGRow,s2Step120ExitFRow,s2Step120ExitFvRow,s2Step120ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120ExitF_Incoming : rowsOwned s2Step120ExitFBefore [s2Step120ExitFRow,s2Step120ExitFvRow,s2Step120ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step120ExitGRow,s2Step120ExitFRow,s2Step120ExitFvRow,s2Step120ExitGvRow] 1 s2Step120ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step120ExitFBefore (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step120ExitBank_outgoingOwned : rowsOwned s2Step120ExitGvAfter [s2Step120ExitGOut,s2Step120ExitFOut,s2Step120ExitFvOut,s2Step120ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step120ExitGvAfter (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step120ExitF_Outgoing : rowsOwned s2Step120ExitGvAfter [s2Step120ExitFOut,s2Step120ExitFvOut,s2Step120ExitGvOut] :=
  hmrRows_owned_drop s2Step120ExitGvAfter [s2Step120ExitGOut,s2Step120ExitFOut,s2Step120ExitFvOut,s2Step120ExitGvOut] 1 s2Step120ExitBank_outgoingOwned

private theorem s2Step120ExitF_distinct : (s2Step120ExitFRow.sign::s2Step120ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120ExitF_owned : (s2Step120ExitFRow.sign::s2Step120ExitFRow.payload).toFinset⊆s2Step120ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step120ExitFBefore (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120ExitF_retired : s2Step120ExitFBefore.retireSet s2Step120ExitFExtra.toFinset=s2Step120ExitFAfter := by
  unfold Arena.retireSet s2Step120ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step120ExitFBefore,s2Step120ExitGAfter,s2Step120ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step120ExitF_checked : planRowResizeLog s2Step120ExitFBefore s2Step120ExitFRow 210 []=
    some (s2Step120ExitFAfter,s2Step120ExitFOut,shrinkRow 768 s2Step120ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step120ExitFBefore s2Step120ExitFRow 210 s2Step120ExitF_distinct s2Step120ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step120ExitFRow.payload.take 210) s2Step120ExitFRow.sign=s2Step120ExitFOut := by decide +kernel
  have hi : s2Step120ExitFRow.payload.drop 210=s2Step120ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step120ExitF_retired] at result
  exact result

private def s2Step120ExitFvAfter : Arena := s2Step120ExitFAfter

private def s2Step120ExitFvBefore : Arena := s2Step120ExitFAfter

private theorem s2Step120ExitFv_Incoming : rowsOwned s2Step120ExitFvBefore [s2Step120ExitFvRow,s2Step120ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step120ExitGRow,s2Step120ExitFRow,s2Step120ExitFvRow,s2Step120ExitGvRow] 2 s2Step120ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step120ExitFvBefore (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step120ExitFv_Outgoing : rowsOwned s2Step120ExitGvAfter [s2Step120ExitFvOut,s2Step120ExitGvOut] :=
  hmrRows_owned_drop s2Step120ExitGvAfter [s2Step120ExitGOut,s2Step120ExitFOut,s2Step120ExitFvOut,s2Step120ExitGvOut] 2 s2Step120ExitBank_outgoingOwned

private theorem s2Step120ExitFv_distinct : (s2Step120ExitFvRow.sign::s2Step120ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120ExitFv_owned : (s2Step120ExitFvRow.sign::s2Step120ExitFvRow.payload).toFinset⊆s2Step120ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step120ExitFvBefore (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120ExitFv_reserved : s2Step120ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step120ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step120ExitFv_checked : planRowResizeLog s2Step120ExitFvBefore s2Step120ExitFvRow 75 []=
    some (s2Step120ExitFvAfter,s2Step120ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step120ExitFvBefore s2Step120ExitFvAfter s2Step120ExitFvRow 75 []
    s2Step120ExitFv_distinct s2Step120ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step120ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step120ExitFvRow.payload++[]) s2Step120ExitFvRow.sign=s2Step120ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step120ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step120ExitG_Incoming : rowsOwned s2Step120ExitGBefore [s2Step120ExitGRow,s2Step120ExitFRow,s2Step120ExitFvRow,s2Step120ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step120ExitGRow,s2Step120ExitFRow,s2Step120ExitFvRow,s2Step120ExitGvRow] 0 s2Step120ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step120ExitGBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step120ExitG_Outgoing : rowsOwned s2Step120ExitGvAfter [s2Step120ExitGOut,s2Step120ExitFOut,s2Step120ExitFvOut,s2Step120ExitGvOut] :=
  hmrRows_owned_drop s2Step120ExitGvAfter [s2Step120ExitGOut,s2Step120ExitFOut,s2Step120ExitFvOut,s2Step120ExitGvOut] 0 s2Step120ExitBank_outgoingOwned

private theorem s2Step120ExitG_distinct : (s2Step120ExitGRow.sign::s2Step120ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120ExitG_owned : (s2Step120ExitGRow.sign::s2Step120ExitGRow.payload).toFinset⊆s2Step120ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step120ExitGBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120ExitG_retired : s2Step120ExitGBefore.retireSet s2Step120ExitGExtra.toFinset=s2Step120ExitGAfter := by
  unfold Arena.retireSet s2Step120ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step120ExitGBefore,s2Step120ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step120ExitG_checked : planRowResizeLog s2Step120ExitGBefore s2Step120ExitGRow 208 []=
    some (s2Step120ExitGAfter,s2Step120ExitGOut,shrinkRow 769 s2Step120ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step120ExitGBefore s2Step120ExitGRow 208 s2Step120ExitG_distinct s2Step120ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step120ExitGRow.payload.take 208) s2Step120ExitGRow.sign=s2Step120ExitGOut := by decide +kernel
  have hi : s2Step120ExitGRow.payload.drop 208=s2Step120ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step120ExitG_retired] at result
  exact result

private def s2Step120ExitGvBefore : Arena := s2Step120ExitFAfter

private theorem s2Step120ExitGv_Incoming : rowsOwned s2Step120ExitGvBefore [s2Step120ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step120ExitGRow,s2Step120ExitFRow,s2Step120ExitFvRow,s2Step120ExitGvRow] 3 s2Step120ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step120ExitGvBefore (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step120ExitGv_Outgoing : rowsOwned s2Step120ExitGvAfter [s2Step120ExitGvOut] :=
  hmrRows_owned_drop s2Step120ExitGvAfter [s2Step120ExitGOut,s2Step120ExitFOut,s2Step120ExitFvOut,s2Step120ExitGvOut] 3 s2Step120ExitBank_outgoingOwned

private theorem s2Step120ExitGv_distinct : (s2Step120ExitGvRow.sign::s2Step120ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120ExitGv_owned : (s2Step120ExitGvRow.sign::s2Step120ExitGvRow.payload).toFinset⊆s2Step120ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step120ExitGvBefore (fun q => (0≤q ∧ q<208) ∨ (209≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120ExitGv_retired : s2Step120ExitGvBefore.retireSet s2Step120ExitGvExtra.toFinset=s2Step120ExitGvAfter := by
  unfold Arena.retireSet s2Step120ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step120ExitGvBefore,s2Step120ExitFAfter,s2Step120ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step120ExitGv_checked : planRowResizeLog s2Step120ExitGvBefore s2Step120ExitGvRow 73 []=
    some (s2Step120ExitGvAfter,s2Step120ExitGvOut,shrinkRow 771 s2Step120ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step120ExitGvBefore s2Step120ExitGvRow 73 s2Step120ExitGv_distinct s2Step120ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step120ExitGvRow.payload.take 73) s2Step120ExitGvRow.sign=s2Step120ExitGvOut := by decide +kernel
  have hi : s2Step120ExitGvRow.payload.drop 73=s2Step120ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step120ExitGv_retired] at result
  exact result

private theorem s2Step120ExitBank_rows : planWindowRowsLog s2Step120ExitGBefore [(s2Step120ExitGRow,208),(s2Step120ExitFRow,210),(s2Step120ExitFvRow,75),(s2Step120ExitGvRow,73)] [[],[],[],[]]=
    some (s2Step120ExitGvAfter,[s2Step120ExitGOut,s2Step120ExitFOut,s2Step120ExitFvOut,s2Step120ExitGvOut],(shrinkRow 769 s2Step120ExitGExtra ++ (shrinkRow 768 s2Step120ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step120ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step120ExitGvAfter [] []=some (s2Step120ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step120ExitGvBefore s2Step120ExitGvAfter s2Step120ExitGvAfter
    s2Step120ExitGvRow s2Step120ExitGvOut 73 [] [] [] []
    (shrinkRow 771 s2Step120ExitGvExtra) ([]) s2Step120ExitGv_Incoming s2Step120ExitGv_checked h4 s2Step120ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step120ExitFvBefore s2Step120ExitFvAfter s2Step120ExitGvAfter
    s2Step120ExitFvRow s2Step120ExitFvOut 75 [] [(s2Step120ExitGvRow,73)] [[]] [s2Step120ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step120ExitGvExtra ++ [])) s2Step120ExitFv_Incoming s2Step120ExitFv_checked h3 s2Step120ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step120ExitFBefore s2Step120ExitFAfter s2Step120ExitGvAfter
    s2Step120ExitFRow s2Step120ExitFOut 210 [] [(s2Step120ExitFvRow,75),(s2Step120ExitGvRow,73)] [[],[]] [s2Step120ExitFvOut,s2Step120ExitGvOut]
    (shrinkRow 768 s2Step120ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step120ExitGvExtra ++ []))) s2Step120ExitF_Incoming s2Step120ExitF_checked h2 s2Step120ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step120ExitGBefore s2Step120ExitGAfter s2Step120ExitGvAfter
    s2Step120ExitGRow s2Step120ExitGOut 208 [] [(s2Step120ExitFRow,210),(s2Step120ExitFvRow,75),(s2Step120ExitGvRow,73)] [[],[],[]] [s2Step120ExitFOut,s2Step120ExitFvOut,s2Step120ExitGvOut]
    (shrinkRow 769 s2Step120ExitGExtra) ((shrinkRow 768 s2Step120ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step120ExitGvExtra ++ [])))) s2Step120ExitG_Incoming s2Step120ExitG_checked h1 s2Step120ExitG_Outgoing
  exact h0

private theorem s2Step120ExitBank_checked : compileHmrBankResizeLog .exit s2Step120ExitGBefore ⟨s2Step120ExitFRow,s2Step120ExitGRow,s2Step120ExitFvRow,s2Step120ExitGvRow⟩ ⟨210,208,75,73⟩ [[],[],[],[]]=
    some (s2Step120ExitGvAfter,⟨s2Step120ExitFOut,s2Step120ExitGOut,s2Step120ExitFvOut,s2Step120ExitGvOut⟩,(shrinkRow 769 s2Step120ExitGExtra ++ (shrinkRow 768 s2Step120ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step120ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step120ExitBank_rows]
  rfl

private theorem s2Step120Add0_apart : Disjoint s2Step120Add0Arena.live s2Step120Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step120Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120Add0_card : s2Step120Add0Arena.live.card=879 := by
  decide +kernel

private theorem s2Step120Add0_borrowed : s2Step120Add0Arena.checkBorrow (hmrHybridCount s2Step120Add0Arena s2Step120Add0B.length) s2Step120Add0Work=some s2Step120Add0During := by
  have len : s2Step120Add0Work.length=hmrHybridCount s2Step120Add0Arena s2Step120Add0B.length := by
    rw [hmrHybridCount,s2Step120Add0_card]
    decide +kernel
  have nd : s2Step120Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step120Add0Arena s2Step120Add0During s2Step120Add0Work.toFinset s2Step120Add0_bounded s2Step120Add0_apart rfl

private theorem s2Step120Add0_distinct : (806::807::802::(s2Step120Add0A++s2Step120Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120Add0_owned : (806::807::802::(s2Step120Add0A++s2Step120Add0B)).toFinset⊆s2Step120Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step120Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120Add0_checked : compileHmrHybridCinLog s2Step120Add0Arena 807 806 802 s2Step120Add0A s2Step120Add0B s2Step120Add0Work=some s2Step120Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step120Add0Arena s2Step120Add0During 807 806 802 s2Step120Add0A s2Step120Add0B s2Step120Add0Work
    (by decide +kernel) (by decide +kernel) s2Step120Add0_distinct
    (fun q hq => s2Step120Add0_owned (List.mem_toFinset.mpr hq)) s2Step120Add0_borrowed

private theorem s2Step120Add1_apart : Disjoint s2Step120Add1Arena.live s2Step120Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step120Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120Add1_card : s2Step120Add1Arena.live.card=879 := by
  decide +kernel

private theorem s2Step120Add1_borrowed : s2Step120Add1Arena.checkBorrow (hmrHybridCount s2Step120Add1Arena s2Step120Add1B.length) s2Step120Add1Work=some s2Step120Add1During := by
  have len : s2Step120Add1Work.length=hmrHybridCount s2Step120Add1Arena s2Step120Add1B.length := by
    rw [hmrHybridCount,s2Step120Add1_card]
    decide +kernel
  have nd : s2Step120Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step120Add1Arena s2Step120Add1During s2Step120Add1Work.toFinset s2Step120Add1_bounded s2Step120Add1_apart rfl

private theorem s2Step120Add1_distinct : (806::807::802::(s2Step120Add1A++s2Step120Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120Add1_owned : (806::807::802::(s2Step120Add1A++s2Step120Add1B)).toFinset⊆s2Step120Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step120Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120Add1_checked : compileHmrHybridCinLog s2Step120Add1Arena 807 806 802 s2Step120Add1A s2Step120Add1B s2Step120Add1Work=some s2Step120Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step120Add1Arena s2Step120Add1During 807 806 802 s2Step120Add1A s2Step120Add1B s2Step120Add1Work
    (by decide +kernel) (by decide +kernel) s2Step120Add1_distinct
    (fun q hq => s2Step120Add1_owned (List.mem_toFinset.mpr hq)) s2Step120Add1_borrowed

private theorem s2Step120F4_apart : Disjoint (s2Step120Add0A++s2Step120Add0B).toFinset (s2Step120Add1A++s2Step120Add1B).toFinset := by
  have nd : ((s2Step120Add0A++s2Step120Add0B)++(s2Step120Add1A++s2Step120Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step120F4_carry : s2Step120F4FlagArena.checkBorrow 1 [802]=some s2Step120Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step120F4FlagArena,s2Step120HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step120F4FlagArena,s2Step120HeadFvAfter,s2Step120Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step120F4_distinct : (790::807::806::802::((s2Step120Add0A++s2Step120Add1A)++(s2Step120Add0B++s2Step120Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120F4_flag : s2Step120HeadFvAfter.checkBorrow 1 [806]=some s2Step120F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step120HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step120F4_owned : (790::807::((s2Step120Add0A++s2Step120Add1A)++(s2Step120Add0B++s2Step120Add1B))).toFinset⊆s2Step120HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step120HeadFvAfter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120F4_checked : compileHmrHybridF4Log s2Step120HeadFvAfter 790 807 s2Step120Add0A s2Step120Add0B s2Step120Add1A s2Step120Add1B [806] [802] s2Step120Add0Work s2Step120Add1Work=some s2Step120F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step120HeadFvAfter s2Step120F4FlagArena s2Step120Add0Arena s2Step120Add0During s2Step120Add1During 790 807
    s2Step120Add0A s2Step120Add0B s2Step120Add1A s2Step120Add1B [806] [802] s2Step120Add0Work s2Step120Add1Work
    (fun q hq => s2Step120F4_owned (List.mem_toFinset.mpr hq)) s2Step120F4_flag s2Step120F4_carry
    s2Step120F4_distinct s2Step120F4_apart s2Step120Add0_checked s2Step120Add1_checked

private theorem s2Step120Front_branch : s2Step120FrontSigmaArena.checkBorrow 1 [807]=some s2Step120HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step120FrontSigmaArena,s2Step120EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step120FrontSigmaArena,s2Step120EntryGvAfter,s2Step120HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step120Front_entry : HmrFrontEntryValid s2Step120EntryFBefore s2Step120FrontBank 210 74 ⟨210,208,75,73⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step120FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step120EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step120EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step120FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step120Front_sigma : s2Step120EntryGvAfter.checkBorrow 1 [790]=some s2Step120FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step120EntryGvAfter,arenaWires]
  · rfl

private def s2Step120HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120HeadFBefore : Arena := s2Step120HeadGAfter

private def s2Step120HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step120HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821],770⟩

private def s2Step120HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 815],769⟩

private def s2Step120HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 819],771⟩

private theorem s2Step120HeadBank_incomingDistinct : ([s2Step120HeadGRow,s2Step120HeadFRow,s2Step120HeadGvRow,s2Step120HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120HeadF_Incoming : rowsOwned s2Step120HeadFBefore [s2Step120HeadFRow,s2Step120HeadGvRow,s2Step120HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step120HeadGRow,s2Step120HeadFRow,s2Step120HeadGvRow,s2Step120HeadFvRow] 1 s2Step120HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step120HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step120HeadBank_outgoingOwned : rowsOwned s2Step120HeadFvAfter [s2Step120HeadGOut,s2Step120HeadFOut,s2Step120HeadGvOut,s2Step120HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step120HeadFvAfter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step120HeadF_Outgoing : rowsOwned s2Step120HeadFvAfter [s2Step120HeadFOut,s2Step120HeadGvOut,s2Step120HeadFvOut] :=
  hmrRows_owned_drop s2Step120HeadFvAfter [s2Step120HeadGOut,s2Step120HeadFOut,s2Step120HeadGvOut,s2Step120HeadFvOut] 1 s2Step120HeadBank_outgoingOwned

private theorem s2Step120HeadF_distinct : (s2Step120HeadFRow.sign::s2Step120HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120HeadF_owned : (s2Step120HeadFRow.sign::s2Step120HeadFRow.payload).toFinset⊆s2Step120HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step120HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120HeadF_reserved : s2Step120HeadFBefore.reserve s2Step120HeadFFresh.toFinset=some s2Step120HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step120HeadFFresh,arenaWires]
  · norm_num [s2Step120HeadFBefore,s2Step120HeadGAfter,s2Step120HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step120HeadFAfter,s2Step120HeadFBefore,s2Step120HeadGAfter,s2Step120HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step120HeadF_checked : planRowResizeLog s2Step120HeadFBefore s2Step120HeadFRow 211 s2Step120HeadFFresh=
    some (s2Step120HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 817],768⟩,growRow 768 s2Step120HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step120HeadFBefore s2Step120HeadFAfter s2Step120HeadFRow 211 s2Step120HeadFFresh
    s2Step120HeadF_distinct s2Step120HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step120HeadF_reserved
  have rowEq : WindowRow.mk (s2Step120HeadFRow.payload++s2Step120HeadFFresh) s2Step120HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 817],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step120HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step120HeadFvBefore : Arena := s2Step120HeadGvAfter

private theorem s2Step120HeadFv_Incoming : rowsOwned s2Step120HeadFvBefore [s2Step120HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step120HeadGRow,s2Step120HeadFRow,s2Step120HeadGvRow,s2Step120HeadFvRow] 3 s2Step120HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step120HeadFvBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step120HeadFv_Outgoing : rowsOwned s2Step120HeadFvAfter [s2Step120HeadFvOut] :=
  hmrRows_owned_drop s2Step120HeadFvAfter [s2Step120HeadGOut,s2Step120HeadFOut,s2Step120HeadGvOut,s2Step120HeadFvOut] 3 s2Step120HeadBank_outgoingOwned

private theorem s2Step120HeadFv_distinct : (s2Step120HeadFvRow.sign::s2Step120HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120HeadFv_owned : (s2Step120HeadFvRow.sign::s2Step120HeadFvRow.payload).toFinset⊆s2Step120HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step120HeadFvBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120HeadFv_reserved : s2Step120HeadFvBefore.reserve s2Step120HeadFvFresh.toFinset=some s2Step120HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step120HeadFvFresh,arenaWires]
  · norm_num [s2Step120HeadFvBefore,s2Step120HeadGvAfter,s2Step120HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step120HeadFvAfter,s2Step120HeadFvBefore,s2Step120HeadGvAfter,s2Step120HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step120HeadFv_checked : planRowResizeLog s2Step120HeadFvBefore s2Step120HeadFvRow 75 s2Step120HeadFvFresh=
    some (s2Step120HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 849],770⟩,growRow 770 s2Step120HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step120HeadFvBefore s2Step120HeadFvAfter s2Step120HeadFvRow 75 s2Step120HeadFvFresh
    s2Step120HeadFv_distinct s2Step120HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step120HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step120HeadFvRow.payload++s2Step120HeadFvFresh) s2Step120HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 849],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step120HeadG_Incoming : rowsOwned s2Step120HeadGBefore [s2Step120HeadGRow,s2Step120HeadFRow,s2Step120HeadGvRow,s2Step120HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step120HeadGRow,s2Step120HeadFRow,s2Step120HeadGvRow,s2Step120HeadFvRow] 0 s2Step120HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step120HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step120HeadG_Outgoing : rowsOwned s2Step120HeadFvAfter [s2Step120HeadGOut,s2Step120HeadFOut,s2Step120HeadGvOut,s2Step120HeadFvOut] :=
  hmrRows_owned_drop s2Step120HeadFvAfter [s2Step120HeadGOut,s2Step120HeadFOut,s2Step120HeadGvOut,s2Step120HeadFvOut] 0 s2Step120HeadBank_outgoingOwned

private theorem s2Step120HeadG_distinct : (s2Step120HeadGRow.sign::s2Step120HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120HeadG_owned : (s2Step120HeadGRow.sign::s2Step120HeadGRow.payload).toFinset⊆s2Step120HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step120HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<817) ∨ (818≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120HeadG_reserved : s2Step120HeadGBefore.reserve s2Step120HeadGFresh.toFinset=some s2Step120HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step120HeadGFresh,arenaWires]
  · norm_num [s2Step120HeadGBefore,s2Step120HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step120HeadGAfter,s2Step120HeadGBefore,s2Step120HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step120HeadG_checked : planRowResizeLog s2Step120HeadGBefore s2Step120HeadGRow 211 s2Step120HeadGFresh=
    some (s2Step120HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 815, 781],769⟩,growRow 769 s2Step120HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step120HeadGBefore s2Step120HeadGAfter s2Step120HeadGRow 211 s2Step120HeadGFresh
    s2Step120HeadG_distinct s2Step120HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step120HeadG_reserved
  have rowEq : WindowRow.mk (s2Step120HeadGRow.payload++s2Step120HeadGFresh) s2Step120HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 815, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step120HeadGvBefore : Arena := s2Step120HeadFAfter

private theorem s2Step120HeadGv_Incoming : rowsOwned s2Step120HeadGvBefore [s2Step120HeadGvRow,s2Step120HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step120HeadGRow,s2Step120HeadFRow,s2Step120HeadGvRow,s2Step120HeadFvRow] 2 s2Step120HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step120HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step120HeadGv_Outgoing : rowsOwned s2Step120HeadFvAfter [s2Step120HeadGvOut,s2Step120HeadFvOut] :=
  hmrRows_owned_drop s2Step120HeadFvAfter [s2Step120HeadGOut,s2Step120HeadFOut,s2Step120HeadGvOut,s2Step120HeadFvOut] 2 s2Step120HeadBank_outgoingOwned

private theorem s2Step120HeadGv_distinct : (s2Step120HeadGvRow.sign::s2Step120HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step120HeadGv_owned : (s2Step120HeadGvRow.sign::s2Step120HeadGvRow.payload).toFinset⊆s2Step120HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step120HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step120HeadGv_reserved : s2Step120HeadGvBefore.reserve s2Step120HeadGvFresh.toFinset=some s2Step120HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step120HeadGvFresh,arenaWires]
  · norm_num [s2Step120HeadGvBefore,s2Step120HeadFAfter,s2Step120HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step120HeadGvAfter,s2Step120HeadGvBefore,s2Step120HeadFAfter,s2Step120HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step120HeadGv_checked : planRowResizeLog s2Step120HeadGvBefore s2Step120HeadGvRow 75 s2Step120HeadGvFresh=
    some (s2Step120HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 819, 792],771⟩,growRow 771 s2Step120HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step120HeadGvBefore s2Step120HeadGvAfter s2Step120HeadGvRow 75 s2Step120HeadGvFresh
    s2Step120HeadGv_distinct s2Step120HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step120HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step120HeadGvRow.payload++s2Step120HeadGvFresh) s2Step120HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 819, 792],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step120HeadBank_rows : planWindowRowsLog s2Step120HeadGBefore [(s2Step120HeadGRow,211),(s2Step120HeadFRow,211),(s2Step120HeadGvRow,75),(s2Step120HeadFvRow,75)] [s2Step120HeadGFresh,s2Step120HeadFFresh,s2Step120HeadGvFresh,s2Step120HeadFvFresh]=
    some (s2Step120HeadFvAfter,[s2Step120HeadGOut,s2Step120HeadFOut,s2Step120HeadGvOut,s2Step120HeadFvOut],(growRow 769 s2Step120HeadGFresh ++ (growRow 768 s2Step120HeadFFresh ++ (growRow 771 s2Step120HeadGvFresh ++ (growRow 770 s2Step120HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step120HeadFvAfter [] []=some (s2Step120HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step120HeadFvBefore s2Step120HeadFvAfter s2Step120HeadFvAfter
    s2Step120HeadFvRow s2Step120HeadFvOut 75 s2Step120HeadFvFresh [] [] []
    (growRow 770 s2Step120HeadFvFresh) ([]) s2Step120HeadFv_Incoming s2Step120HeadFv_checked h4 s2Step120HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step120HeadGvBefore s2Step120HeadGvAfter s2Step120HeadFvAfter
    s2Step120HeadGvRow s2Step120HeadGvOut 75 s2Step120HeadGvFresh [(s2Step120HeadFvRow,75)] [s2Step120HeadFvFresh] [s2Step120HeadFvOut]
    (growRow 771 s2Step120HeadGvFresh) ((growRow 770 s2Step120HeadFvFresh ++ [])) s2Step120HeadGv_Incoming s2Step120HeadGv_checked h3 s2Step120HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step120HeadFBefore s2Step120HeadFAfter s2Step120HeadFvAfter
    s2Step120HeadFRow s2Step120HeadFOut 211 s2Step120HeadFFresh [(s2Step120HeadGvRow,75),(s2Step120HeadFvRow,75)] [s2Step120HeadGvFresh,s2Step120HeadFvFresh] [s2Step120HeadGvOut,s2Step120HeadFvOut]
    (growRow 768 s2Step120HeadFFresh) ((growRow 771 s2Step120HeadGvFresh ++ (growRow 770 s2Step120HeadFvFresh ++ []))) s2Step120HeadF_Incoming s2Step120HeadF_checked h2 s2Step120HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step120HeadGBefore s2Step120HeadGAfter s2Step120HeadFvAfter
    s2Step120HeadGRow s2Step120HeadGOut 211 s2Step120HeadGFresh [(s2Step120HeadFRow,211),(s2Step120HeadGvRow,75),(s2Step120HeadFvRow,75)] [s2Step120HeadFFresh,s2Step120HeadGvFresh,s2Step120HeadFvFresh] [s2Step120HeadFOut,s2Step120HeadGvOut,s2Step120HeadFvOut]
    (growRow 769 s2Step120HeadGFresh) ((growRow 768 s2Step120HeadFFresh ++ (growRow 771 s2Step120HeadGvFresh ++ (growRow 770 s2Step120HeadFvFresh ++ [])))) s2Step120HeadG_Incoming s2Step120HeadG_checked h1 s2Step120HeadG_Outgoing
  exact h0

private theorem s2Step120HeadBank_checked : compileHmrBankResizeLog .headroom s2Step120HeadGBefore ⟨s2Step120HeadFRow,s2Step120HeadGRow,s2Step120HeadFvRow,s2Step120HeadGvRow⟩ ⟨211,211,75,75⟩ [s2Step120HeadGFresh,s2Step120HeadFFresh,s2Step120HeadGvFresh,s2Step120HeadFvFresh]=
    some (s2Step120HeadFvAfter,⟨s2Step120HeadFOut,s2Step120HeadGOut,s2Step120HeadFvOut,s2Step120HeadGvOut⟩,(growRow 769 s2Step120HeadGFresh ++ (growRow 768 s2Step120HeadFFresh ++ (growRow 771 s2Step120HeadGvFresh ++ (growRow 770 s2Step120HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step120HeadBank_rows]
  rfl

private theorem s2Step120Front_checked : compileHmrSourceFrontLog s2Step120EntryFBefore s2Step120FrontBank 210 74 ⟨210,208,75,73⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step120FrontLog=some s2Step120FrontPlan := by
  have pairEq : s2Step120FrontPair=⟨s2Step120HeadFRow,s2Step120HeadGRow,s2Step120HeadFvRow,s2Step120HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step120FrontHead=⟨s2Step120ExitFRow,s2Step120ExitGRow,s2Step120ExitFvRow,s2Step120ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step120Add0A=s2Step120FrontHead.f.wires := by decide +kernel
  have gEq : s2Step120Add0B=s2Step120FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step120Add1A=s2Step120FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step120Add1B=s2Step120FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step120EntryFBefore s2Step120FrontBank 210 74 ⟨210,208,75,73⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step120FrontLog s2Step120FrontPlan
  · exact s2Step120Front_entry
  · exact s2Step120EntryBank_checked
  · exact s2Step120Front_sigma
  · rfl
  · exact s2Step120Front_branch
  · rfl
  · simpa only [s2Step120FrontPlan,pairEq] using s2Step120HeadBank_checked
  · simpa only [s2Step120FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step120F4_checked
  · exact s2Step120Counter_checked
  · rfl
  · simpa only [s2Step120FrontPlan,headEq] using s2Step120ExitBank_checked

private theorem s2Step120Complete_explicit_checked : compileHmrEarlyStepLog s2Step120EntryFBefore s2Step120FrontBank 210 74 ⟨210,208,75,73⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step120CompleteLog=some s2Step120CompletePlan := by
  let Q := s2Step120EarlyControlPlan
  have hq := s2Step120EarlyControl_plan_checked
  have fv1 : s2Step120CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step120CompleteOut.fv.payload[2]?.getD s2Step120CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step120CompleteOut.fv.payload[3]?.getD s2Step120CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step120CompleteOut.fv.payload[4]?.getD s2Step120CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step120EntryFBefore s2Step120EarlyControlArena s2Step120FrontBank 210 74 ⟨210,208,75,73⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step120CompleteLog s2Step120FrontPlan Q
    s2Step120Front_checked s2Step120Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step120Complete_owned s2Step120Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step120EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 790 s2Step120CompleteOut.fv.second (s2Step120CompleteOut.fv.payload[2]?.getD s2Step120CompleteOut.fv.sign) (s2Step120CompleteOut.fv.payload[3]?.getD s2Step120CompleteOut.fv.sign) (s2Step120CompleteOut.fv.payload[4]?.getD s2Step120CompleteOut.fv.sign) 807 37 s2Step120EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep120Arena : Arena := s2Step120EntryFBefore
def s2PrivateStep120Bank : WindowBank := s2Step120FrontBank
def s2PrivateStep120Spec : HmrSourceWalkStepLog := ⟨210,74,⟨210,208,75,73⟩,37,.early s2Step120CompleteLog⟩
def s2PrivateStep120Plan : HmrSourceStepPlan := .early s2Step120CompletePlan
theorem s2PrivateStep120_source : s2PrivateStep120Spec=s2ObservedLogs112[8] := rfl
theorem s2PrivateStep120_checked : compileHmrSourceStepLog s2PrivateStep120Arena s2PrivateStep120Bank
    s2PrivateStep120Spec.fgWidth s2PrivateStep120Spec.vWidth s2PrivateStep120Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 120 s2PrivateStep120Spec.need none s2PrivateStep120Spec.log=some s2PrivateStep120Plan := by
  change compileHmrSourceStepLog s2Step120EntryFBefore s2Step120FrontBank 210 74 ⟨210,208,75,73⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 120 37 none (.early s2Step120CompleteLog)=some (.early s2Step120CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 120<498)]
  rw [s2Step120Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
