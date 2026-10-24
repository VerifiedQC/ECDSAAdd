import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep150
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

private def s2Step152CompleteMoves : List (Wire × Wire) := []

private def s2Step152EarlyControlLog : HmrEarlyControlLog := ⟨[791, 786, 790, 839, 780],[797],[849],[867, 877, 879, 882, 885, 888],[]⟩

private def s2Step152FrontLog : HmrFrontAllocationLog := ⟨⟨[[839], [], [], [791, 786]],[[849], [780], [790], [815]],[[], [], [], []]⟩,[778],[779],[867],[877],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882]⟩

private def s2Step152CompleteLog : HmrEarlyStepLog := ⟨s2Step152FrontLog,s2Step152CompleteMoves,s2Step152EarlyControlLog⟩

private def s2Step152ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704],768⟩

private def s2Step152ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩

private def s2Step152ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192],769⟩

private def s2Step152ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845],771⟩

private def s2Step152FrontOut : WindowBank := ⟨s2Step152ExitFOut,s2Step152ExitGOut,s2Step152ExitFvOut,s2Step152ExitGvOut⟩

private def s2Step152CompleteOut : WindowBank := s2Step152FrontOut.repacked s2Step152CompleteMoves

private def s2Step152EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step152EarlyControlPositiveArena,[797],s2Step152EarlyControlEqualityArena,[849],⟨⟨778,false⟩,[⟨⟨797,false⟩,849⟩]⟩⟩

private def s2Step152EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,791⟩,⟨⟨774,false⟩,786⟩,⟨⟨775,false⟩,790⟩,⟨⟨776,false⟩,839⟩,⟨⟨777,false⟩,780⟩]⟩

private def s2Step152EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step152EarlyControlZeroArena,s2Step152EarlyControlZeroPlan,s2Step152EarlyControlClassPlan,s2Step152EarlyControlFlagArena,s2Step152EarlyControlFittedArena,s2Step152EarlyControlHistoryArena,s2Step152EarlyControlSigmaArena,s2Step152EarlyControlOutputArena,s2Step152EarlyControlLog⟩

private def s2Step152CounterWork : List Wire := [867, 877, 879, 882]

private theorem s2Step152Counter_bounded : s2Step152CounterWork.toFinset⊆arenaWires := by norm_num [s2Step152CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step152HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152CounterDuring : Arena := ⟨s2Step152HeadFvAfter.live∪s2Step152CounterWork.toFinset,Finset.union_subset s2Step152HeadFvAfter.bounded s2Step152Counter_bounded⟩

private def s2Step152EntryFFresh : List Wire := [839]

private def s2Step152EntryFvFresh : List Wire := []

private def s2Step152EntryGFresh : List Wire := []

private def s2Step152EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152EntryGvFresh : List Wire := [791, 786]

private def s2Step152ExitFExtra : List Wire := [839, 780]

private def s2Step152ExitGExtra : List Wire := [797, 849]

private def s2Step152ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152ExitGvExtra : List Wire := [791, 786, 790]

private def s2Step152Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152Add0Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step152Add0_bounded : s2Step152Add0Work.toFinset⊆arenaWires := by
  have h : s2Step152Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step152Add0During : Arena := ⟨s2Step152Add0Arena.live∪s2Step152Add0Work.toFinset,Finset.union_subset s2Step152Add0Arena.bounded s2Step152Add0_bounded⟩

private def s2Step152Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152Add1Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step152Add1_bounded : s2Step152Add1Work.toFinset⊆arenaWires := by
  have h : s2Step152Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step152Add1During : Arena := ⟨s2Step152Add1Arena.live∪s2Step152Add1Work.toFinset,Finset.union_subset s2Step152Add1Arena.bounded s2Step152Add1_bounded⟩

private def s2Step152F4FlagArena : Arena := ⟨s2Step152HeadFvAfter.live∪{867},Finset.union_subset s2Step152HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step152F4Plan : HmrHybridF4Plan := ⟨s2Step152F4FlagArena,[867],s2Step152Add0Arena,[877],s2Step152Add0During,s2Step152Add0Work,s2Step152Add1During,s2Step152Add1Work⟩

private def s2Step152HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 839, 780],768⟩

private def s2Step152HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩

private def s2Step152HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797, 849],769⟩

private def s2Step152HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 791, 786, 790],771⟩

private def s2Step152FrontHead : WindowBank := ⟨s2Step152HeadFOut,s2Step152HeadGOut,s2Step152HeadFvOut,s2Step152HeadGvOut⟩

private def s2Step152EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 839],768⟩

private def s2Step152EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796],770⟩

private def s2Step152EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797],769⟩

private def s2Step152EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 791, 786],771⟩

private def s2Step152FrontPair : WindowBank := ⟨s2Step152EntryFOut,s2Step152EntryGOut,s2Step152EntryFvOut,s2Step152EntryGvOut⟩

private def s2Step152FrontSigmaArena : Arena := ⟨s2Step152EntryGvAfter.live∪{778},Finset.union_subset s2Step152EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step152HeadFFresh : List Wire := [780]

private def s2Step152HeadFvFresh : List Wire := [815]

private def s2Step152HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152HeadGFresh : List Wire := [849]

private def s2Step152HeadGvFresh : List Wire := [790]

private def s2Step152FrontPlan : HmrSourceFront := ⟨s2Step152EntryGvAfter,s2Step152FrontPair,(growRow 768 s2Step152EntryFFresh ++ (growRow 769 s2Step152EntryGFresh ++ (growRow 770 s2Step152EntryFvFresh ++ (growRow 771 s2Step152EntryGvFresh ++ [])))),s2Step152FrontSigmaArena,[778],s2Step152HeadGBefore,[779],
  s2Step152HeadFvAfter,s2Step152FrontHead,(growRow 769 s2Step152HeadGFresh ++ (growRow 768 s2Step152HeadFFresh ++ (growRow 771 s2Step152HeadGvFresh ++ (growRow 770 s2Step152HeadFvFresh ++ [])))),s2Step152F4Plan,s2Step152CounterDuring,s2Step152CounterWork,s2Step152ExitGvAfter,s2Step152FrontOut,(shrinkRow 769 s2Step152ExitGExtra ++ (shrinkRow 768 s2Step152ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step152ExitGvExtra ++ []))))⟩

private def s2Step152CompletePlan : HmrEarlyStepPlan := ⟨s2Step152FrontPlan,s2Step152EarlyControlArena,s2Step152EarlyControlPlan,s2Step152CompleteMoves⟩

private theorem s2Step152Complete_apart : List.Disjoint (s2Step152CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [778, 779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step152CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[778, 779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step152Complete_owned : (s2Step152CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step152EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step152EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152Complete_repack : s2Step152ExitGvAfter.checkRepack s2Step152CompleteMoves=some s2Step152EarlyControlArena := by rfl

private theorem s2Step152EarlyControl_branchOwned : ([779] : List Wire).toFinset⊆s2Step152EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step152EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152EarlyControl_branch : compileHmrBranchRetirement s2Step152EarlyControlSigmaArena 779=some s2Step152EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step152EarlyControl_branchOwned
  · ext q
    simp [s2Step152EarlyControlOutputArena,s2Step152EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step152EarlyControl_classEqualityBorrow : s2Step152EarlyControlPositiveArena.checkBorrow (([778, 797] : List Wire).length-1) s2Step152EarlyControlLog.classWork=some s2Step152EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step152EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step152EarlyControlPositiveArena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step152EarlyControlEqualityArena,s2Step152EarlyControlPositiveArena,s2Step152EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step152EarlyControl_classEqualityOwned : ([778, 797] : List Wire).toFinset⊆s2Step152EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step152EarlyControlPositiveArena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152EarlyControl_classEquality : compileHmrEqualityLog s2Step152EarlyControlPositiveArena [778, 797] 0 s2Step152EarlyControlLog.classWork=some (s2Step152EarlyControlEqualityArena,s2Step152EarlyControlLog.classWork,s2Step152EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step152EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step152EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step152EarlyControl_classOwned : ([777, 780, 778] : List Wire).toFinset⊆s2Step152EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step152EarlyControlZeroArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152EarlyControl_positiveBorrow : s2Step152EarlyControlZeroArena.checkBorrow (1) s2Step152EarlyControlLog.positiveWork=some s2Step152EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step152EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step152EarlyControlZeroArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step152EarlyControlPositiveArena,s2Step152EarlyControlZeroArena,s2Step152EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step152EarlyControl_class : compileHmrSourceClassLog s2Step152EarlyControlZeroArena false 777 s2Step152EarlyControlZeroPlan.top 0 778 s2Step152EarlyControlLog.positiveWork s2Step152EarlyControlLog.classWork=some s2Step152EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step152EarlyControlClassPlan s2Step152EarlyControlZeroArena false 777 s2Step152EarlyControlZeroPlan.top 0 778
  constructor
  · decide +kernel
  · exact s2Step152EarlyControl_classOwned
  · exact s2Step152EarlyControl_positiveBorrow
  · exact s2Step152EarlyControl_classEquality

private theorem s2Step152EarlyControl_entryRecordOwned : ([779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step152EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step152EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152EarlyControl_entrySigmaOwned : ([778, 254] : List Wire).toFinset⊆s2Step152EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step152EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152EarlyControl_fitBorrow : s2Step152EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step152EarlyControlLog.recordFresh=some s2Step152EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step152EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step152EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step152EarlyControlFittedArena,s2Step152EarlyControlFlagArena,s2Step152EarlyControlLog,arenaWires]

private theorem s2Step152EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step152EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step152EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152EarlyControl_fit : compileHmrRecordGrowLog s2Step152EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step152EarlyControlLog.recordFresh=some s2Step152EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step152EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step152EarlyControl_fitBorrow

private theorem s2Step152EarlyControl_flagsBorrow : s2Step152EarlyControlEqualityArena.checkBorrow (6) s2Step152EarlyControlLog.flagWork=some s2Step152EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step152EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step152EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step152EarlyControlFlagArena,s2Step152EarlyControlEqualityArena,s2Step152EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step152EarlyControl_flagsOwned : ([849, 253, 252, 251] : List Wire).toFinset⊆s2Step152EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step152EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152EarlyControl_flags : compileHmrFlagsLog s2Step152EarlyControlClassPlan.equalityArena s2Step152EarlyControlClassPlan.equality.top 253 252 251 s2Step152EarlyControlLog.flagWork=some s2Step152EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step152EarlyControl_flagsOwned⟩
  · exact s2Step152EarlyControl_flagsBorrow

private theorem s2Step152EarlyControl_historyBorrow : s2Step152EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step152EarlyControlLog.recordFresh=some s2Step152EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step152EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step152EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step152EarlyControlHistoryArena,s2Step152EarlyControlArena,s2Step152EarlyControlLog,arenaWires]

private theorem s2Step152EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step152EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step152EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152EarlyControl_history : compileHmrRecordGrowLog s2Step152EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step152EarlyControlLog.recordFresh=some s2Step152EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step152EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step152EarlyControl_historyBorrow

private theorem s2Step152EarlyControl_sigmaOwned : ([254, 778] : List Wire).toFinset⊆s2Step152EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step152EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152EarlyControl_sigmaReleaseOwned : ([778] : List Wire).toFinset⊆s2Step152EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step152EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152EarlyControl_sigmaRelease : s2Step152EarlyControlHistoryArena.release {778} (fun _ => false)=some s2Step152EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step152EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step152EarlyControlSigmaArena,s2Step152EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step152EarlyControl_sigma : compileHmrSigmaDropLog s2Step152EarlyControlHistoryArena false 0 0 254 778 []=some s2Step152EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step152EarlyControl_sigmaOwned⟩
  · exact s2Step152EarlyControl_sigmaRelease

private theorem s2Step152EarlyControl_zeroBorrow : s2Step152EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step152EarlyControlLog.zeroWork=some s2Step152EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step152EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step152EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step152EarlyControlZeroArena,s2Step152EarlyControlArena,s2Step152EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step152EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step152EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step152EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152EarlyControl_zero : compileHmrEqualityLog s2Step152EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step152EarlyControlLog.zeroWork=some (s2Step152EarlyControlZeroArena,s2Step152EarlyControlLog.zeroWork,s2Step152EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step152EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step152EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step152EarlyControl_logged : s2Step152EarlyControlPlan.Logged s2Step152EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 779 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step152EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step152EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step152EarlyControl_zero
  · exact s2Step152EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step152EarlyControl_flags
  · exact s2Step152EarlyControl_fit
  · exact s2Step152EarlyControl_history
  · exact s2Step152EarlyControl_sigma
  · exact s2Step152EarlyControl_branch

private theorem s2Step152EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step152EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 779 42 s2Step152EarlyControlLog=some s2Step152EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step152EarlyControlPlan s2Step152EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 779 42 s2Step152EarlyControl_logged

private def s2Step152EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704],768⟩

private def s2Step152EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796],770⟩

private def s2Step152EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797],769⟩

private def s2Step152EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845],771⟩

private def s2Step152FrontBank : WindowBank := ⟨s2Step152EntryFRow,s2Step152EntryGRow,s2Step152EntryFvRow,s2Step152EntryGvRow⟩

private def s2Step152Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 839, 780, 768]

private def s2Step152Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797, 849, 769]

private def s2Step152Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 770]

private def s2Step152Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 791, 786, 790, 771]

private theorem s2Step152Counter_apart : Disjoint s2Step152HeadFvAfter.live s2Step152CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step152HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152Counter_borrowed : s2Step152HeadFvAfter.checkBorrow 4 s2Step152CounterWork=some s2Step152CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step152HeadFvAfter s2Step152CounterDuring s2Step152CounterWork.toFinset s2Step152Counter_bounded s2Step152Counter_apart rfl

private theorem s2Step152Counter_owned : (778::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step152HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step152HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152Counter_checked : compileHmrCounterStepLog s2Step152HeadFvAfter true 778 [772, 773, 774, 775, 776, 777] s2Step152CounterWork=some s2Step152CounterDuring := by
  have owned : ∀q∈778::[772, 773, 774, 775, 776, 777],q∈s2Step152HeadFvAfter.live := fun q hq => s2Step152Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step152Counter_borrowed

private def s2Step152EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step152EntryBank_incomingDistinct : ([s2Step152EntryFRow,s2Step152EntryGRow,s2Step152EntryFvRow,s2Step152EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152EntryF_Incoming : rowsOwned s2Step152EntryFBefore [s2Step152EntryFRow,s2Step152EntryGRow,s2Step152EntryFvRow,s2Step152EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step152EntryFRow,s2Step152EntryGRow,s2Step152EntryFvRow,s2Step152EntryGvRow] 0 s2Step152EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step152EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step152EntryBank_outgoingOwned : rowsOwned s2Step152EntryGvAfter [s2Step152EntryFOut,s2Step152EntryGOut,s2Step152EntryFvOut,s2Step152EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step152EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step152EntryF_Outgoing : rowsOwned s2Step152EntryGvAfter [s2Step152EntryFOut,s2Step152EntryGOut,s2Step152EntryFvOut,s2Step152EntryGvOut] :=
  hmrRows_owned_drop s2Step152EntryGvAfter [s2Step152EntryFOut,s2Step152EntryGOut,s2Step152EntryFvOut,s2Step152EntryGvOut] 0 s2Step152EntryBank_outgoingOwned

private theorem s2Step152EntryF_distinct : (s2Step152EntryFRow.sign::s2Step152EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152EntryF_owned : (s2Step152EntryFRow.sign::s2Step152EntryFRow.payload).toFinset⊆s2Step152EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step152EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152EntryF_reserved : s2Step152EntryFBefore.reserve s2Step152EntryFFresh.toFinset=some s2Step152EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step152EntryFFresh,arenaWires]
  · norm_num [s2Step152EntryFBefore,s2Step152EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step152EntryFAfter,s2Step152EntryFBefore,s2Step152EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step152EntryF_checked : planRowResizeLog s2Step152EntryFBefore s2Step152EntryFRow 194 s2Step152EntryFFresh=
    some (s2Step152EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 839],768⟩,growRow 768 s2Step152EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step152EntryFBefore s2Step152EntryFAfter s2Step152EntryFRow 194 s2Step152EntryFFresh
    s2Step152EntryF_distinct s2Step152EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step152EntryF_reserved
  have rowEq : WindowRow.mk (s2Step152EntryFRow.payload++s2Step152EntryFFresh) s2Step152EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 839],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step152EntryFvAfter : Arena := s2Step152EntryFAfter

private def s2Step152EntryFvBefore : Arena := s2Step152EntryFAfter

private theorem s2Step152EntryFv_Incoming : rowsOwned s2Step152EntryFvBefore [s2Step152EntryFvRow,s2Step152EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step152EntryFRow,s2Step152EntryGRow,s2Step152EntryFvRow,s2Step152EntryGvRow] 2 s2Step152EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step152EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step152EntryFv_Outgoing : rowsOwned s2Step152EntryGvAfter [s2Step152EntryFvOut,s2Step152EntryGvOut] :=
  hmrRows_owned_drop s2Step152EntryGvAfter [s2Step152EntryFOut,s2Step152EntryGOut,s2Step152EntryFvOut,s2Step152EntryGvOut] 2 s2Step152EntryBank_outgoingOwned

private theorem s2Step152EntryFv_distinct : (s2Step152EntryFvRow.sign::s2Step152EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152EntryFv_owned : (s2Step152EntryFvRow.sign::s2Step152EntryFvRow.payload).toFinset⊆s2Step152EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step152EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152EntryFv_reserved : s2Step152EntryFvBefore.reserve s2Step152EntryFvFresh.toFinset=some s2Step152EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step152EntryFvFresh,arenaWires]
  · norm_num [s2Step152EntryFvBefore,s2Step152EntryFAfter,s2Step152EntryFvFresh,arenaWires]
  · simp only [s2Step152EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step152EntryFv_checked : planRowResizeLog s2Step152EntryFvBefore s2Step152EntryFvRow 91 s2Step152EntryFvFresh=
    some (s2Step152EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796],770⟩,growRow 770 s2Step152EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step152EntryFvBefore s2Step152EntryFvAfter s2Step152EntryFvRow 91 s2Step152EntryFvFresh
    s2Step152EntryFv_distinct s2Step152EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step152EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step152EntryFvRow.payload++s2Step152EntryFvFresh) s2Step152EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step152EntryGAfter : Arena := s2Step152EntryFAfter

private def s2Step152EntryGBefore : Arena := s2Step152EntryFAfter

private theorem s2Step152EntryG_Incoming : rowsOwned s2Step152EntryGBefore [s2Step152EntryGRow,s2Step152EntryFvRow,s2Step152EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step152EntryFRow,s2Step152EntryGRow,s2Step152EntryFvRow,s2Step152EntryGvRow] 1 s2Step152EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step152EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step152EntryG_Outgoing : rowsOwned s2Step152EntryGvAfter [s2Step152EntryGOut,s2Step152EntryFvOut,s2Step152EntryGvOut] :=
  hmrRows_owned_drop s2Step152EntryGvAfter [s2Step152EntryFOut,s2Step152EntryGOut,s2Step152EntryFvOut,s2Step152EntryGvOut] 1 s2Step152EntryBank_outgoingOwned

private theorem s2Step152EntryG_distinct : (s2Step152EntryGRow.sign::s2Step152EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152EntryG_owned : (s2Step152EntryGRow.sign::s2Step152EntryGRow.payload).toFinset⊆s2Step152EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step152EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152EntryG_reserved : s2Step152EntryGBefore.reserve s2Step152EntryGFresh.toFinset=some s2Step152EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step152EntryGFresh,arenaWires]
  · norm_num [s2Step152EntryGBefore,s2Step152EntryFAfter,s2Step152EntryGFresh,arenaWires]
  · simp only [s2Step152EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step152EntryG_checked : planRowResizeLog s2Step152EntryGBefore s2Step152EntryGRow 194 s2Step152EntryGFresh=
    some (s2Step152EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797],769⟩,growRow 769 s2Step152EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step152EntryGBefore s2Step152EntryGAfter s2Step152EntryGRow 194 s2Step152EntryGFresh
    s2Step152EntryG_distinct s2Step152EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step152EntryG_reserved
  have rowEq : WindowRow.mk (s2Step152EntryGRow.payload++s2Step152EntryGFresh) s2Step152EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step152EntryGvBefore : Arena := s2Step152EntryFAfter

private theorem s2Step152EntryGv_Incoming : rowsOwned s2Step152EntryGvBefore [s2Step152EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step152EntryFRow,s2Step152EntryGRow,s2Step152EntryFvRow,s2Step152EntryGvRow] 3 s2Step152EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step152EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step152EntryGv_Outgoing : rowsOwned s2Step152EntryGvAfter [s2Step152EntryGvOut] :=
  hmrRows_owned_drop s2Step152EntryGvAfter [s2Step152EntryFOut,s2Step152EntryGOut,s2Step152EntryFvOut,s2Step152EntryGvOut] 3 s2Step152EntryBank_outgoingOwned

private theorem s2Step152EntryGv_distinct : (s2Step152EntryGvRow.sign::s2Step152EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152EntryGv_owned : (s2Step152EntryGvRow.sign::s2Step152EntryGvRow.payload).toFinset⊆s2Step152EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step152EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152EntryGv_reserved : s2Step152EntryGvBefore.reserve s2Step152EntryGvFresh.toFinset=some s2Step152EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step152EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step152EntryGvBefore,s2Step152EntryFAfter,s2Step152EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step152EntryGvAfter,s2Step152EntryGvBefore,s2Step152EntryFAfter,s2Step152EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step152EntryGv_checked : planRowResizeLog s2Step152EntryGvBefore s2Step152EntryGvRow 91 s2Step152EntryGvFresh=
    some (s2Step152EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 791, 786],771⟩,growRow 771 s2Step152EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step152EntryGvBefore s2Step152EntryGvAfter s2Step152EntryGvRow 91 s2Step152EntryGvFresh
    s2Step152EntryGv_distinct s2Step152EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step152EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step152EntryGvRow.payload++s2Step152EntryGvFresh) s2Step152EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 791, 786],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step152EntryBank_rows : planWindowRowsLog s2Step152EntryFBefore [(s2Step152EntryFRow,194),(s2Step152EntryGRow,194),(s2Step152EntryFvRow,91),(s2Step152EntryGvRow,91)] [s2Step152EntryFFresh,s2Step152EntryGFresh,s2Step152EntryFvFresh,s2Step152EntryGvFresh]=
    some (s2Step152EntryGvAfter,[s2Step152EntryFOut,s2Step152EntryGOut,s2Step152EntryFvOut,s2Step152EntryGvOut],(growRow 768 s2Step152EntryFFresh ++ (growRow 769 s2Step152EntryGFresh ++ (growRow 770 s2Step152EntryFvFresh ++ (growRow 771 s2Step152EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step152EntryGvAfter [] []=some (s2Step152EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step152EntryGvBefore s2Step152EntryGvAfter s2Step152EntryGvAfter
    s2Step152EntryGvRow s2Step152EntryGvOut 91 s2Step152EntryGvFresh [] [] []
    (growRow 771 s2Step152EntryGvFresh) ([]) s2Step152EntryGv_Incoming s2Step152EntryGv_checked h4 s2Step152EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step152EntryFvBefore s2Step152EntryFvAfter s2Step152EntryGvAfter
    s2Step152EntryFvRow s2Step152EntryFvOut 91 s2Step152EntryFvFresh [(s2Step152EntryGvRow,91)] [s2Step152EntryGvFresh] [s2Step152EntryGvOut]
    (growRow 770 s2Step152EntryFvFresh) ((growRow 771 s2Step152EntryGvFresh ++ [])) s2Step152EntryFv_Incoming s2Step152EntryFv_checked h3 s2Step152EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step152EntryGBefore s2Step152EntryGAfter s2Step152EntryGvAfter
    s2Step152EntryGRow s2Step152EntryGOut 194 s2Step152EntryGFresh [(s2Step152EntryFvRow,91),(s2Step152EntryGvRow,91)] [s2Step152EntryFvFresh,s2Step152EntryGvFresh] [s2Step152EntryFvOut,s2Step152EntryGvOut]
    (growRow 769 s2Step152EntryGFresh) ((growRow 770 s2Step152EntryFvFresh ++ (growRow 771 s2Step152EntryGvFresh ++ []))) s2Step152EntryG_Incoming s2Step152EntryG_checked h2 s2Step152EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step152EntryFBefore s2Step152EntryFAfter s2Step152EntryGvAfter
    s2Step152EntryFRow s2Step152EntryFOut 194 s2Step152EntryFFresh [(s2Step152EntryGRow,194),(s2Step152EntryFvRow,91),(s2Step152EntryGvRow,91)] [s2Step152EntryGFresh,s2Step152EntryFvFresh,s2Step152EntryGvFresh] [s2Step152EntryGOut,s2Step152EntryFvOut,s2Step152EntryGvOut]
    (growRow 768 s2Step152EntryFFresh) ((growRow 769 s2Step152EntryGFresh ++ (growRow 770 s2Step152EntryFvFresh ++ (growRow 771 s2Step152EntryGvFresh ++ [])))) s2Step152EntryF_Incoming s2Step152EntryF_checked h1 s2Step152EntryF_Outgoing
  exact h0

private theorem s2Step152EntryBank_checked : compileHmrBankResizeLog .entry s2Step152EntryFBefore ⟨s2Step152EntryFRow,s2Step152EntryGRow,s2Step152EntryFvRow,s2Step152EntryGvRow⟩ ⟨194,194,91,91⟩ [s2Step152EntryFFresh,s2Step152EntryGFresh,s2Step152EntryFvFresh,s2Step152EntryGvFresh]=
    some (s2Step152EntryGvAfter,⟨s2Step152EntryFOut,s2Step152EntryGOut,s2Step152EntryFvOut,s2Step152EntryGvOut⟩,(growRow 768 s2Step152EntryFFresh ++ (growRow 769 s2Step152EntryGFresh ++ (growRow 770 s2Step152EntryFvFresh ++ (growRow 771 s2Step152EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step152EntryBank_rows]
  rfl

private def s2Step152ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152ExitFBefore : Arena := s2Step152ExitGAfter

private def s2Step152ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 839, 780],768⟩

private def s2Step152ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩

private def s2Step152ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797, 849],769⟩

private def s2Step152ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 791, 786, 790],771⟩

private theorem s2Step152ExitBank_incomingDistinct : ([s2Step152ExitGRow,s2Step152ExitFRow,s2Step152ExitFvRow,s2Step152ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152ExitF_Incoming : rowsOwned s2Step152ExitFBefore [s2Step152ExitFRow,s2Step152ExitFvRow,s2Step152ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step152ExitGRow,s2Step152ExitFRow,s2Step152ExitFvRow,s2Step152ExitGvRow] 1 s2Step152ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step152ExitFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step152ExitBank_outgoingOwned : rowsOwned s2Step152ExitGvAfter [s2Step152ExitGOut,s2Step152ExitFOut,s2Step152ExitFvOut,s2Step152ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step152ExitGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step152ExitF_Outgoing : rowsOwned s2Step152ExitGvAfter [s2Step152ExitFOut,s2Step152ExitFvOut,s2Step152ExitGvOut] :=
  hmrRows_owned_drop s2Step152ExitGvAfter [s2Step152ExitGOut,s2Step152ExitFOut,s2Step152ExitFvOut,s2Step152ExitGvOut] 1 s2Step152ExitBank_outgoingOwned

private theorem s2Step152ExitF_distinct : (s2Step152ExitFRow.sign::s2Step152ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152ExitF_owned : (s2Step152ExitFRow.sign::s2Step152ExitFRow.payload).toFinset⊆s2Step152ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step152ExitFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152ExitF_retired : s2Step152ExitFBefore.retireSet s2Step152ExitFExtra.toFinset=s2Step152ExitFAfter := by
  unfold Arena.retireSet s2Step152ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step152ExitFBefore,s2Step152ExitGAfter,s2Step152ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step152ExitF_checked : planRowResizeLog s2Step152ExitFBefore s2Step152ExitFRow 193 []=
    some (s2Step152ExitFAfter,s2Step152ExitFOut,shrinkRow 768 s2Step152ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step152ExitFBefore s2Step152ExitFRow 193 s2Step152ExitF_distinct s2Step152ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step152ExitFRow.payload.take 193) s2Step152ExitFRow.sign=s2Step152ExitFOut := by decide +kernel
  have hi : s2Step152ExitFRow.payload.drop 193=s2Step152ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step152ExitF_retired] at result
  exact result

private def s2Step152ExitFvAfter : Arena := s2Step152ExitFAfter

private def s2Step152ExitFvBefore : Arena := s2Step152ExitFAfter

private theorem s2Step152ExitFv_Incoming : rowsOwned s2Step152ExitFvBefore [s2Step152ExitFvRow,s2Step152ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step152ExitGRow,s2Step152ExitFRow,s2Step152ExitFvRow,s2Step152ExitGvRow] 2 s2Step152ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step152ExitFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step152ExitFv_Outgoing : rowsOwned s2Step152ExitGvAfter [s2Step152ExitFvOut,s2Step152ExitGvOut] :=
  hmrRows_owned_drop s2Step152ExitGvAfter [s2Step152ExitGOut,s2Step152ExitFOut,s2Step152ExitFvOut,s2Step152ExitGvOut] 2 s2Step152ExitBank_outgoingOwned

private theorem s2Step152ExitFv_distinct : (s2Step152ExitFvRow.sign::s2Step152ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152ExitFv_owned : (s2Step152ExitFvRow.sign::s2Step152ExitFvRow.payload).toFinset⊆s2Step152ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step152ExitFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152ExitFv_reserved : s2Step152ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step152ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step152ExitFv_checked : planRowResizeLog s2Step152ExitFvBefore s2Step152ExitFvRow 92 []=
    some (s2Step152ExitFvAfter,s2Step152ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step152ExitFvBefore s2Step152ExitFvAfter s2Step152ExitFvRow 92 []
    s2Step152ExitFv_distinct s2Step152ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step152ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step152ExitFvRow.payload++[]) s2Step152ExitFvRow.sign=s2Step152ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step152ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step152ExitG_Incoming : rowsOwned s2Step152ExitGBefore [s2Step152ExitGRow,s2Step152ExitFRow,s2Step152ExitFvRow,s2Step152ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step152ExitGRow,s2Step152ExitFRow,s2Step152ExitFvRow,s2Step152ExitGvRow] 0 s2Step152ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step152ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step152ExitG_Outgoing : rowsOwned s2Step152ExitGvAfter [s2Step152ExitGOut,s2Step152ExitFOut,s2Step152ExitFvOut,s2Step152ExitGvOut] :=
  hmrRows_owned_drop s2Step152ExitGvAfter [s2Step152ExitGOut,s2Step152ExitFOut,s2Step152ExitFvOut,s2Step152ExitGvOut] 0 s2Step152ExitBank_outgoingOwned

private theorem s2Step152ExitG_distinct : (s2Step152ExitGRow.sign::s2Step152ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152ExitG_owned : (s2Step152ExitGRow.sign::s2Step152ExitGRow.payload).toFinset⊆s2Step152ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step152ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152ExitG_retired : s2Step152ExitGBefore.retireSet s2Step152ExitGExtra.toFinset=s2Step152ExitGAfter := by
  unfold Arena.retireSet s2Step152ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step152ExitGBefore,s2Step152ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step152ExitG_checked : planRowResizeLog s2Step152ExitGBefore s2Step152ExitGRow 193 []=
    some (s2Step152ExitGAfter,s2Step152ExitGOut,shrinkRow 769 s2Step152ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step152ExitGBefore s2Step152ExitGRow 193 s2Step152ExitG_distinct s2Step152ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step152ExitGRow.payload.take 193) s2Step152ExitGRow.sign=s2Step152ExitGOut := by decide +kernel
  have hi : s2Step152ExitGRow.payload.drop 193=s2Step152ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step152ExitG_retired] at result
  exact result

private def s2Step152ExitGvBefore : Arena := s2Step152ExitFAfter

private theorem s2Step152ExitGv_Incoming : rowsOwned s2Step152ExitGvBefore [s2Step152ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step152ExitGRow,s2Step152ExitFRow,s2Step152ExitFvRow,s2Step152ExitGvRow] 3 s2Step152ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step152ExitGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step152ExitGv_Outgoing : rowsOwned s2Step152ExitGvAfter [s2Step152ExitGvOut] :=
  hmrRows_owned_drop s2Step152ExitGvAfter [s2Step152ExitGOut,s2Step152ExitFOut,s2Step152ExitFvOut,s2Step152ExitGvOut] 3 s2Step152ExitBank_outgoingOwned

private theorem s2Step152ExitGv_distinct : (s2Step152ExitGvRow.sign::s2Step152ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152ExitGv_owned : (s2Step152ExitGvRow.sign::s2Step152ExitGvRow.payload).toFinset⊆s2Step152ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step152ExitGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152ExitGv_retired : s2Step152ExitGvBefore.retireSet s2Step152ExitGvExtra.toFinset=s2Step152ExitGvAfter := by
  unfold Arena.retireSet s2Step152ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step152ExitGvBefore,s2Step152ExitFAfter,s2Step152ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step152ExitGv_checked : planRowResizeLog s2Step152ExitGvBefore s2Step152ExitGvRow 89 []=
    some (s2Step152ExitGvAfter,s2Step152ExitGvOut,shrinkRow 771 s2Step152ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step152ExitGvBefore s2Step152ExitGvRow 89 s2Step152ExitGv_distinct s2Step152ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step152ExitGvRow.payload.take 89) s2Step152ExitGvRow.sign=s2Step152ExitGvOut := by decide +kernel
  have hi : s2Step152ExitGvRow.payload.drop 89=s2Step152ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step152ExitGv_retired] at result
  exact result

private theorem s2Step152ExitBank_rows : planWindowRowsLog s2Step152ExitGBefore [(s2Step152ExitGRow,193),(s2Step152ExitFRow,193),(s2Step152ExitFvRow,92),(s2Step152ExitGvRow,89)] [[],[],[],[]]=
    some (s2Step152ExitGvAfter,[s2Step152ExitGOut,s2Step152ExitFOut,s2Step152ExitFvOut,s2Step152ExitGvOut],(shrinkRow 769 s2Step152ExitGExtra ++ (shrinkRow 768 s2Step152ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step152ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step152ExitGvAfter [] []=some (s2Step152ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step152ExitGvBefore s2Step152ExitGvAfter s2Step152ExitGvAfter
    s2Step152ExitGvRow s2Step152ExitGvOut 89 [] [] [] []
    (shrinkRow 771 s2Step152ExitGvExtra) ([]) s2Step152ExitGv_Incoming s2Step152ExitGv_checked h4 s2Step152ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step152ExitFvBefore s2Step152ExitFvAfter s2Step152ExitGvAfter
    s2Step152ExitFvRow s2Step152ExitFvOut 92 [] [(s2Step152ExitGvRow,89)] [[]] [s2Step152ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step152ExitGvExtra ++ [])) s2Step152ExitFv_Incoming s2Step152ExitFv_checked h3 s2Step152ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step152ExitFBefore s2Step152ExitFAfter s2Step152ExitGvAfter
    s2Step152ExitFRow s2Step152ExitFOut 193 [] [(s2Step152ExitFvRow,92),(s2Step152ExitGvRow,89)] [[],[]] [s2Step152ExitFvOut,s2Step152ExitGvOut]
    (shrinkRow 768 s2Step152ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step152ExitGvExtra ++ []))) s2Step152ExitF_Incoming s2Step152ExitF_checked h2 s2Step152ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step152ExitGBefore s2Step152ExitGAfter s2Step152ExitGvAfter
    s2Step152ExitGRow s2Step152ExitGOut 193 [] [(s2Step152ExitFRow,193),(s2Step152ExitFvRow,92),(s2Step152ExitGvRow,89)] [[],[],[]] [s2Step152ExitFOut,s2Step152ExitFvOut,s2Step152ExitGvOut]
    (shrinkRow 769 s2Step152ExitGExtra) ((shrinkRow 768 s2Step152ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step152ExitGvExtra ++ [])))) s2Step152ExitG_Incoming s2Step152ExitG_checked h1 s2Step152ExitG_Outgoing
  exact h0

private theorem s2Step152ExitBank_checked : compileHmrBankResizeLog .exit s2Step152ExitGBefore ⟨s2Step152ExitFRow,s2Step152ExitGRow,s2Step152ExitFvRow,s2Step152ExitGvRow⟩ ⟨193,193,92,89⟩ [[],[],[],[]]=
    some (s2Step152ExitGvAfter,⟨s2Step152ExitFOut,s2Step152ExitGOut,s2Step152ExitFvOut,s2Step152ExitGvOut⟩,(shrinkRow 769 s2Step152ExitGExtra ++ (shrinkRow 768 s2Step152ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step152ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step152ExitBank_rows]
  rfl

private theorem s2Step152Add0_apart : Disjoint s2Step152Add0Arena.live s2Step152Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step152Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152Add0_card : s2Step152Add0Arena.live.card=886 := by
  decide +kernel

private theorem s2Step152Add0_borrowed : s2Step152Add0Arena.checkBorrow (hmrHybridCount s2Step152Add0Arena s2Step152Add0B.length) s2Step152Add0Work=some s2Step152Add0During := by
  have len : s2Step152Add0Work.length=hmrHybridCount s2Step152Add0Arena s2Step152Add0B.length := by
    rw [hmrHybridCount,s2Step152Add0_card]
    decide +kernel
  have nd : s2Step152Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step152Add0Arena s2Step152Add0During s2Step152Add0Work.toFinset s2Step152Add0_bounded s2Step152Add0_apart rfl

private theorem s2Step152Add0_distinct : (867::779::877::(s2Step152Add0A++s2Step152Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152Add0_owned : (867::779::877::(s2Step152Add0A++s2Step152Add0B)).toFinset⊆s2Step152Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step152Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152Add0_checked : compileHmrHybridCinLog s2Step152Add0Arena 779 867 877 s2Step152Add0A s2Step152Add0B s2Step152Add0Work=some s2Step152Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step152Add0Arena s2Step152Add0During 779 867 877 s2Step152Add0A s2Step152Add0B s2Step152Add0Work
    (by decide +kernel) (by decide +kernel) s2Step152Add0_distinct
    (fun q hq => s2Step152Add0_owned (List.mem_toFinset.mpr hq)) s2Step152Add0_borrowed

private theorem s2Step152Add1_apart : Disjoint s2Step152Add1Arena.live s2Step152Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step152Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152Add1_card : s2Step152Add1Arena.live.card=886 := by
  decide +kernel

private theorem s2Step152Add1_borrowed : s2Step152Add1Arena.checkBorrow (hmrHybridCount s2Step152Add1Arena s2Step152Add1B.length) s2Step152Add1Work=some s2Step152Add1During := by
  have len : s2Step152Add1Work.length=hmrHybridCount s2Step152Add1Arena s2Step152Add1B.length := by
    rw [hmrHybridCount,s2Step152Add1_card]
    decide +kernel
  have nd : s2Step152Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step152Add1Arena s2Step152Add1During s2Step152Add1Work.toFinset s2Step152Add1_bounded s2Step152Add1_apart rfl

private theorem s2Step152Add1_distinct : (867::779::877::(s2Step152Add1A++s2Step152Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152Add1_owned : (867::779::877::(s2Step152Add1A++s2Step152Add1B)).toFinset⊆s2Step152Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step152Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152Add1_checked : compileHmrHybridCinLog s2Step152Add1Arena 779 867 877 s2Step152Add1A s2Step152Add1B s2Step152Add1Work=some s2Step152Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step152Add1Arena s2Step152Add1During 779 867 877 s2Step152Add1A s2Step152Add1B s2Step152Add1Work
    (by decide +kernel) (by decide +kernel) s2Step152Add1_distinct
    (fun q hq => s2Step152Add1_owned (List.mem_toFinset.mpr hq)) s2Step152Add1_borrowed

private theorem s2Step152F4_apart : Disjoint (s2Step152Add0A++s2Step152Add0B).toFinset (s2Step152Add1A++s2Step152Add1B).toFinset := by
  have nd : ((s2Step152Add0A++s2Step152Add0B)++(s2Step152Add1A++s2Step152Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step152F4_carry : s2Step152F4FlagArena.checkBorrow 1 [877]=some s2Step152Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step152F4FlagArena,s2Step152HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step152F4FlagArena,s2Step152HeadFvAfter,s2Step152Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step152F4_distinct : (778::779::867::877::((s2Step152Add0A++s2Step152Add1A)++(s2Step152Add0B++s2Step152Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152F4_flag : s2Step152HeadFvAfter.checkBorrow 1 [867]=some s2Step152F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step152HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step152F4_owned : (778::779::((s2Step152Add0A++s2Step152Add1A)++(s2Step152Add0B++s2Step152Add1B))).toFinset⊆s2Step152HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step152HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152F4_checked : compileHmrHybridF4Log s2Step152HeadFvAfter 778 779 s2Step152Add0A s2Step152Add0B s2Step152Add1A s2Step152Add1B [867] [877] s2Step152Add0Work s2Step152Add1Work=some s2Step152F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step152HeadFvAfter s2Step152F4FlagArena s2Step152Add0Arena s2Step152Add0During s2Step152Add1During 778 779
    s2Step152Add0A s2Step152Add0B s2Step152Add1A s2Step152Add1B [867] [877] s2Step152Add0Work s2Step152Add1Work
    (fun q hq => s2Step152F4_owned (List.mem_toFinset.mpr hq)) s2Step152F4_flag s2Step152F4_carry
    s2Step152F4_distinct s2Step152F4_apart s2Step152Add0_checked s2Step152Add1_checked

private theorem s2Step152Front_branch : s2Step152FrontSigmaArena.checkBorrow 1 [779]=some s2Step152HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step152FrontSigmaArena,s2Step152EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step152FrontSigmaArena,s2Step152EntryGvAfter,s2Step152HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step152Front_entry : HmrFrontEntryValid s2Step152EntryFBefore s2Step152FrontBank 194 91 ⟨193,193,92,89⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step152FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step152EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step152EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step152FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step152Front_sigma : s2Step152EntryGvAfter.checkBorrow 1 [778]=some s2Step152FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step152EntryGvAfter,arenaWires]
  · rfl

private def s2Step152HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152HeadFBefore : Arena := s2Step152HeadGAfter

private def s2Step152HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 839],768⟩

private def s2Step152HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796],770⟩

private def s2Step152HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797],769⟩

private def s2Step152HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 791, 786],771⟩

private theorem s2Step152HeadBank_incomingDistinct : ([s2Step152HeadGRow,s2Step152HeadFRow,s2Step152HeadGvRow,s2Step152HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152HeadF_Incoming : rowsOwned s2Step152HeadFBefore [s2Step152HeadFRow,s2Step152HeadGvRow,s2Step152HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step152HeadGRow,s2Step152HeadFRow,s2Step152HeadGvRow,s2Step152HeadFvRow] 1 s2Step152HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step152HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step152HeadBank_outgoingOwned : rowsOwned s2Step152HeadFvAfter [s2Step152HeadGOut,s2Step152HeadFOut,s2Step152HeadGvOut,s2Step152HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step152HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step152HeadF_Outgoing : rowsOwned s2Step152HeadFvAfter [s2Step152HeadFOut,s2Step152HeadGvOut,s2Step152HeadFvOut] :=
  hmrRows_owned_drop s2Step152HeadFvAfter [s2Step152HeadGOut,s2Step152HeadFOut,s2Step152HeadGvOut,s2Step152HeadFvOut] 1 s2Step152HeadBank_outgoingOwned

private theorem s2Step152HeadF_distinct : (s2Step152HeadFRow.sign::s2Step152HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152HeadF_owned : (s2Step152HeadFRow.sign::s2Step152HeadFRow.payload).toFinset⊆s2Step152HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step152HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152HeadF_reserved : s2Step152HeadFBefore.reserve s2Step152HeadFFresh.toFinset=some s2Step152HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step152HeadFFresh,arenaWires]
  · norm_num [s2Step152HeadFBefore,s2Step152HeadGAfter,s2Step152HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step152HeadFAfter,s2Step152HeadFBefore,s2Step152HeadGAfter,s2Step152HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step152HeadF_checked : planRowResizeLog s2Step152HeadFBefore s2Step152HeadFRow 195 s2Step152HeadFFresh=
    some (s2Step152HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 839, 780],768⟩,growRow 768 s2Step152HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step152HeadFBefore s2Step152HeadFAfter s2Step152HeadFRow 195 s2Step152HeadFFresh
    s2Step152HeadF_distinct s2Step152HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step152HeadF_reserved
  have rowEq : WindowRow.mk (s2Step152HeadFRow.payload++s2Step152HeadFFresh) s2Step152HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 839, 780],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step152HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step152HeadFvBefore : Arena := s2Step152HeadGvAfter

private theorem s2Step152HeadFv_Incoming : rowsOwned s2Step152HeadFvBefore [s2Step152HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step152HeadGRow,s2Step152HeadFRow,s2Step152HeadGvRow,s2Step152HeadFvRow] 3 s2Step152HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step152HeadFvBefore (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step152HeadFv_Outgoing : rowsOwned s2Step152HeadFvAfter [s2Step152HeadFvOut] :=
  hmrRows_owned_drop s2Step152HeadFvAfter [s2Step152HeadGOut,s2Step152HeadFOut,s2Step152HeadGvOut,s2Step152HeadFvOut] 3 s2Step152HeadBank_outgoingOwned

private theorem s2Step152HeadFv_distinct : (s2Step152HeadFvRow.sign::s2Step152HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152HeadFv_owned : (s2Step152HeadFvRow.sign::s2Step152HeadFvRow.payload).toFinset⊆s2Step152HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step152HeadFvBefore (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152HeadFv_reserved : s2Step152HeadFvBefore.reserve s2Step152HeadFvFresh.toFinset=some s2Step152HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step152HeadFvFresh,arenaWires]
  · norm_num [s2Step152HeadFvBefore,s2Step152HeadGvAfter,s2Step152HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step152HeadFvAfter,s2Step152HeadFvBefore,s2Step152HeadGvAfter,s2Step152HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step152HeadFv_checked : planRowResizeLog s2Step152HeadFvBefore s2Step152HeadFvRow 92 s2Step152HeadFvFresh=
    some (s2Step152HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩,growRow 770 s2Step152HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step152HeadFvBefore s2Step152HeadFvAfter s2Step152HeadFvRow 92 s2Step152HeadFvFresh
    s2Step152HeadFv_distinct s2Step152HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step152HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step152HeadFvRow.payload++s2Step152HeadFvFresh) s2Step152HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step152HeadG_Incoming : rowsOwned s2Step152HeadGBefore [s2Step152HeadGRow,s2Step152HeadFRow,s2Step152HeadGvRow,s2Step152HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step152HeadGRow,s2Step152HeadFRow,s2Step152HeadGvRow,s2Step152HeadFvRow] 0 s2Step152HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step152HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step152HeadG_Outgoing : rowsOwned s2Step152HeadFvAfter [s2Step152HeadGOut,s2Step152HeadFOut,s2Step152HeadGvOut,s2Step152HeadFvOut] :=
  hmrRows_owned_drop s2Step152HeadFvAfter [s2Step152HeadGOut,s2Step152HeadFOut,s2Step152HeadGvOut,s2Step152HeadFvOut] 0 s2Step152HeadBank_outgoingOwned

private theorem s2Step152HeadG_distinct : (s2Step152HeadGRow.sign::s2Step152HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152HeadG_owned : (s2Step152HeadGRow.sign::s2Step152HeadGRow.payload).toFinset⊆s2Step152HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step152HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152HeadG_reserved : s2Step152HeadGBefore.reserve s2Step152HeadGFresh.toFinset=some s2Step152HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step152HeadGFresh,arenaWires]
  · norm_num [s2Step152HeadGBefore,s2Step152HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step152HeadGAfter,s2Step152HeadGBefore,s2Step152HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step152HeadG_checked : planRowResizeLog s2Step152HeadGBefore s2Step152HeadGRow 195 s2Step152HeadGFresh=
    some (s2Step152HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797, 849],769⟩,growRow 769 s2Step152HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step152HeadGBefore s2Step152HeadGAfter s2Step152HeadGRow 195 s2Step152HeadGFresh
    s2Step152HeadG_distinct s2Step152HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step152HeadG_reserved
  have rowEq : WindowRow.mk (s2Step152HeadGRow.payload++s2Step152HeadGFresh) s2Step152HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 797, 849],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step152HeadGvBefore : Arena := s2Step152HeadFAfter

private theorem s2Step152HeadGv_Incoming : rowsOwned s2Step152HeadGvBefore [s2Step152HeadGvRow,s2Step152HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step152HeadGRow,s2Step152HeadFRow,s2Step152HeadGvRow,s2Step152HeadFvRow] 2 s2Step152HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step152HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step152HeadGv_Outgoing : rowsOwned s2Step152HeadFvAfter [s2Step152HeadGvOut,s2Step152HeadFvOut] :=
  hmrRows_owned_drop s2Step152HeadFvAfter [s2Step152HeadGOut,s2Step152HeadFOut,s2Step152HeadGvOut,s2Step152HeadFvOut] 2 s2Step152HeadBank_outgoingOwned

private theorem s2Step152HeadGv_distinct : (s2Step152HeadGvRow.sign::s2Step152HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step152HeadGv_owned : (s2Step152HeadGvRow.sign::s2Step152HeadGvRow.payload).toFinset⊆s2Step152HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step152HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step152HeadGv_reserved : s2Step152HeadGvBefore.reserve s2Step152HeadGvFresh.toFinset=some s2Step152HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step152HeadGvFresh,arenaWires]
  · norm_num [s2Step152HeadGvBefore,s2Step152HeadFAfter,s2Step152HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step152HeadGvAfter,s2Step152HeadGvBefore,s2Step152HeadFAfter,s2Step152HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step152HeadGv_checked : planRowResizeLog s2Step152HeadGvBefore s2Step152HeadGvRow 92 s2Step152HeadGvFresh=
    some (s2Step152HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 791, 786, 790],771⟩,growRow 771 s2Step152HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step152HeadGvBefore s2Step152HeadGvAfter s2Step152HeadGvRow 92 s2Step152HeadGvFresh
    s2Step152HeadGv_distinct s2Step152HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step152HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step152HeadGvRow.payload++s2Step152HeadGvFresh) s2Step152HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 791, 786, 790],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step152HeadBank_rows : planWindowRowsLog s2Step152HeadGBefore [(s2Step152HeadGRow,195),(s2Step152HeadFRow,195),(s2Step152HeadGvRow,92),(s2Step152HeadFvRow,92)] [s2Step152HeadGFresh,s2Step152HeadFFresh,s2Step152HeadGvFresh,s2Step152HeadFvFresh]=
    some (s2Step152HeadFvAfter,[s2Step152HeadGOut,s2Step152HeadFOut,s2Step152HeadGvOut,s2Step152HeadFvOut],(growRow 769 s2Step152HeadGFresh ++ (growRow 768 s2Step152HeadFFresh ++ (growRow 771 s2Step152HeadGvFresh ++ (growRow 770 s2Step152HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step152HeadFvAfter [] []=some (s2Step152HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step152HeadFvBefore s2Step152HeadFvAfter s2Step152HeadFvAfter
    s2Step152HeadFvRow s2Step152HeadFvOut 92 s2Step152HeadFvFresh [] [] []
    (growRow 770 s2Step152HeadFvFresh) ([]) s2Step152HeadFv_Incoming s2Step152HeadFv_checked h4 s2Step152HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step152HeadGvBefore s2Step152HeadGvAfter s2Step152HeadFvAfter
    s2Step152HeadGvRow s2Step152HeadGvOut 92 s2Step152HeadGvFresh [(s2Step152HeadFvRow,92)] [s2Step152HeadFvFresh] [s2Step152HeadFvOut]
    (growRow 771 s2Step152HeadGvFresh) ((growRow 770 s2Step152HeadFvFresh ++ [])) s2Step152HeadGv_Incoming s2Step152HeadGv_checked h3 s2Step152HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step152HeadFBefore s2Step152HeadFAfter s2Step152HeadFvAfter
    s2Step152HeadFRow s2Step152HeadFOut 195 s2Step152HeadFFresh [(s2Step152HeadGvRow,92),(s2Step152HeadFvRow,92)] [s2Step152HeadGvFresh,s2Step152HeadFvFresh] [s2Step152HeadGvOut,s2Step152HeadFvOut]
    (growRow 768 s2Step152HeadFFresh) ((growRow 771 s2Step152HeadGvFresh ++ (growRow 770 s2Step152HeadFvFresh ++ []))) s2Step152HeadF_Incoming s2Step152HeadF_checked h2 s2Step152HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step152HeadGBefore s2Step152HeadGAfter s2Step152HeadFvAfter
    s2Step152HeadGRow s2Step152HeadGOut 195 s2Step152HeadGFresh [(s2Step152HeadFRow,195),(s2Step152HeadGvRow,92),(s2Step152HeadFvRow,92)] [s2Step152HeadFFresh,s2Step152HeadGvFresh,s2Step152HeadFvFresh] [s2Step152HeadFOut,s2Step152HeadGvOut,s2Step152HeadFvOut]
    (growRow 769 s2Step152HeadGFresh) ((growRow 768 s2Step152HeadFFresh ++ (growRow 771 s2Step152HeadGvFresh ++ (growRow 770 s2Step152HeadFvFresh ++ [])))) s2Step152HeadG_Incoming s2Step152HeadG_checked h1 s2Step152HeadG_Outgoing
  exact h0

private theorem s2Step152HeadBank_checked : compileHmrBankResizeLog .headroom s2Step152HeadGBefore ⟨s2Step152HeadFRow,s2Step152HeadGRow,s2Step152HeadFvRow,s2Step152HeadGvRow⟩ ⟨195,195,92,92⟩ [s2Step152HeadGFresh,s2Step152HeadFFresh,s2Step152HeadGvFresh,s2Step152HeadFvFresh]=
    some (s2Step152HeadFvAfter,⟨s2Step152HeadFOut,s2Step152HeadGOut,s2Step152HeadFvOut,s2Step152HeadGvOut⟩,(growRow 769 s2Step152HeadGFresh ++ (growRow 768 s2Step152HeadFFresh ++ (growRow 771 s2Step152HeadGvFresh ++ (growRow 770 s2Step152HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step152HeadBank_rows]
  rfl

private theorem s2Step152Front_checked : compileHmrSourceFrontLog s2Step152EntryFBefore s2Step152FrontBank 194 91 ⟨193,193,92,89⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step152FrontLog=some s2Step152FrontPlan := by
  have pairEq : s2Step152FrontPair=⟨s2Step152HeadFRow,s2Step152HeadGRow,s2Step152HeadFvRow,s2Step152HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step152FrontHead=⟨s2Step152ExitFRow,s2Step152ExitGRow,s2Step152ExitFvRow,s2Step152ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step152Add0A=s2Step152FrontHead.f.wires := by decide +kernel
  have gEq : s2Step152Add0B=s2Step152FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step152Add1A=s2Step152FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step152Add1B=s2Step152FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step152EntryFBefore s2Step152FrontBank 194 91 ⟨193,193,92,89⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step152FrontLog s2Step152FrontPlan
  · exact s2Step152Front_entry
  · exact s2Step152EntryBank_checked
  · exact s2Step152Front_sigma
  · rfl
  · exact s2Step152Front_branch
  · rfl
  · simpa only [s2Step152FrontPlan,pairEq] using s2Step152HeadBank_checked
  · simpa only [s2Step152FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step152F4_checked
  · exact s2Step152Counter_checked
  · rfl
  · simpa only [s2Step152FrontPlan,headEq] using s2Step152ExitBank_checked

private theorem s2Step152Complete_explicit_checked : compileHmrEarlyStepLog s2Step152EntryFBefore s2Step152FrontBank 194 91 ⟨193,193,92,89⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step152CompleteLog=some s2Step152CompletePlan := by
  let Q := s2Step152EarlyControlPlan
  have hq := s2Step152EarlyControl_plan_checked
  have fv1 : s2Step152CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step152CompleteOut.fv.payload[2]?.getD s2Step152CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step152CompleteOut.fv.payload[3]?.getD s2Step152CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step152CompleteOut.fv.payload[4]?.getD s2Step152CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step152EntryFBefore s2Step152EarlyControlArena s2Step152FrontBank 194 91 ⟨193,193,92,89⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step152CompleteLog s2Step152FrontPlan Q
    s2Step152Front_checked s2Step152Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step152Complete_owned s2Step152Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step152EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 s2Step152CompleteOut.fv.second (s2Step152CompleteOut.fv.payload[2]?.getD s2Step152CompleteOut.fv.sign) (s2Step152CompleteOut.fv.payload[3]?.getD s2Step152CompleteOut.fv.sign) (s2Step152CompleteOut.fv.payload[4]?.getD s2Step152CompleteOut.fv.sign) 779 42 s2Step152EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep152Arena : Arena := s2Step152EntryFBefore
def s2PrivateStep152Bank : WindowBank := s2Step152FrontBank
def s2PrivateStep152Spec : HmrSourceWalkStepLog := ⟨194,91,⟨193,193,92,89⟩,42,.early s2Step152CompleteLog⟩
def s2PrivateStep152Plan : HmrSourceStepPlan := .early s2Step152CompletePlan
theorem s2PrivateStep152_source : s2PrivateStep152Spec=s2ObservedLogs144[8] := rfl
theorem s2PrivateStep152_checked : compileHmrSourceStepLog s2PrivateStep152Arena s2PrivateStep152Bank
    s2PrivateStep152Spec.fgWidth s2PrivateStep152Spec.vWidth s2PrivateStep152Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 152 s2PrivateStep152Spec.need none s2PrivateStep152Spec.log=some s2PrivateStep152Plan := by
  change compileHmrSourceStepLog s2Step152EntryFBefore s2Step152FrontBank 194 91 ⟨193,193,92,89⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 152 42 none (.early s2Step152CompleteLog)=some (.early s2Step152CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 152<498)]
  rw [s2Step152Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
