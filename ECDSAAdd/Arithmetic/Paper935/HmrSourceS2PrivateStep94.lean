import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep92
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

private def s2Step94CompleteMoves : List (Wire × Wire) := [(794,733)]

private def s2Step94EarlyControlLog : HmrEarlyControlLog := ⟨[794, 779, 781, 799, 786],[785],[839],[846, 847, 849, 851, 867, 877],[]⟩

private def s2Step94FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [799], [], []],[[786], [781], [779], [844]],[[], [], [], []]⟩,[793],[796],[785],[839],[846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932],[785, 839, 846, 847]⟩

private def s2Step94CompleteLog : HmrEarlyStepLog := ⟨s2Step94FrontLog,s2Step94CompleteMoves,s2Step94EarlyControlLog⟩

private def s2Step94ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step94ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844],770⟩

private def s2Step94ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],769⟩

private def s2Step94ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780],771⟩

private def s2Step94FrontOut : WindowBank := ⟨s2Step94ExitFOut,s2Step94ExitGOut,s2Step94ExitFvOut,s2Step94ExitGvOut⟩

private def s2Step94CompleteOut : WindowBank := s2Step94FrontOut.repacked s2Step94CompleteMoves

private def s2Step94EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step94EarlyControlPositiveArena,[785],s2Step94EarlyControlEqualityArena,[839],⟨⟨793,false⟩,[⟨⟨785,false⟩,839⟩]⟩⟩

private def s2Step94EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<878)),Finset.filter_subset _ _⟩

private def s2Step94EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<878)),Finset.filter_subset _ _⟩

private def s2Step94EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,794⟩,⟨⟨774,false⟩,779⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,799⟩,⟨⟨777,false⟩,786⟩]⟩

private def s2Step94EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step94EarlyControlZeroArena,s2Step94EarlyControlZeroPlan,s2Step94EarlyControlClassPlan,s2Step94EarlyControlFlagArena,s2Step94EarlyControlFittedArena,s2Step94EarlyControlHistoryArena,s2Step94EarlyControlSigmaArena,s2Step94EarlyControlOutputArena,s2Step94EarlyControlLog⟩

private def s2Step94CounterWork : List Wire := [785, 839, 846, 847]

private theorem s2Step94Counter_bounded : s2Step94CounterWork.toFinset⊆arenaWires := by norm_num [s2Step94CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step94HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94CounterDuring : Arena := ⟨s2Step94HeadFvAfter.live∪s2Step94CounterWork.toFinset,Finset.union_subset s2Step94HeadFvAfter.bounded s2Step94Counter_bounded⟩

private def s2Step94EntryFFresh : List Wire := []

private def s2Step94EntryFvFresh : List Wire := []

private def s2Step94EntryGFresh : List Wire := [799]

private def s2Step94EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94EntryGvAfter : Arena := s2Step94EntryGAfter

private def s2Step94EntryGvFresh : List Wire := []

private def s2Step94ExitFExtra : List Wire := [733, 781]

private def s2Step94ExitGExtra : List Wire := [799, 786]

private def s2Step94ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<733) ∨ (734≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94ExitGvExtra : List Wire := [779]

private def s2Step94Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94Add0Work : List Wire := [846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step94Add0_bounded : s2Step94Add0Work.toFinset⊆arenaWires := by
  have h : s2Step94Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step94Add0During : Arena := ⟨s2Step94Add0Arena.live∪s2Step94Add0Work.toFinset,Finset.union_subset s2Step94Add0Arena.bounded s2Step94Add0_bounded⟩

private def s2Step94Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94Add1Work : List Wire := [846, 847, 849, 851, 867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932]

private theorem s2Step94Add1_bounded : s2Step94Add1Work.toFinset⊆arenaWires := by
  have h : s2Step94Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step94Add1During : Arena := ⟨s2Step94Add1Arena.live∪s2Step94Add1Work.toFinset,Finset.union_subset s2Step94Add1Arena.bounded s2Step94Add1_bounded⟩

private def s2Step94F4FlagArena : Arena := ⟨s2Step94HeadFvAfter.live∪{785},Finset.union_subset s2Step94HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step94F4Plan : HmrHybridF4Plan := ⟨s2Step94F4FlagArena,[785],s2Step94Add0Arena,[839],s2Step94Add0During,s2Step94Add0Work,s2Step94Add1During,s2Step94Add1Work⟩

private def s2Step94HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 781],768⟩

private def s2Step94HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844],770⟩

private def s2Step94HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 799, 786],769⟩

private def s2Step94HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 779],771⟩

private def s2Step94FrontHead : WindowBank := ⟨s2Step94HeadFOut,s2Step94HeadGOut,s2Step94HeadFvOut,s2Step94HeadGvOut⟩

private def s2Step94EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩

private def s2Step94EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797],770⟩

private def s2Step94EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 799],769⟩

private def s2Step94EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780],771⟩

private def s2Step94FrontPair : WindowBank := ⟨s2Step94EntryFOut,s2Step94EntryGOut,s2Step94EntryFvOut,s2Step94EntryGvOut⟩

private def s2Step94FrontSigmaArena : Arena := ⟨s2Step94EntryGvAfter.live∪{793},Finset.union_subset s2Step94EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step94HeadFFresh : List Wire := [781]

private def s2Step94HeadFvFresh : List Wire := [844]

private def s2Step94HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94HeadGFresh : List Wire := [786]

private def s2Step94HeadGvFresh : List Wire := [779]

private def s2Step94FrontPlan : HmrSourceFront := ⟨s2Step94EntryGvAfter,s2Step94FrontPair,(growRow 768 s2Step94EntryFFresh ++ (growRow 769 s2Step94EntryGFresh ++ (growRow 770 s2Step94EntryFvFresh ++ (growRow 771 s2Step94EntryGvFresh ++ [])))),s2Step94FrontSigmaArena,[793],s2Step94HeadGBefore,[796],
  s2Step94HeadFvAfter,s2Step94FrontHead,(growRow 769 s2Step94HeadGFresh ++ (growRow 768 s2Step94HeadFFresh ++ (growRow 771 s2Step94HeadGvFresh ++ (growRow 770 s2Step94HeadFvFresh ++ [])))),s2Step94F4Plan,s2Step94CounterDuring,s2Step94CounterWork,s2Step94ExitGvAfter,s2Step94FrontOut,(shrinkRow 769 s2Step94ExitGExtra ++ (shrinkRow 768 s2Step94ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step94ExitGvExtra ++ []))))⟩

private def s2Step94CompletePlan : HmrEarlyStepPlan := ⟨s2Step94FrontPlan,s2Step94EarlyControlArena,s2Step94EarlyControlPlan,s2Step94CompleteMoves⟩

private theorem s2Step94Complete_apart : List.Disjoint (s2Step94CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [793, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] := by
  have nd : ((s2Step94CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[793, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step94Complete_owned : (s2Step94CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step94EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step94EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private def s2Step94CompleteMoveArena : Arena := ⟨s2Step94ExitGvAfter.live∪{733},Finset.union_subset s2Step94ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step94Complete_repack : s2Step94ExitGvAfter.checkRepack s2Step94CompleteMoves=some s2Step94EarlyControlArena := by
  have owned : 794∈s2Step94ExitGvAfter.live := by norm_num [s2Step94ExitGvAfter,arenaWires]
  have reserve : s2Step94ExitGvAfter.reserve {733}=some s2Step94CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step94ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step94CompleteMoveArena.retireSet {794}=s2Step94EarlyControlArena := by
    unfold Arena.retireSet s2Step94EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step94CompleteMoveArena,s2Step94ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step94CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step94CompleteMoveArena.retireSet {794}).checkRepack []=some s2Step94EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step94EarlyControl_branchOwned : ([796] : List Wire).toFinset⊆s2Step94EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step94EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94EarlyControl_branch : compileHmrBranchRetirement s2Step94EarlyControlSigmaArena 796=some s2Step94EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step94EarlyControl_branchOwned
  · ext q
    simp [s2Step94EarlyControlOutputArena,s2Step94EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step94EarlyControl_classEqualityBorrow : s2Step94EarlyControlPositiveArena.checkBorrow (([793, 785] : List Wire).length-1) s2Step94EarlyControlLog.classWork=some s2Step94EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step94EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step94EarlyControlPositiveArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step94EarlyControlEqualityArena,s2Step94EarlyControlPositiveArena,s2Step94EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step94EarlyControl_classEqualityOwned : ([793, 785] : List Wire).toFinset⊆s2Step94EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step94EarlyControlPositiveArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94EarlyControl_classEquality : compileHmrEqualityLog s2Step94EarlyControlPositiveArena [793, 785] 0 s2Step94EarlyControlLog.classWork=some (s2Step94EarlyControlEqualityArena,s2Step94EarlyControlLog.classWork,s2Step94EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step94EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step94EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step94EarlyControl_classOwned : ([777, 786, 793] : List Wire).toFinset⊆s2Step94EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step94EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94EarlyControl_positiveBorrow : s2Step94EarlyControlZeroArena.checkBorrow (1) s2Step94EarlyControlLog.positiveWork=some s2Step94EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step94EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step94EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step94EarlyControlPositiveArena,s2Step94EarlyControlZeroArena,s2Step94EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step94EarlyControl_class : compileHmrSourceClassLog s2Step94EarlyControlZeroArena false 777 s2Step94EarlyControlZeroPlan.top 0 793 s2Step94EarlyControlLog.positiveWork s2Step94EarlyControlLog.classWork=some s2Step94EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step94EarlyControlClassPlan s2Step94EarlyControlZeroArena false 777 s2Step94EarlyControlZeroPlan.top 0 793
  constructor
  · decide +kernel
  · exact s2Step94EarlyControl_classOwned
  · exact s2Step94EarlyControl_positiveBorrow
  · exact s2Step94EarlyControl_classEquality

private theorem s2Step94EarlyControl_entryRecordOwned : ([796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step94EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step94EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94EarlyControl_entrySigmaOwned : ([793, 254] : List Wire).toFinset⊆s2Step94EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step94EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94EarlyControl_fitBorrow : s2Step94EarlyControlFlagArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step94EarlyControlLog.recordFresh=some s2Step94EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step94EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step94EarlyControlFlagArena (fun q => (0≤q ∧ q<878)) rfl
      decide +kernel
    · ext q
      simp [s2Step94EarlyControlFittedArena,s2Step94EarlyControlFlagArena,s2Step94EarlyControlLog,arenaWires]

private theorem s2Step94EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step94EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step94EarlyControlFlagArena (fun q => (0≤q ∧ q<878)) rfl
  decide +kernel

private theorem s2Step94EarlyControl_fit : compileHmrRecordGrowLog s2Step94EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step94EarlyControlLog.recordFresh=some s2Step94EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step94EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step94EarlyControl_fitBorrow

private theorem s2Step94EarlyControl_flagsBorrow : s2Step94EarlyControlEqualityArena.checkBorrow (6) s2Step94EarlyControlLog.flagWork=some s2Step94EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step94EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step94EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step94EarlyControlFlagArena,s2Step94EarlyControlEqualityArena,s2Step94EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step94EarlyControl_flagsOwned : ([839, 253, 252, 251] : List Wire).toFinset⊆s2Step94EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step94EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94EarlyControl_flags : compileHmrFlagsLog s2Step94EarlyControlClassPlan.equalityArena s2Step94EarlyControlClassPlan.equality.top 253 252 251 s2Step94EarlyControlLog.flagWork=some s2Step94EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step94EarlyControl_flagsOwned⟩
  · exact s2Step94EarlyControl_flagsBorrow

private theorem s2Step94EarlyControl_historyBorrow : s2Step94EarlyControlArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step94EarlyControlLog.recordFresh=some s2Step94EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step94EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step94EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step94EarlyControlHistoryArena,s2Step94EarlyControlArena,s2Step94EarlyControlLog,arenaWires]

private theorem s2Step94EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step94EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step94EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94EarlyControl_history : compileHmrRecordGrowLog s2Step94EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step94EarlyControlLog.recordFresh=some s2Step94EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step94EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step94EarlyControl_historyBorrow

private theorem s2Step94EarlyControl_sigmaOwned : ([254, 793] : List Wire).toFinset⊆s2Step94EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step94EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94EarlyControl_sigmaReleaseOwned : ([793] : List Wire).toFinset⊆s2Step94EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step94EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94EarlyControl_sigmaRelease : s2Step94EarlyControlHistoryArena.release {793} (fun _ => false)=some s2Step94EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step94EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step94EarlyControlSigmaArena,s2Step94EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step94EarlyControl_sigma : compileHmrSigmaDropLog s2Step94EarlyControlHistoryArena false 0 0 254 793 []=some s2Step94EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step94EarlyControl_sigmaOwned⟩
  · exact s2Step94EarlyControl_sigmaRelease

private theorem s2Step94EarlyControl_zeroBorrow : s2Step94EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step94EarlyControlLog.zeroWork=some s2Step94EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step94EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step94EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step94EarlyControlZeroArena,s2Step94EarlyControlArena,s2Step94EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step94EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step94EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step94EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94EarlyControl_zero : compileHmrEqualityLog s2Step94EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step94EarlyControlLog.zeroWork=some (s2Step94EarlyControlZeroArena,s2Step94EarlyControlLog.zeroWork,s2Step94EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step94EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step94EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step94EarlyControl_logged : s2Step94EarlyControlPlan.Logged s2Step94EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 793 254 253 252 251 796 34 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step94EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step94EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step94EarlyControl_zero
  · exact s2Step94EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step94EarlyControl_flags
  · exact s2Step94EarlyControl_fit
  · exact s2Step94EarlyControl_history
  · exact s2Step94EarlyControl_sigma
  · exact s2Step94EarlyControl_branch

private theorem s2Step94EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step94EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 793 254 253 252 251 796 34 s2Step94EarlyControlLog=some s2Step94EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step94EarlyControlPlan s2Step94EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 793 254 253 252 251 796 34 s2Step94EarlyControl_logged

private def s2Step94EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩

private def s2Step94EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797],770⟩

private def s2Step94EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220],769⟩

private def s2Step94EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780],771⟩

private def s2Step94FrontBank : WindowBank := ⟨s2Step94EntryFRow,s2Step94EntryGRow,s2Step94EntryFvRow,s2Step94EntryGvRow⟩

private def s2Step94Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 781, 768]

private def s2Step94Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 799, 786, 769]

private def s2Step94Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 770]

private def s2Step94Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 779, 771]

private theorem s2Step94Counter_apart : Disjoint s2Step94HeadFvAfter.live s2Step94CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step94HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94Counter_borrowed : s2Step94HeadFvAfter.checkBorrow 4 s2Step94CounterWork=some s2Step94CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step94HeadFvAfter s2Step94CounterDuring s2Step94CounterWork.toFinset s2Step94Counter_bounded s2Step94Counter_apart rfl

private theorem s2Step94Counter_owned : (793::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step94HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step94HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94Counter_checked : compileHmrCounterStepLog s2Step94HeadFvAfter true 793 [772, 773, 774, 775, 776, 777] s2Step94CounterWork=some s2Step94CounterDuring := by
  have owned : ∀q∈793::[772, 773, 774, 775, 776, 777],q∈s2Step94HeadFvAfter.live := fun q hq => s2Step94Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step94Counter_borrowed

private def s2Step94EntryFAfter : Arena := s2Step94EntryFBefore

private theorem s2Step94EntryBank_incomingDistinct : ([s2Step94EntryFRow,s2Step94EntryGRow,s2Step94EntryFvRow,s2Step94EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94EntryF_Incoming : rowsOwned s2Step94EntryFBefore [s2Step94EntryFRow,s2Step94EntryGRow,s2Step94EntryFvRow,s2Step94EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step94EntryFRow,s2Step94EntryGRow,s2Step94EntryFvRow,s2Step94EntryGvRow] 0 s2Step94EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step94EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step94EntryBank_outgoingOwned : rowsOwned s2Step94EntryGvAfter [s2Step94EntryFOut,s2Step94EntryGOut,s2Step94EntryFvOut,s2Step94EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step94EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step94EntryF_Outgoing : rowsOwned s2Step94EntryGvAfter [s2Step94EntryFOut,s2Step94EntryGOut,s2Step94EntryFvOut,s2Step94EntryGvOut] :=
  hmrRows_owned_drop s2Step94EntryGvAfter [s2Step94EntryFOut,s2Step94EntryGOut,s2Step94EntryFvOut,s2Step94EntryGvOut] 0 s2Step94EntryBank_outgoingOwned

private theorem s2Step94EntryF_distinct : (s2Step94EntryFRow.sign::s2Step94EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94EntryF_owned : (s2Step94EntryFRow.sign::s2Step94EntryFRow.payload).toFinset⊆s2Step94EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step94EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94EntryF_reserved : s2Step94EntryFBefore.reserve s2Step94EntryFFresh.toFinset=some s2Step94EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step94EntryFFresh,arenaWires]
  · norm_num [s2Step94EntryFBefore,s2Step94EntryFFresh,arenaWires]
  · simp only [s2Step94EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step94EntryF_checked : planRowResizeLog s2Step94EntryFBefore s2Step94EntryFRow 222 s2Step94EntryFFresh=
    some (s2Step94EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩,growRow 768 s2Step94EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step94EntryFBefore s2Step94EntryFAfter s2Step94EntryFRow 222 s2Step94EntryFFresh
    s2Step94EntryF_distinct s2Step94EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step94EntryF_reserved
  have rowEq : WindowRow.mk (s2Step94EntryFRow.payload++s2Step94EntryFFresh) s2Step94EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step94EntryFvAfter : Arena := s2Step94EntryGAfter

private def s2Step94EntryFvBefore : Arena := s2Step94EntryGAfter

private theorem s2Step94EntryFv_Incoming : rowsOwned s2Step94EntryFvBefore [s2Step94EntryFvRow,s2Step94EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step94EntryFRow,s2Step94EntryGRow,s2Step94EntryFvRow,s2Step94EntryGvRow] 2 s2Step94EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step94EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step94EntryFv_Outgoing : rowsOwned s2Step94EntryGvAfter [s2Step94EntryFvOut,s2Step94EntryGvOut] :=
  hmrRows_owned_drop s2Step94EntryGvAfter [s2Step94EntryFOut,s2Step94EntryGOut,s2Step94EntryFvOut,s2Step94EntryGvOut] 2 s2Step94EntryBank_outgoingOwned

private theorem s2Step94EntryFv_distinct : (s2Step94EntryFvRow.sign::s2Step94EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94EntryFv_owned : (s2Step94EntryFvRow.sign::s2Step94EntryFvRow.payload).toFinset⊆s2Step94EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step94EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94EntryFv_reserved : s2Step94EntryFvBefore.reserve s2Step94EntryFvFresh.toFinset=some s2Step94EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step94EntryFvFresh,arenaWires]
  · norm_num [s2Step94EntryFvBefore,s2Step94EntryGAfter,s2Step94EntryFvFresh,arenaWires]
  · simp only [s2Step94EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step94EntryFv_checked : planRowResizeLog s2Step94EntryFvBefore s2Step94EntryFvRow 60 s2Step94EntryFvFresh=
    some (s2Step94EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797],770⟩,growRow 770 s2Step94EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step94EntryFvBefore s2Step94EntryFvAfter s2Step94EntryFvRow 60 s2Step94EntryFvFresh
    s2Step94EntryFv_distinct s2Step94EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step94EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step94EntryFvRow.payload++s2Step94EntryFvFresh) s2Step94EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step94EntryGBefore : Arena := s2Step94EntryFBefore

private theorem s2Step94EntryG_Incoming : rowsOwned s2Step94EntryGBefore [s2Step94EntryGRow,s2Step94EntryFvRow,s2Step94EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step94EntryFRow,s2Step94EntryGRow,s2Step94EntryFvRow,s2Step94EntryGvRow] 1 s2Step94EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step94EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step94EntryG_Outgoing : rowsOwned s2Step94EntryGvAfter [s2Step94EntryGOut,s2Step94EntryFvOut,s2Step94EntryGvOut] :=
  hmrRows_owned_drop s2Step94EntryGvAfter [s2Step94EntryFOut,s2Step94EntryGOut,s2Step94EntryFvOut,s2Step94EntryGvOut] 1 s2Step94EntryBank_outgoingOwned

private theorem s2Step94EntryG_distinct : (s2Step94EntryGRow.sign::s2Step94EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94EntryG_owned : (s2Step94EntryGRow.sign::s2Step94EntryGRow.payload).toFinset⊆s2Step94EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step94EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94EntryG_reserved : s2Step94EntryGBefore.reserve s2Step94EntryGFresh.toFinset=some s2Step94EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step94EntryGFresh,arenaWires]
  · norm_num [s2Step94EntryGBefore,s2Step94EntryFBefore,s2Step94EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step94EntryGAfter,s2Step94EntryGBefore,s2Step94EntryFBefore,s2Step94EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step94EntryG_checked : planRowResizeLog s2Step94EntryGBefore s2Step94EntryGRow 222 s2Step94EntryGFresh=
    some (s2Step94EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 799],769⟩,growRow 769 s2Step94EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step94EntryGBefore s2Step94EntryGAfter s2Step94EntryGRow 222 s2Step94EntryGFresh
    s2Step94EntryG_distinct s2Step94EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step94EntryG_reserved
  have rowEq : WindowRow.mk (s2Step94EntryGRow.payload++s2Step94EntryGFresh) s2Step94EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 799],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step94EntryGvBefore : Arena := s2Step94EntryGAfter

private theorem s2Step94EntryGv_Incoming : rowsOwned s2Step94EntryGvBefore [s2Step94EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step94EntryFRow,s2Step94EntryGRow,s2Step94EntryFvRow,s2Step94EntryGvRow] 3 s2Step94EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step94EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step94EntryGv_Outgoing : rowsOwned s2Step94EntryGvAfter [s2Step94EntryGvOut] :=
  hmrRows_owned_drop s2Step94EntryGvAfter [s2Step94EntryFOut,s2Step94EntryGOut,s2Step94EntryFvOut,s2Step94EntryGvOut] 3 s2Step94EntryBank_outgoingOwned

private theorem s2Step94EntryGv_distinct : (s2Step94EntryGvRow.sign::s2Step94EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94EntryGv_owned : (s2Step94EntryGvRow.sign::s2Step94EntryGvRow.payload).toFinset⊆s2Step94EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step94EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94EntryGv_reserved : s2Step94EntryGvBefore.reserve s2Step94EntryGvFresh.toFinset=some s2Step94EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step94EntryGvFresh,arenaWires]
  · norm_num [s2Step94EntryGvBefore,s2Step94EntryGAfter,s2Step94EntryGvFresh,arenaWires]
  · simp only [s2Step94EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step94EntryGv_checked : planRowResizeLog s2Step94EntryGvBefore s2Step94EntryGvRow 60 s2Step94EntryGvFresh=
    some (s2Step94EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780],771⟩,growRow 771 s2Step94EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step94EntryGvBefore s2Step94EntryGvAfter s2Step94EntryGvRow 60 s2Step94EntryGvFresh
    s2Step94EntryGv_distinct s2Step94EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step94EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step94EntryGvRow.payload++s2Step94EntryGvFresh) s2Step94EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step94EntryBank_rows : planWindowRowsLog s2Step94EntryFBefore [(s2Step94EntryFRow,222),(s2Step94EntryGRow,222),(s2Step94EntryFvRow,60),(s2Step94EntryGvRow,60)] [s2Step94EntryFFresh,s2Step94EntryGFresh,s2Step94EntryFvFresh,s2Step94EntryGvFresh]=
    some (s2Step94EntryGvAfter,[s2Step94EntryFOut,s2Step94EntryGOut,s2Step94EntryFvOut,s2Step94EntryGvOut],(growRow 768 s2Step94EntryFFresh ++ (growRow 769 s2Step94EntryGFresh ++ (growRow 770 s2Step94EntryFvFresh ++ (growRow 771 s2Step94EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step94EntryGvAfter [] []=some (s2Step94EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step94EntryGvBefore s2Step94EntryGvAfter s2Step94EntryGvAfter
    s2Step94EntryGvRow s2Step94EntryGvOut 60 s2Step94EntryGvFresh [] [] []
    (growRow 771 s2Step94EntryGvFresh) ([]) s2Step94EntryGv_Incoming s2Step94EntryGv_checked h4 s2Step94EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step94EntryFvBefore s2Step94EntryFvAfter s2Step94EntryGvAfter
    s2Step94EntryFvRow s2Step94EntryFvOut 60 s2Step94EntryFvFresh [(s2Step94EntryGvRow,60)] [s2Step94EntryGvFresh] [s2Step94EntryGvOut]
    (growRow 770 s2Step94EntryFvFresh) ((growRow 771 s2Step94EntryGvFresh ++ [])) s2Step94EntryFv_Incoming s2Step94EntryFv_checked h3 s2Step94EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step94EntryGBefore s2Step94EntryGAfter s2Step94EntryGvAfter
    s2Step94EntryGRow s2Step94EntryGOut 222 s2Step94EntryGFresh [(s2Step94EntryFvRow,60),(s2Step94EntryGvRow,60)] [s2Step94EntryFvFresh,s2Step94EntryGvFresh] [s2Step94EntryFvOut,s2Step94EntryGvOut]
    (growRow 769 s2Step94EntryGFresh) ((growRow 770 s2Step94EntryFvFresh ++ (growRow 771 s2Step94EntryGvFresh ++ []))) s2Step94EntryG_Incoming s2Step94EntryG_checked h2 s2Step94EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step94EntryFBefore s2Step94EntryFAfter s2Step94EntryGvAfter
    s2Step94EntryFRow s2Step94EntryFOut 222 s2Step94EntryFFresh [(s2Step94EntryGRow,222),(s2Step94EntryFvRow,60),(s2Step94EntryGvRow,60)] [s2Step94EntryGFresh,s2Step94EntryFvFresh,s2Step94EntryGvFresh] [s2Step94EntryGOut,s2Step94EntryFvOut,s2Step94EntryGvOut]
    (growRow 768 s2Step94EntryFFresh) ((growRow 769 s2Step94EntryGFresh ++ (growRow 770 s2Step94EntryFvFresh ++ (growRow 771 s2Step94EntryGvFresh ++ [])))) s2Step94EntryF_Incoming s2Step94EntryF_checked h1 s2Step94EntryF_Outgoing
  exact h0

private theorem s2Step94EntryBank_checked : compileHmrBankResizeLog .entry s2Step94EntryFBefore ⟨s2Step94EntryFRow,s2Step94EntryGRow,s2Step94EntryFvRow,s2Step94EntryGvRow⟩ ⟨222,222,60,60⟩ [s2Step94EntryFFresh,s2Step94EntryGFresh,s2Step94EntryFvFresh,s2Step94EntryGvFresh]=
    some (s2Step94EntryGvAfter,⟨s2Step94EntryFOut,s2Step94EntryGOut,s2Step94EntryFvOut,s2Step94EntryGvOut⟩,(growRow 768 s2Step94EntryFFresh ++ (growRow 769 s2Step94EntryGFresh ++ (growRow 770 s2Step94EntryFvFresh ++ (growRow 771 s2Step94EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step94EntryBank_rows]
  rfl

private def s2Step94ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<733) ∨ (734≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94ExitFBefore : Arena := s2Step94ExitGAfter

private def s2Step94ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 781],768⟩

private def s2Step94ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844],770⟩

private def s2Step94ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 799, 786],769⟩

private def s2Step94ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 779],771⟩

private theorem s2Step94ExitBank_incomingDistinct : ([s2Step94ExitGRow,s2Step94ExitFRow,s2Step94ExitFvRow,s2Step94ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94ExitF_Incoming : rowsOwned s2Step94ExitFBefore [s2Step94ExitFRow,s2Step94ExitFvRow,s2Step94ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step94ExitGRow,s2Step94ExitFRow,s2Step94ExitFvRow,s2Step94ExitGvRow] 1 s2Step94ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step94ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step94ExitBank_outgoingOwned : rowsOwned s2Step94ExitGvAfter [s2Step94ExitGOut,s2Step94ExitFOut,s2Step94ExitFvOut,s2Step94ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step94ExitGvAfter (fun q => (0≤q ∧ q<733) ∨ (734≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step94ExitF_Outgoing : rowsOwned s2Step94ExitGvAfter [s2Step94ExitFOut,s2Step94ExitFvOut,s2Step94ExitGvOut] :=
  hmrRows_owned_drop s2Step94ExitGvAfter [s2Step94ExitGOut,s2Step94ExitFOut,s2Step94ExitFvOut,s2Step94ExitGvOut] 1 s2Step94ExitBank_outgoingOwned

private theorem s2Step94ExitF_distinct : (s2Step94ExitFRow.sign::s2Step94ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94ExitF_owned : (s2Step94ExitFRow.sign::s2Step94ExitFRow.payload).toFinset⊆s2Step94ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step94ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94ExitF_retired : s2Step94ExitFBefore.retireSet s2Step94ExitFExtra.toFinset=s2Step94ExitFAfter := by
  unfold Arena.retireSet s2Step94ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step94ExitFBefore,s2Step94ExitGAfter,s2Step94ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step94ExitF_checked : planRowResizeLog s2Step94ExitFBefore s2Step94ExitFRow 221 []=
    some (s2Step94ExitFAfter,s2Step94ExitFOut,shrinkRow 768 s2Step94ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step94ExitFBefore s2Step94ExitFRow 221 s2Step94ExitF_distinct s2Step94ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step94ExitFRow.payload.take 221) s2Step94ExitFRow.sign=s2Step94ExitFOut := by decide +kernel
  have hi : s2Step94ExitFRow.payload.drop 221=s2Step94ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step94ExitF_retired] at result
  exact result

private def s2Step94ExitFvAfter : Arena := s2Step94ExitFAfter

private def s2Step94ExitFvBefore : Arena := s2Step94ExitFAfter

private theorem s2Step94ExitFv_Incoming : rowsOwned s2Step94ExitFvBefore [s2Step94ExitFvRow,s2Step94ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step94ExitGRow,s2Step94ExitFRow,s2Step94ExitFvRow,s2Step94ExitGvRow] 2 s2Step94ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step94ExitFvBefore (fun q => (0≤q ∧ q<733) ∨ (734≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step94ExitFv_Outgoing : rowsOwned s2Step94ExitGvAfter [s2Step94ExitFvOut,s2Step94ExitGvOut] :=
  hmrRows_owned_drop s2Step94ExitGvAfter [s2Step94ExitGOut,s2Step94ExitFOut,s2Step94ExitFvOut,s2Step94ExitGvOut] 2 s2Step94ExitBank_outgoingOwned

private theorem s2Step94ExitFv_distinct : (s2Step94ExitFvRow.sign::s2Step94ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94ExitFv_owned : (s2Step94ExitFvRow.sign::s2Step94ExitFvRow.payload).toFinset⊆s2Step94ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step94ExitFvBefore (fun q => (0≤q ∧ q<733) ∨ (734≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94ExitFv_reserved : s2Step94ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step94ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step94ExitFv_checked : planRowResizeLog s2Step94ExitFvBefore s2Step94ExitFvRow 61 []=
    some (s2Step94ExitFvAfter,s2Step94ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step94ExitFvBefore s2Step94ExitFvAfter s2Step94ExitFvRow 61 []
    s2Step94ExitFv_distinct s2Step94ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step94ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step94ExitFvRow.payload++[]) s2Step94ExitFvRow.sign=s2Step94ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step94ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private theorem s2Step94ExitG_Incoming : rowsOwned s2Step94ExitGBefore [s2Step94ExitGRow,s2Step94ExitFRow,s2Step94ExitFvRow,s2Step94ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step94ExitGRow,s2Step94ExitFRow,s2Step94ExitFvRow,s2Step94ExitGvRow] 0 s2Step94ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step94ExitGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step94ExitG_Outgoing : rowsOwned s2Step94ExitGvAfter [s2Step94ExitGOut,s2Step94ExitFOut,s2Step94ExitFvOut,s2Step94ExitGvOut] :=
  hmrRows_owned_drop s2Step94ExitGvAfter [s2Step94ExitGOut,s2Step94ExitFOut,s2Step94ExitFvOut,s2Step94ExitGvOut] 0 s2Step94ExitBank_outgoingOwned

private theorem s2Step94ExitG_distinct : (s2Step94ExitGRow.sign::s2Step94ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94ExitG_owned : (s2Step94ExitGRow.sign::s2Step94ExitGRow.payload).toFinset⊆s2Step94ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step94ExitGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94ExitG_retired : s2Step94ExitGBefore.retireSet s2Step94ExitGExtra.toFinset=s2Step94ExitGAfter := by
  unfold Arena.retireSet s2Step94ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step94ExitGBefore,s2Step94ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step94ExitG_checked : planRowResizeLog s2Step94ExitGBefore s2Step94ExitGRow 221 []=
    some (s2Step94ExitGAfter,s2Step94ExitGOut,shrinkRow 769 s2Step94ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step94ExitGBefore s2Step94ExitGRow 221 s2Step94ExitG_distinct s2Step94ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step94ExitGRow.payload.take 221) s2Step94ExitGRow.sign=s2Step94ExitGOut := by decide +kernel
  have hi : s2Step94ExitGRow.payload.drop 221=s2Step94ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step94ExitG_retired] at result
  exact result

private def s2Step94ExitGvBefore : Arena := s2Step94ExitFAfter

private theorem s2Step94ExitGv_Incoming : rowsOwned s2Step94ExitGvBefore [s2Step94ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step94ExitGRow,s2Step94ExitFRow,s2Step94ExitFvRow,s2Step94ExitGvRow] 3 s2Step94ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step94ExitGvBefore (fun q => (0≤q ∧ q<733) ∨ (734≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step94ExitGv_Outgoing : rowsOwned s2Step94ExitGvAfter [s2Step94ExitGvOut] :=
  hmrRows_owned_drop s2Step94ExitGvAfter [s2Step94ExitGOut,s2Step94ExitFOut,s2Step94ExitFvOut,s2Step94ExitGvOut] 3 s2Step94ExitBank_outgoingOwned

private theorem s2Step94ExitGv_distinct : (s2Step94ExitGvRow.sign::s2Step94ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94ExitGv_owned : (s2Step94ExitGvRow.sign::s2Step94ExitGvRow.payload).toFinset⊆s2Step94ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step94ExitGvBefore (fun q => (0≤q ∧ q<733) ∨ (734≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94ExitGv_retired : s2Step94ExitGvBefore.retireSet s2Step94ExitGvExtra.toFinset=s2Step94ExitGvAfter := by
  unfold Arena.retireSet s2Step94ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step94ExitGvBefore,s2Step94ExitFAfter,s2Step94ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step94ExitGv_checked : planRowResizeLog s2Step94ExitGvBefore s2Step94ExitGvRow 60 []=
    some (s2Step94ExitGvAfter,s2Step94ExitGvOut,shrinkRow 771 s2Step94ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step94ExitGvBefore s2Step94ExitGvRow 60 s2Step94ExitGv_distinct s2Step94ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step94ExitGvRow.payload.take 60) s2Step94ExitGvRow.sign=s2Step94ExitGvOut := by decide +kernel
  have hi : s2Step94ExitGvRow.payload.drop 60=s2Step94ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step94ExitGv_retired] at result
  exact result

private theorem s2Step94ExitBank_rows : planWindowRowsLog s2Step94ExitGBefore [(s2Step94ExitGRow,221),(s2Step94ExitFRow,221),(s2Step94ExitFvRow,61),(s2Step94ExitGvRow,60)] [[],[],[],[]]=
    some (s2Step94ExitGvAfter,[s2Step94ExitGOut,s2Step94ExitFOut,s2Step94ExitFvOut,s2Step94ExitGvOut],(shrinkRow 769 s2Step94ExitGExtra ++ (shrinkRow 768 s2Step94ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step94ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step94ExitGvAfter [] []=some (s2Step94ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step94ExitGvBefore s2Step94ExitGvAfter s2Step94ExitGvAfter
    s2Step94ExitGvRow s2Step94ExitGvOut 60 [] [] [] []
    (shrinkRow 771 s2Step94ExitGvExtra) ([]) s2Step94ExitGv_Incoming s2Step94ExitGv_checked h4 s2Step94ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step94ExitFvBefore s2Step94ExitFvAfter s2Step94ExitGvAfter
    s2Step94ExitFvRow s2Step94ExitFvOut 61 [] [(s2Step94ExitGvRow,60)] [[]] [s2Step94ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step94ExitGvExtra ++ [])) s2Step94ExitFv_Incoming s2Step94ExitFv_checked h3 s2Step94ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step94ExitFBefore s2Step94ExitFAfter s2Step94ExitGvAfter
    s2Step94ExitFRow s2Step94ExitFOut 221 [] [(s2Step94ExitFvRow,61),(s2Step94ExitGvRow,60)] [[],[]] [s2Step94ExitFvOut,s2Step94ExitGvOut]
    (shrinkRow 768 s2Step94ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step94ExitGvExtra ++ []))) s2Step94ExitF_Incoming s2Step94ExitF_checked h2 s2Step94ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step94ExitGBefore s2Step94ExitGAfter s2Step94ExitGvAfter
    s2Step94ExitGRow s2Step94ExitGOut 221 [] [(s2Step94ExitFRow,221),(s2Step94ExitFvRow,61),(s2Step94ExitGvRow,60)] [[],[],[]] [s2Step94ExitFOut,s2Step94ExitFvOut,s2Step94ExitGvOut]
    (shrinkRow 769 s2Step94ExitGExtra) ((shrinkRow 768 s2Step94ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step94ExitGvExtra ++ [])))) s2Step94ExitG_Incoming s2Step94ExitG_checked h1 s2Step94ExitG_Outgoing
  exact h0

private theorem s2Step94ExitBank_checked : compileHmrBankResizeLog .exit s2Step94ExitGBefore ⟨s2Step94ExitFRow,s2Step94ExitGRow,s2Step94ExitFvRow,s2Step94ExitGvRow⟩ ⟨221,221,61,60⟩ [[],[],[],[]]=
    some (s2Step94ExitGvAfter,⟨s2Step94ExitFOut,s2Step94ExitGOut,s2Step94ExitFvOut,s2Step94ExitGvOut⟩,(shrinkRow 769 s2Step94ExitGExtra ++ (shrinkRow 768 s2Step94ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step94ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step94ExitBank_rows]
  rfl

private theorem s2Step94Add0_apart : Disjoint s2Step94Add0Arena.live s2Step94Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step94Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94Add0_card : s2Step94Add0Arena.live.card=872 := by
  decide +kernel

private theorem s2Step94Add0_borrowed : s2Step94Add0Arena.checkBorrow (hmrHybridCount s2Step94Add0Arena s2Step94Add0B.length) s2Step94Add0Work=some s2Step94Add0During := by
  have len : s2Step94Add0Work.length=hmrHybridCount s2Step94Add0Arena s2Step94Add0B.length := by
    rw [hmrHybridCount,s2Step94Add0_card]
    decide +kernel
  have nd : s2Step94Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step94Add0Arena s2Step94Add0During s2Step94Add0Work.toFinset s2Step94Add0_bounded s2Step94Add0_apart rfl

private theorem s2Step94Add0_distinct : (785::796::839::(s2Step94Add0A++s2Step94Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94Add0_owned : (785::796::839::(s2Step94Add0A++s2Step94Add0B)).toFinset⊆s2Step94Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step94Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94Add0_checked : compileHmrHybridCinLog s2Step94Add0Arena 796 785 839 s2Step94Add0A s2Step94Add0B s2Step94Add0Work=some s2Step94Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step94Add0Arena s2Step94Add0During 796 785 839 s2Step94Add0A s2Step94Add0B s2Step94Add0Work
    (by decide +kernel) (by decide +kernel) s2Step94Add0_distinct
    (fun q hq => s2Step94Add0_owned (List.mem_toFinset.mpr hq)) s2Step94Add0_borrowed

private theorem s2Step94Add1_apart : Disjoint s2Step94Add1Arena.live s2Step94Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step94Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94Add1_card : s2Step94Add1Arena.live.card=872 := by
  decide +kernel

private theorem s2Step94Add1_borrowed : s2Step94Add1Arena.checkBorrow (hmrHybridCount s2Step94Add1Arena s2Step94Add1B.length) s2Step94Add1Work=some s2Step94Add1During := by
  have len : s2Step94Add1Work.length=hmrHybridCount s2Step94Add1Arena s2Step94Add1B.length := by
    rw [hmrHybridCount,s2Step94Add1_card]
    decide +kernel
  have nd : s2Step94Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step94Add1Arena s2Step94Add1During s2Step94Add1Work.toFinset s2Step94Add1_bounded s2Step94Add1_apart rfl

private theorem s2Step94Add1_distinct : (785::796::839::(s2Step94Add1A++s2Step94Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94Add1_owned : (785::796::839::(s2Step94Add1A++s2Step94Add1B)).toFinset⊆s2Step94Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step94Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94Add1_checked : compileHmrHybridCinLog s2Step94Add1Arena 796 785 839 s2Step94Add1A s2Step94Add1B s2Step94Add1Work=some s2Step94Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step94Add1Arena s2Step94Add1During 796 785 839 s2Step94Add1A s2Step94Add1B s2Step94Add1Work
    (by decide +kernel) (by decide +kernel) s2Step94Add1_distinct
    (fun q hq => s2Step94Add1_owned (List.mem_toFinset.mpr hq)) s2Step94Add1_borrowed

private theorem s2Step94F4_apart : Disjoint (s2Step94Add0A++s2Step94Add0B).toFinset (s2Step94Add1A++s2Step94Add1B).toFinset := by
  have nd : ((s2Step94Add0A++s2Step94Add0B)++(s2Step94Add1A++s2Step94Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step94F4_carry : s2Step94F4FlagArena.checkBorrow 1 [839]=some s2Step94Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step94F4FlagArena,s2Step94HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step94F4FlagArena,s2Step94HeadFvAfter,s2Step94Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step94F4_distinct : (793::796::785::839::((s2Step94Add0A++s2Step94Add1A)++(s2Step94Add0B++s2Step94Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94F4_flag : s2Step94HeadFvAfter.checkBorrow 1 [785]=some s2Step94F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step94HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step94F4_owned : (793::796::((s2Step94Add0A++s2Step94Add1A)++(s2Step94Add0B++s2Step94Add1B))).toFinset⊆s2Step94HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step94HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94F4_checked : compileHmrHybridF4Log s2Step94HeadFvAfter 793 796 s2Step94Add0A s2Step94Add0B s2Step94Add1A s2Step94Add1B [785] [839] s2Step94Add0Work s2Step94Add1Work=some s2Step94F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step94HeadFvAfter s2Step94F4FlagArena s2Step94Add0Arena s2Step94Add0During s2Step94Add1During 793 796
    s2Step94Add0A s2Step94Add0B s2Step94Add1A s2Step94Add1B [785] [839] s2Step94Add0Work s2Step94Add1Work
    (fun q hq => s2Step94F4_owned (List.mem_toFinset.mpr hq)) s2Step94F4_flag s2Step94F4_carry
    s2Step94F4_distinct s2Step94F4_apart s2Step94Add0_checked s2Step94Add1_checked

private theorem s2Step94Front_branch : s2Step94FrontSigmaArena.checkBorrow 1 [796]=some s2Step94HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step94FrontSigmaArena,s2Step94EntryGvAfter,s2Step94EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step94FrontSigmaArena,s2Step94EntryGvAfter,s2Step94EntryGAfter,s2Step94HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step94Front_entry : HmrFrontEntryValid s2Step94EntryFBefore s2Step94FrontBank 222 60 ⟨221,221,61,60⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step94FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step94EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step94EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<796) ∨ (797≤q ∧ q<799) ∨ (800≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step94FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step94Front_sigma : s2Step94EntryGvAfter.checkBorrow 1 [793]=some s2Step94FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step94EntryGvAfter,s2Step94EntryGAfter,arenaWires]
  · rfl

private def s2Step94HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94HeadFBefore : Arena := s2Step94HeadGAfter

private def s2Step94HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733],768⟩

private def s2Step94HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797],770⟩

private def s2Step94HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 799],769⟩

private def s2Step94HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780],771⟩

private theorem s2Step94HeadBank_incomingDistinct : ([s2Step94HeadGRow,s2Step94HeadFRow,s2Step94HeadGvRow,s2Step94HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94HeadF_Incoming : rowsOwned s2Step94HeadFBefore [s2Step94HeadFRow,s2Step94HeadGvRow,s2Step94HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step94HeadGRow,s2Step94HeadFRow,s2Step94HeadGvRow,s2Step94HeadFvRow] 1 s2Step94HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step94HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step94HeadBank_outgoingOwned : rowsOwned s2Step94HeadFvAfter [s2Step94HeadGOut,s2Step94HeadFOut,s2Step94HeadGvOut,s2Step94HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step94HeadFvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step94HeadF_Outgoing : rowsOwned s2Step94HeadFvAfter [s2Step94HeadFOut,s2Step94HeadGvOut,s2Step94HeadFvOut] :=
  hmrRows_owned_drop s2Step94HeadFvAfter [s2Step94HeadGOut,s2Step94HeadFOut,s2Step94HeadGvOut,s2Step94HeadFvOut] 1 s2Step94HeadBank_outgoingOwned

private theorem s2Step94HeadF_distinct : (s2Step94HeadFRow.sign::s2Step94HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94HeadF_owned : (s2Step94HeadFRow.sign::s2Step94HeadFRow.payload).toFinset⊆s2Step94HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step94HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94HeadF_reserved : s2Step94HeadFBefore.reserve s2Step94HeadFFresh.toFinset=some s2Step94HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step94HeadFFresh,arenaWires]
  · norm_num [s2Step94HeadFBefore,s2Step94HeadGAfter,s2Step94HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step94HeadFAfter,s2Step94HeadFBefore,s2Step94HeadGAfter,s2Step94HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step94HeadF_checked : planRowResizeLog s2Step94HeadFBefore s2Step94HeadFRow 223 s2Step94HeadFFresh=
    some (s2Step94HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 781],768⟩,growRow 768 s2Step94HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step94HeadFBefore s2Step94HeadFAfter s2Step94HeadFRow 223 s2Step94HeadFFresh
    s2Step94HeadF_distinct s2Step94HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step94HeadF_reserved
  have rowEq : WindowRow.mk (s2Step94HeadFRow.payload++s2Step94HeadFFresh) s2Step94HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step94HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step94HeadFvBefore : Arena := s2Step94HeadGvAfter

private theorem s2Step94HeadFv_Incoming : rowsOwned s2Step94HeadFvBefore [s2Step94HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step94HeadGRow,s2Step94HeadFRow,s2Step94HeadGvRow,s2Step94HeadFvRow] 3 s2Step94HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step94HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step94HeadFv_Outgoing : rowsOwned s2Step94HeadFvAfter [s2Step94HeadFvOut] :=
  hmrRows_owned_drop s2Step94HeadFvAfter [s2Step94HeadGOut,s2Step94HeadFOut,s2Step94HeadGvOut,s2Step94HeadFvOut] 3 s2Step94HeadBank_outgoingOwned

private theorem s2Step94HeadFv_distinct : (s2Step94HeadFvRow.sign::s2Step94HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94HeadFv_owned : (s2Step94HeadFvRow.sign::s2Step94HeadFvRow.payload).toFinset⊆s2Step94HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step94HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94HeadFv_reserved : s2Step94HeadFvBefore.reserve s2Step94HeadFvFresh.toFinset=some s2Step94HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step94HeadFvFresh,arenaWires]
  · norm_num [s2Step94HeadFvBefore,s2Step94HeadGvAfter,s2Step94HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step94HeadFvAfter,s2Step94HeadFvBefore,s2Step94HeadGvAfter,s2Step94HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step94HeadFv_checked : planRowResizeLog s2Step94HeadFvBefore s2Step94HeadFvRow 61 s2Step94HeadFvFresh=
    some (s2Step94HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844],770⟩,growRow 770 s2Step94HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step94HeadFvBefore s2Step94HeadFvAfter s2Step94HeadFvRow 61 s2Step94HeadFvFresh
    s2Step94HeadFv_distinct s2Step94HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step94HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step94HeadFvRow.payload++s2Step94HeadFvFresh) s2Step94HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step94HeadG_Incoming : rowsOwned s2Step94HeadGBefore [s2Step94HeadGRow,s2Step94HeadFRow,s2Step94HeadGvRow,s2Step94HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step94HeadGRow,s2Step94HeadFRow,s2Step94HeadGvRow,s2Step94HeadFvRow] 0 s2Step94HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step94HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step94HeadG_Outgoing : rowsOwned s2Step94HeadFvAfter [s2Step94HeadGOut,s2Step94HeadFOut,s2Step94HeadGvOut,s2Step94HeadFvOut] :=
  hmrRows_owned_drop s2Step94HeadFvAfter [s2Step94HeadGOut,s2Step94HeadFOut,s2Step94HeadGvOut,s2Step94HeadFvOut] 0 s2Step94HeadBank_outgoingOwned

private theorem s2Step94HeadG_distinct : (s2Step94HeadGRow.sign::s2Step94HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94HeadG_owned : (s2Step94HeadGRow.sign::s2Step94HeadGRow.payload).toFinset⊆s2Step94HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step94HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94HeadG_reserved : s2Step94HeadGBefore.reserve s2Step94HeadGFresh.toFinset=some s2Step94HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step94HeadGFresh,arenaWires]
  · norm_num [s2Step94HeadGBefore,s2Step94HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step94HeadGAfter,s2Step94HeadGBefore,s2Step94HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step94HeadG_checked : planRowResizeLog s2Step94HeadGBefore s2Step94HeadGRow 223 s2Step94HeadGFresh=
    some (s2Step94HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 799, 786],769⟩,growRow 769 s2Step94HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step94HeadGBefore s2Step94HeadGAfter s2Step94HeadGRow 223 s2Step94HeadGFresh
    s2Step94HeadG_distinct s2Step94HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step94HeadG_reserved
  have rowEq : WindowRow.mk (s2Step94HeadGRow.payload++s2Step94HeadGFresh) s2Step94HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 799, 786],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step94HeadGvBefore : Arena := s2Step94HeadFAfter

private theorem s2Step94HeadGv_Incoming : rowsOwned s2Step94HeadGvBefore [s2Step94HeadGvRow,s2Step94HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step94HeadGRow,s2Step94HeadFRow,s2Step94HeadGvRow,s2Step94HeadFvRow] 2 s2Step94HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step94HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step94HeadGv_Outgoing : rowsOwned s2Step94HeadFvAfter [s2Step94HeadGvOut,s2Step94HeadFvOut] :=
  hmrRows_owned_drop s2Step94HeadFvAfter [s2Step94HeadGOut,s2Step94HeadFOut,s2Step94HeadGvOut,s2Step94HeadFvOut] 2 s2Step94HeadBank_outgoingOwned

private theorem s2Step94HeadGv_distinct : (s2Step94HeadGvRow.sign::s2Step94HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step94HeadGv_owned : (s2Step94HeadGvRow.sign::s2Step94HeadGvRow.payload).toFinset⊆s2Step94HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step94HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step94HeadGv_reserved : s2Step94HeadGvBefore.reserve s2Step94HeadGvFresh.toFinset=some s2Step94HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step94HeadGvFresh,arenaWires]
  · norm_num [s2Step94HeadGvBefore,s2Step94HeadFAfter,s2Step94HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step94HeadGvAfter,s2Step94HeadGvBefore,s2Step94HeadFAfter,s2Step94HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step94HeadGv_checked : planRowResizeLog s2Step94HeadGvBefore s2Step94HeadGvRow 61 s2Step94HeadGvFresh=
    some (s2Step94HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 779],771⟩,growRow 771 s2Step94HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step94HeadGvBefore s2Step94HeadGvAfter s2Step94HeadGvRow 61 s2Step94HeadGvFresh
    s2Step94HeadGv_distinct s2Step94HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step94HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step94HeadGvRow.payload++s2Step94HeadGvFresh) s2Step94HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 779],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step94HeadBank_rows : planWindowRowsLog s2Step94HeadGBefore [(s2Step94HeadGRow,223),(s2Step94HeadFRow,223),(s2Step94HeadGvRow,61),(s2Step94HeadFvRow,61)] [s2Step94HeadGFresh,s2Step94HeadFFresh,s2Step94HeadGvFresh,s2Step94HeadFvFresh]=
    some (s2Step94HeadFvAfter,[s2Step94HeadGOut,s2Step94HeadFOut,s2Step94HeadGvOut,s2Step94HeadFvOut],(growRow 769 s2Step94HeadGFresh ++ (growRow 768 s2Step94HeadFFresh ++ (growRow 771 s2Step94HeadGvFresh ++ (growRow 770 s2Step94HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step94HeadFvAfter [] []=some (s2Step94HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step94HeadFvBefore s2Step94HeadFvAfter s2Step94HeadFvAfter
    s2Step94HeadFvRow s2Step94HeadFvOut 61 s2Step94HeadFvFresh [] [] []
    (growRow 770 s2Step94HeadFvFresh) ([]) s2Step94HeadFv_Incoming s2Step94HeadFv_checked h4 s2Step94HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step94HeadGvBefore s2Step94HeadGvAfter s2Step94HeadFvAfter
    s2Step94HeadGvRow s2Step94HeadGvOut 61 s2Step94HeadGvFresh [(s2Step94HeadFvRow,61)] [s2Step94HeadFvFresh] [s2Step94HeadFvOut]
    (growRow 771 s2Step94HeadGvFresh) ((growRow 770 s2Step94HeadFvFresh ++ [])) s2Step94HeadGv_Incoming s2Step94HeadGv_checked h3 s2Step94HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step94HeadFBefore s2Step94HeadFAfter s2Step94HeadFvAfter
    s2Step94HeadFRow s2Step94HeadFOut 223 s2Step94HeadFFresh [(s2Step94HeadGvRow,61),(s2Step94HeadFvRow,61)] [s2Step94HeadGvFresh,s2Step94HeadFvFresh] [s2Step94HeadGvOut,s2Step94HeadFvOut]
    (growRow 768 s2Step94HeadFFresh) ((growRow 771 s2Step94HeadGvFresh ++ (growRow 770 s2Step94HeadFvFresh ++ []))) s2Step94HeadF_Incoming s2Step94HeadF_checked h2 s2Step94HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step94HeadGBefore s2Step94HeadGAfter s2Step94HeadFvAfter
    s2Step94HeadGRow s2Step94HeadGOut 223 s2Step94HeadGFresh [(s2Step94HeadFRow,223),(s2Step94HeadGvRow,61),(s2Step94HeadFvRow,61)] [s2Step94HeadFFresh,s2Step94HeadGvFresh,s2Step94HeadFvFresh] [s2Step94HeadFOut,s2Step94HeadGvOut,s2Step94HeadFvOut]
    (growRow 769 s2Step94HeadGFresh) ((growRow 768 s2Step94HeadFFresh ++ (growRow 771 s2Step94HeadGvFresh ++ (growRow 770 s2Step94HeadFvFresh ++ [])))) s2Step94HeadG_Incoming s2Step94HeadG_checked h1 s2Step94HeadG_Outgoing
  exact h0

private theorem s2Step94HeadBank_checked : compileHmrBankResizeLog .headroom s2Step94HeadGBefore ⟨s2Step94HeadFRow,s2Step94HeadGRow,s2Step94HeadFvRow,s2Step94HeadGvRow⟩ ⟨223,223,61,61⟩ [s2Step94HeadGFresh,s2Step94HeadFFresh,s2Step94HeadGvFresh,s2Step94HeadFvFresh]=
    some (s2Step94HeadFvAfter,⟨s2Step94HeadFOut,s2Step94HeadGOut,s2Step94HeadFvOut,s2Step94HeadGvOut⟩,(growRow 769 s2Step94HeadGFresh ++ (growRow 768 s2Step94HeadFFresh ++ (growRow 771 s2Step94HeadGvFresh ++ (growRow 770 s2Step94HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step94HeadBank_rows]
  rfl

private theorem s2Step94Front_checked : compileHmrSourceFrontLog s2Step94EntryFBefore s2Step94FrontBank 222 60 ⟨221,221,61,60⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step94FrontLog=some s2Step94FrontPlan := by
  have pairEq : s2Step94FrontPair=⟨s2Step94HeadFRow,s2Step94HeadGRow,s2Step94HeadFvRow,s2Step94HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step94FrontHead=⟨s2Step94ExitFRow,s2Step94ExitGRow,s2Step94ExitFvRow,s2Step94ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step94Add0A=s2Step94FrontHead.f.wires := by decide +kernel
  have gEq : s2Step94Add0B=s2Step94FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step94Add1A=s2Step94FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step94Add1B=s2Step94FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step94EntryFBefore s2Step94FrontBank 222 60 ⟨221,221,61,60⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step94FrontLog s2Step94FrontPlan
  · exact s2Step94Front_entry
  · exact s2Step94EntryBank_checked
  · exact s2Step94Front_sigma
  · rfl
  · exact s2Step94Front_branch
  · rfl
  · simpa only [s2Step94FrontPlan,pairEq] using s2Step94HeadBank_checked
  · simpa only [s2Step94FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step94F4_checked
  · exact s2Step94Counter_checked
  · rfl
  · simpa only [s2Step94FrontPlan,headEq] using s2Step94ExitBank_checked

private theorem s2Step94Complete_explicit_checked : compileHmrEarlyStepLog s2Step94EntryFBefore s2Step94FrontBank 222 60 ⟨221,221,61,60⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step94CompleteLog=some s2Step94CompletePlan := by
  let Q := s2Step94EarlyControlPlan
  have hq := s2Step94EarlyControl_plan_checked
  have fv1 : s2Step94CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step94CompleteOut.fv.payload[2]?.getD s2Step94CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step94CompleteOut.fv.payload[3]?.getD s2Step94CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step94CompleteOut.fv.payload[4]?.getD s2Step94CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step94EntryFBefore s2Step94EarlyControlArena s2Step94FrontBank 222 60 ⟨221,221,61,60⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step94CompleteLog s2Step94FrontPlan Q
    s2Step94Front_checked s2Step94Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step94Complete_owned s2Step94Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step94EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 793 s2Step94CompleteOut.fv.second (s2Step94CompleteOut.fv.payload[2]?.getD s2Step94CompleteOut.fv.sign) (s2Step94CompleteOut.fv.payload[3]?.getD s2Step94CompleteOut.fv.sign) (s2Step94CompleteOut.fv.payload[4]?.getD s2Step94CompleteOut.fv.sign) 796 34 s2Step94EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep94Arena : Arena := s2Step94EntryFBefore
def s2PrivateStep94Bank : WindowBank := s2Step94FrontBank
def s2PrivateStep94Spec : HmrSourceWalkStepLog := ⟨222,60,⟨221,221,61,60⟩,34,.early s2Step94CompleteLog⟩
def s2PrivateStep94Plan : HmrSourceStepPlan := .early s2Step94CompletePlan
theorem s2PrivateStep94_source : s2PrivateStep94Spec=s2ObservedLogs80[14] := rfl
theorem s2PrivateStep94_checked : compileHmrSourceStepLog s2PrivateStep94Arena s2PrivateStep94Bank
    s2PrivateStep94Spec.fgWidth s2PrivateStep94Spec.vWidth s2PrivateStep94Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]
    6 498 94 s2PrivateStep94Spec.need none s2PrivateStep94Spec.log=some s2PrivateStep94Plan := by
  change compileHmrSourceStepLog s2Step94EntryFBefore s2Step94FrontBank 222 60 ⟨221,221,61,60⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 6 498 94 34 none (.early s2Step94CompleteLog)=some (.early s2Step94CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 94<498)]
  rw [s2Step94Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
