import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep153
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

private def s2Step155CompleteMoves : List (Wire × Wire) := []

private def s2Step155EarlyControlLog : HmrEarlyControlLog := ⟨[849, 780, 847, 790, 797],[867],[877],[879, 882, 885, 888, 890, 891],[]⟩

private def s2Step155FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [791]],[[847], [780], [839], [849]],[[], [], [], []]⟩,[778],[801],[790],[797],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 797, 867, 877]⟩

private def s2Step155CompleteLog : HmrEarlyStepLog := ⟨s2Step155FrontLog,s2Step155CompleteMoves,s2Step155EarlyControlLog⟩

private def s2Step155ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703],768⟩

private def s2Step155ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩

private def s2Step155ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],769⟩

private def s2Step155ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private def s2Step155FrontOut : WindowBank := ⟨s2Step155ExitFOut,s2Step155ExitGOut,s2Step155ExitFvOut,s2Step155ExitGvOut⟩

private def s2Step155CompleteOut : WindowBank := s2Step155FrontOut.repacked s2Step155CompleteMoves

private def s2Step155EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step155EarlyControlPositiveArena,[867],s2Step155EarlyControlEqualityArena,[877],⟨⟨778,false⟩,[⟨⟨867,false⟩,877⟩]⟩⟩

private def s2Step155EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<892)),Finset.filter_subset _ _⟩

private def s2Step155EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<892)),Finset.filter_subset _ _⟩

private def s2Step155EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,849⟩,⟨⟨774,false⟩,780⟩,⟨⟨775,false⟩,847⟩,⟨⟨776,false⟩,790⟩,⟨⟨777,false⟩,797⟩]⟩

private def s2Step155EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step155EarlyControlZeroArena,s2Step155EarlyControlZeroPlan,s2Step155EarlyControlClassPlan,s2Step155EarlyControlFlagArena,s2Step155EarlyControlFittedArena,s2Step155EarlyControlHistoryArena,s2Step155EarlyControlSigmaArena,s2Step155EarlyControlOutputArena,s2Step155EarlyControlLog⟩

private def s2Step155CounterWork : List Wire := [790, 797, 867, 877]

private theorem s2Step155Counter_bounded : s2Step155CounterWork.toFinset⊆arenaWires := by norm_num [s2Step155CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step155HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155CounterDuring : Arena := ⟨s2Step155HeadFvAfter.live∪s2Step155CounterWork.toFinset,Finset.union_subset s2Step155HeadFvAfter.bounded s2Step155Counter_bounded⟩

private def s2Step155EntryFFresh : List Wire := []

private def s2Step155EntryFvFresh : List Wire := []

private def s2Step155EntryGFresh : List Wire := []

private def s2Step155EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155EntryGvFresh : List Wire := [791]

private def s2Step155ExitFExtra : List Wire := [780]

private def s2Step155ExitFvExtra : List Wire := [849]

private def s2Step155ExitGExtra : List Wire := [847]

private def s2Step155ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155ExitGvAfter : Arena := s2Step155ExitFvAfter

private def s2Step155Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155Add0Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step155Add0_bounded : s2Step155Add0Work.toFinset⊆arenaWires := by
  have h : s2Step155Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step155Add0During : Arena := ⟨s2Step155Add0Arena.live∪s2Step155Add0Work.toFinset,Finset.union_subset s2Step155Add0Arena.bounded s2Step155Add0_bounded⟩

private def s2Step155Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155Add1Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step155Add1_bounded : s2Step155Add1Work.toFinset⊆arenaWires := by
  have h : s2Step155Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step155Add1During : Arena := ⟨s2Step155Add1Arena.live∪s2Step155Add1Work.toFinset,Finset.union_subset s2Step155Add1Arena.bounded s2Step155Add1_bounded⟩

private def s2Step155F4FlagArena : Arena := ⟨s2Step155HeadFvAfter.live∪{790},Finset.union_subset s2Step155HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step155F4Plan : HmrHybridF4Plan := ⟨s2Step155F4FlagArena,[790],s2Step155Add0Arena,[797],s2Step155Add0During,s2Step155Add0Work,s2Step155Add1During,s2Step155Add1Work⟩

private def s2Step155HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 780],768⟩

private def s2Step155HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 849],770⟩

private def s2Step155HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 847],769⟩

private def s2Step155HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private def s2Step155FrontHead : WindowBank := ⟨s2Step155HeadFOut,s2Step155HeadGOut,s2Step155HeadFvOut,s2Step155HeadGvOut⟩

private def s2Step155EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703],768⟩

private def s2Step155EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩

private def s2Step155EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],769⟩

private def s2Step155EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791],771⟩

private def s2Step155FrontPair : WindowBank := ⟨s2Step155EntryFOut,s2Step155EntryGOut,s2Step155EntryFvOut,s2Step155EntryGvOut⟩

private def s2Step155FrontSigmaArena : Arena := ⟨s2Step155EntryGvAfter.live∪{778},Finset.union_subset s2Step155EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step155HeadFFresh : List Wire := [780]

private def s2Step155HeadFvFresh : List Wire := [849]

private def s2Step155HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155HeadGFresh : List Wire := [847]

private def s2Step155HeadGvFresh : List Wire := [839]

private def s2Step155FrontPlan : HmrSourceFront := ⟨s2Step155EntryGvAfter,s2Step155FrontPair,(growRow 768 s2Step155EntryFFresh ++ (growRow 769 s2Step155EntryGFresh ++ (growRow 770 s2Step155EntryFvFresh ++ (growRow 771 s2Step155EntryGvFresh ++ [])))),s2Step155FrontSigmaArena,[778],s2Step155HeadGBefore,[801],
  s2Step155HeadFvAfter,s2Step155FrontHead,(growRow 769 s2Step155HeadGFresh ++ (growRow 768 s2Step155HeadFFresh ++ (growRow 771 s2Step155HeadGvFresh ++ (growRow 770 s2Step155HeadFvFresh ++ [])))),s2Step155F4Plan,s2Step155CounterDuring,s2Step155CounterWork,s2Step155ExitGvAfter,s2Step155FrontOut,(shrinkRow 769 s2Step155ExitGExtra ++ (shrinkRow 768 s2Step155ExitFExtra ++ (shrinkRow 770 s2Step155ExitFvExtra ++ (growRow 771 [] ++ []))))⟩

private def s2Step155CompletePlan : HmrEarlyStepPlan := ⟨s2Step155FrontPlan,s2Step155EarlyControlArena,s2Step155EarlyControlPlan,s2Step155CompleteMoves⟩

private theorem s2Step155Complete_apart : List.Disjoint (s2Step155CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [778, 801, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step155CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[778, 801, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step155Complete_owned : (s2Step155CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step155EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step155EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155Complete_repack : s2Step155ExitGvAfter.checkRepack s2Step155CompleteMoves=some s2Step155EarlyControlArena := by rfl

private theorem s2Step155EarlyControl_branchOwned : ([801] : List Wire).toFinset⊆s2Step155EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step155EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155EarlyControl_branch : compileHmrBranchRetirement s2Step155EarlyControlSigmaArena 801=some s2Step155EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step155EarlyControl_branchOwned
  · ext q
    simp [s2Step155EarlyControlOutputArena,s2Step155EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step155EarlyControl_classEqualityBorrow : s2Step155EarlyControlPositiveArena.checkBorrow (([778, 867] : List Wire).length-1) s2Step155EarlyControlLog.classWork=some s2Step155EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step155EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step155EarlyControlPositiveArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step155EarlyControlEqualityArena,s2Step155EarlyControlPositiveArena,s2Step155EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step155EarlyControl_classEqualityOwned : ([778, 867] : List Wire).toFinset⊆s2Step155EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step155EarlyControlPositiveArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155EarlyControl_classEquality : compileHmrEqualityLog s2Step155EarlyControlPositiveArena [778, 867] 0 s2Step155EarlyControlLog.classWork=some (s2Step155EarlyControlEqualityArena,s2Step155EarlyControlLog.classWork,s2Step155EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step155EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step155EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step155EarlyControl_classOwned : ([777, 797, 778] : List Wire).toFinset⊆s2Step155EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step155EarlyControlZeroArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155EarlyControl_positiveBorrow : s2Step155EarlyControlZeroArena.checkBorrow (1) s2Step155EarlyControlLog.positiveWork=some s2Step155EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step155EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step155EarlyControlZeroArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step155EarlyControlPositiveArena,s2Step155EarlyControlZeroArena,s2Step155EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step155EarlyControl_class : compileHmrSourceClassLog s2Step155EarlyControlZeroArena false 777 s2Step155EarlyControlZeroPlan.top 0 778 s2Step155EarlyControlLog.positiveWork s2Step155EarlyControlLog.classWork=some s2Step155EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step155EarlyControlClassPlan s2Step155EarlyControlZeroArena false 777 s2Step155EarlyControlZeroPlan.top 0 778
  constructor
  · decide +kernel
  · exact s2Step155EarlyControl_classOwned
  · exact s2Step155EarlyControl_positiveBorrow
  · exact s2Step155EarlyControl_classEquality

private theorem s2Step155EarlyControl_entryRecordOwned : ([801, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step155EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step155EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155EarlyControl_entrySigmaOwned : ([778, 254] : List Wire).toFinset⊆s2Step155EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step155EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155EarlyControl_fitBorrow : s2Step155EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step155EarlyControlLog.recordFresh=some s2Step155EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step155EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step155EarlyControlFlagArena (fun q => (0≤q ∧ q<892)) rfl
      decide +kernel
    · ext q
      simp [s2Step155EarlyControlFittedArena,s2Step155EarlyControlFlagArena,s2Step155EarlyControlLog,arenaWires]

private theorem s2Step155EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step155EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step155EarlyControlFlagArena (fun q => (0≤q ∧ q<892)) rfl
  decide +kernel

private theorem s2Step155EarlyControl_fit : compileHmrRecordGrowLog s2Step155EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step155EarlyControlLog.recordFresh=some s2Step155EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step155EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step155EarlyControl_fitBorrow

private theorem s2Step155EarlyControl_flagsBorrow : s2Step155EarlyControlEqualityArena.checkBorrow (6) s2Step155EarlyControlLog.flagWork=some s2Step155EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step155EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step155EarlyControlEqualityArena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step155EarlyControlFlagArena,s2Step155EarlyControlEqualityArena,s2Step155EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step155EarlyControl_flagsOwned : ([877, 253, 252, 251] : List Wire).toFinset⊆s2Step155EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step155EarlyControlEqualityArena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155EarlyControl_flags : compileHmrFlagsLog s2Step155EarlyControlClassPlan.equalityArena s2Step155EarlyControlClassPlan.equality.top 253 252 251 s2Step155EarlyControlLog.flagWork=some s2Step155EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step155EarlyControl_flagsOwned⟩
  · exact s2Step155EarlyControl_flagsBorrow

private theorem s2Step155EarlyControl_historyBorrow : s2Step155EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step155EarlyControlLog.recordFresh=some s2Step155EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step155EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step155EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step155EarlyControlHistoryArena,s2Step155EarlyControlArena,s2Step155EarlyControlLog,arenaWires]

private theorem s2Step155EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step155EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step155EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155EarlyControl_history : compileHmrRecordGrowLog s2Step155EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step155EarlyControlLog.recordFresh=some s2Step155EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step155EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step155EarlyControl_historyBorrow

private theorem s2Step155EarlyControl_sigmaOwned : ([254, 778] : List Wire).toFinset⊆s2Step155EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step155EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155EarlyControl_sigmaReleaseOwned : ([778] : List Wire).toFinset⊆s2Step155EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step155EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155EarlyControl_sigmaRelease : s2Step155EarlyControlHistoryArena.release {778} (fun _ => false)=some s2Step155EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step155EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step155EarlyControlSigmaArena,s2Step155EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step155EarlyControl_sigma : compileHmrSigmaDropLog s2Step155EarlyControlHistoryArena false 0 0 254 778 []=some s2Step155EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step155EarlyControl_sigmaOwned⟩
  · exact s2Step155EarlyControl_sigmaRelease

private theorem s2Step155EarlyControl_zeroBorrow : s2Step155EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step155EarlyControlLog.zeroWork=some s2Step155EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step155EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step155EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step155EarlyControlZeroArena,s2Step155EarlyControlArena,s2Step155EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step155EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step155EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step155EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155EarlyControl_zero : compileHmrEqualityLog s2Step155EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step155EarlyControlLog.zeroWork=some (s2Step155EarlyControlZeroArena,s2Step155EarlyControlLog.zeroWork,s2Step155EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step155EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step155EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step155EarlyControl_logged : s2Step155EarlyControlPlan.Logged s2Step155EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 801 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step155EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step155EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step155EarlyControl_zero
  · exact s2Step155EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step155EarlyControl_flags
  · exact s2Step155EarlyControl_fit
  · exact s2Step155EarlyControl_history
  · exact s2Step155EarlyControl_sigma
  · exact s2Step155EarlyControl_branch

private theorem s2Step155EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step155EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 801 42 s2Step155EarlyControlLog=some s2Step155EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step155EarlyControlPlan s2Step155EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 801 42 s2Step155EarlyControl_logged

private def s2Step155EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703],768⟩

private def s2Step155EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩

private def s2Step155EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],769⟩

private def s2Step155EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786],771⟩

private def s2Step155FrontBank : WindowBank := ⟨s2Step155EntryFRow,s2Step155EntryGRow,s2Step155EntryFvRow,s2Step155EntryGvRow⟩

private def s2Step155Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 780, 768]

private def s2Step155Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 847, 769]

private def s2Step155Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 849, 770]

private def s2Step155Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 771]

private theorem s2Step155Counter_apart : Disjoint s2Step155HeadFvAfter.live s2Step155CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step155HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155Counter_borrowed : s2Step155HeadFvAfter.checkBorrow 4 s2Step155CounterWork=some s2Step155CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step155HeadFvAfter s2Step155CounterDuring s2Step155CounterWork.toFinset s2Step155Counter_bounded s2Step155Counter_apart rfl

private theorem s2Step155Counter_owned : (778::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step155HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step155HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155Counter_checked : compileHmrCounterStepLog s2Step155HeadFvAfter true 778 [772, 773, 774, 775, 776, 777] s2Step155CounterWork=some s2Step155CounterDuring := by
  have owned : ∀q∈778::[772, 773, 774, 775, 776, 777],q∈s2Step155HeadFvAfter.live := fun q hq => s2Step155Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step155Counter_borrowed

private def s2Step155EntryFAfter : Arena := s2Step155EntryFBefore

private theorem s2Step155EntryBank_incomingDistinct : ([s2Step155EntryFRow,s2Step155EntryGRow,s2Step155EntryFvRow,s2Step155EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155EntryF_Incoming : rowsOwned s2Step155EntryFBefore [s2Step155EntryFRow,s2Step155EntryGRow,s2Step155EntryFvRow,s2Step155EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step155EntryFRow,s2Step155EntryGRow,s2Step155EntryFvRow,s2Step155EntryGvRow] 0 s2Step155EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step155EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step155EntryBank_outgoingOwned : rowsOwned s2Step155EntryGvAfter [s2Step155EntryFOut,s2Step155EntryGOut,s2Step155EntryFvOut,s2Step155EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step155EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step155EntryF_Outgoing : rowsOwned s2Step155EntryGvAfter [s2Step155EntryFOut,s2Step155EntryGOut,s2Step155EntryFvOut,s2Step155EntryGvOut] :=
  hmrRows_owned_drop s2Step155EntryGvAfter [s2Step155EntryFOut,s2Step155EntryGOut,s2Step155EntryFvOut,s2Step155EntryGvOut] 0 s2Step155EntryBank_outgoingOwned

private theorem s2Step155EntryF_distinct : (s2Step155EntryFRow.sign::s2Step155EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155EntryF_owned : (s2Step155EntryFRow.sign::s2Step155EntryFRow.payload).toFinset⊆s2Step155EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step155EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155EntryF_reserved : s2Step155EntryFBefore.reserve s2Step155EntryFFresh.toFinset=some s2Step155EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step155EntryFFresh,arenaWires]
  · norm_num [s2Step155EntryFBefore,s2Step155EntryFFresh,arenaWires]
  · simp only [s2Step155EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step155EntryF_checked : planRowResizeLog s2Step155EntryFBefore s2Step155EntryFRow 192 s2Step155EntryFFresh=
    some (s2Step155EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703],768⟩,growRow 768 s2Step155EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step155EntryFBefore s2Step155EntryFAfter s2Step155EntryFRow 192 s2Step155EntryFFresh
    s2Step155EntryF_distinct s2Step155EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step155EntryF_reserved
  have rowEq : WindowRow.mk (s2Step155EntryFRow.payload++s2Step155EntryFFresh) s2Step155EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step155EntryFvAfter : Arena := s2Step155EntryFBefore

private def s2Step155EntryFvBefore : Arena := s2Step155EntryFBefore

private theorem s2Step155EntryFv_Incoming : rowsOwned s2Step155EntryFvBefore [s2Step155EntryFvRow,s2Step155EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step155EntryFRow,s2Step155EntryGRow,s2Step155EntryFvRow,s2Step155EntryGvRow] 2 s2Step155EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step155EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step155EntryFv_Outgoing : rowsOwned s2Step155EntryGvAfter [s2Step155EntryFvOut,s2Step155EntryGvOut] :=
  hmrRows_owned_drop s2Step155EntryGvAfter [s2Step155EntryFOut,s2Step155EntryGOut,s2Step155EntryFvOut,s2Step155EntryGvOut] 2 s2Step155EntryBank_outgoingOwned

private theorem s2Step155EntryFv_distinct : (s2Step155EntryFvRow.sign::s2Step155EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155EntryFv_owned : (s2Step155EntryFvRow.sign::s2Step155EntryFvRow.payload).toFinset⊆s2Step155EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step155EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155EntryFv_reserved : s2Step155EntryFvBefore.reserve s2Step155EntryFvFresh.toFinset=some s2Step155EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step155EntryFvFresh,arenaWires]
  · norm_num [s2Step155EntryFvBefore,s2Step155EntryFBefore,s2Step155EntryFvFresh,arenaWires]
  · simp only [s2Step155EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step155EntryFv_checked : planRowResizeLog s2Step155EntryFvBefore s2Step155EntryFvRow 92 s2Step155EntryFvFresh=
    some (s2Step155EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩,growRow 770 s2Step155EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step155EntryFvBefore s2Step155EntryFvAfter s2Step155EntryFvRow 92 s2Step155EntryFvFresh
    s2Step155EntryFv_distinct s2Step155EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step155EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step155EntryFvRow.payload++s2Step155EntryFvFresh) s2Step155EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step155EntryGAfter : Arena := s2Step155EntryFBefore

private def s2Step155EntryGBefore : Arena := s2Step155EntryFBefore

private theorem s2Step155EntryG_Incoming : rowsOwned s2Step155EntryGBefore [s2Step155EntryGRow,s2Step155EntryFvRow,s2Step155EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step155EntryFRow,s2Step155EntryGRow,s2Step155EntryFvRow,s2Step155EntryGvRow] 1 s2Step155EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step155EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step155EntryG_Outgoing : rowsOwned s2Step155EntryGvAfter [s2Step155EntryGOut,s2Step155EntryFvOut,s2Step155EntryGvOut] :=
  hmrRows_owned_drop s2Step155EntryGvAfter [s2Step155EntryFOut,s2Step155EntryGOut,s2Step155EntryFvOut,s2Step155EntryGvOut] 1 s2Step155EntryBank_outgoingOwned

private theorem s2Step155EntryG_distinct : (s2Step155EntryGRow.sign::s2Step155EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155EntryG_owned : (s2Step155EntryGRow.sign::s2Step155EntryGRow.payload).toFinset⊆s2Step155EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step155EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155EntryG_reserved : s2Step155EntryGBefore.reserve s2Step155EntryGFresh.toFinset=some s2Step155EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step155EntryGFresh,arenaWires]
  · norm_num [s2Step155EntryGBefore,s2Step155EntryFBefore,s2Step155EntryGFresh,arenaWires]
  · simp only [s2Step155EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step155EntryG_checked : planRowResizeLog s2Step155EntryGBefore s2Step155EntryGRow 192 s2Step155EntryGFresh=
    some (s2Step155EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],769⟩,growRow 769 s2Step155EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step155EntryGBefore s2Step155EntryGAfter s2Step155EntryGRow 192 s2Step155EntryGFresh
    s2Step155EntryG_distinct s2Step155EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step155EntryG_reserved
  have rowEq : WindowRow.mk (s2Step155EntryGRow.payload++s2Step155EntryGFresh) s2Step155EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step155EntryGvBefore : Arena := s2Step155EntryFBefore

private theorem s2Step155EntryGv_Incoming : rowsOwned s2Step155EntryGvBefore [s2Step155EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step155EntryFRow,s2Step155EntryGRow,s2Step155EntryFvRow,s2Step155EntryGvRow] 3 s2Step155EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step155EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step155EntryGv_Outgoing : rowsOwned s2Step155EntryGvAfter [s2Step155EntryGvOut] :=
  hmrRows_owned_drop s2Step155EntryGvAfter [s2Step155EntryFOut,s2Step155EntryGOut,s2Step155EntryFvOut,s2Step155EntryGvOut] 3 s2Step155EntryBank_outgoingOwned

private theorem s2Step155EntryGv_distinct : (s2Step155EntryGvRow.sign::s2Step155EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155EntryGv_owned : (s2Step155EntryGvRow.sign::s2Step155EntryGvRow.payload).toFinset⊆s2Step155EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step155EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155EntryGv_reserved : s2Step155EntryGvBefore.reserve s2Step155EntryGvFresh.toFinset=some s2Step155EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step155EntryGvFresh,arenaWires]
  · norm_num [s2Step155EntryGvBefore,s2Step155EntryFBefore,s2Step155EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step155EntryGvAfter,s2Step155EntryGvBefore,s2Step155EntryFBefore,s2Step155EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step155EntryGv_checked : planRowResizeLog s2Step155EntryGvBefore s2Step155EntryGvRow 92 s2Step155EntryGvFresh=
    some (s2Step155EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791],771⟩,growRow 771 s2Step155EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step155EntryGvBefore s2Step155EntryGvAfter s2Step155EntryGvRow 92 s2Step155EntryGvFresh
    s2Step155EntryGv_distinct s2Step155EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step155EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step155EntryGvRow.payload++s2Step155EntryGvFresh) s2Step155EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step155EntryBank_rows : planWindowRowsLog s2Step155EntryFBefore [(s2Step155EntryFRow,192),(s2Step155EntryGRow,192),(s2Step155EntryFvRow,92),(s2Step155EntryGvRow,92)] [s2Step155EntryFFresh,s2Step155EntryGFresh,s2Step155EntryFvFresh,s2Step155EntryGvFresh]=
    some (s2Step155EntryGvAfter,[s2Step155EntryFOut,s2Step155EntryGOut,s2Step155EntryFvOut,s2Step155EntryGvOut],(growRow 768 s2Step155EntryFFresh ++ (growRow 769 s2Step155EntryGFresh ++ (growRow 770 s2Step155EntryFvFresh ++ (growRow 771 s2Step155EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step155EntryGvAfter [] []=some (s2Step155EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step155EntryGvBefore s2Step155EntryGvAfter s2Step155EntryGvAfter
    s2Step155EntryGvRow s2Step155EntryGvOut 92 s2Step155EntryGvFresh [] [] []
    (growRow 771 s2Step155EntryGvFresh) ([]) s2Step155EntryGv_Incoming s2Step155EntryGv_checked h4 s2Step155EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step155EntryFvBefore s2Step155EntryFvAfter s2Step155EntryGvAfter
    s2Step155EntryFvRow s2Step155EntryFvOut 92 s2Step155EntryFvFresh [(s2Step155EntryGvRow,92)] [s2Step155EntryGvFresh] [s2Step155EntryGvOut]
    (growRow 770 s2Step155EntryFvFresh) ((growRow 771 s2Step155EntryGvFresh ++ [])) s2Step155EntryFv_Incoming s2Step155EntryFv_checked h3 s2Step155EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step155EntryGBefore s2Step155EntryGAfter s2Step155EntryGvAfter
    s2Step155EntryGRow s2Step155EntryGOut 192 s2Step155EntryGFresh [(s2Step155EntryFvRow,92),(s2Step155EntryGvRow,92)] [s2Step155EntryFvFresh,s2Step155EntryGvFresh] [s2Step155EntryFvOut,s2Step155EntryGvOut]
    (growRow 769 s2Step155EntryGFresh) ((growRow 770 s2Step155EntryFvFresh ++ (growRow 771 s2Step155EntryGvFresh ++ []))) s2Step155EntryG_Incoming s2Step155EntryG_checked h2 s2Step155EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step155EntryFBefore s2Step155EntryFAfter s2Step155EntryGvAfter
    s2Step155EntryFRow s2Step155EntryFOut 192 s2Step155EntryFFresh [(s2Step155EntryGRow,192),(s2Step155EntryFvRow,92),(s2Step155EntryGvRow,92)] [s2Step155EntryGFresh,s2Step155EntryFvFresh,s2Step155EntryGvFresh] [s2Step155EntryGOut,s2Step155EntryFvOut,s2Step155EntryGvOut]
    (growRow 768 s2Step155EntryFFresh) ((growRow 769 s2Step155EntryGFresh ++ (growRow 770 s2Step155EntryFvFresh ++ (growRow 771 s2Step155EntryGvFresh ++ [])))) s2Step155EntryF_Incoming s2Step155EntryF_checked h1 s2Step155EntryF_Outgoing
  exact h0

private theorem s2Step155EntryBank_checked : compileHmrBankResizeLog .entry s2Step155EntryFBefore ⟨s2Step155EntryFRow,s2Step155EntryGRow,s2Step155EntryFvRow,s2Step155EntryGvRow⟩ ⟨192,192,92,92⟩ [s2Step155EntryFFresh,s2Step155EntryGFresh,s2Step155EntryFvFresh,s2Step155EntryGvFresh]=
    some (s2Step155EntryGvAfter,⟨s2Step155EntryFOut,s2Step155EntryGOut,s2Step155EntryFvOut,s2Step155EntryGvOut⟩,(growRow 768 s2Step155EntryFFresh ++ (growRow 769 s2Step155EntryGFresh ++ (growRow 770 s2Step155EntryFvFresh ++ (growRow 771 s2Step155EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step155EntryBank_rows]
  rfl

private def s2Step155ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155ExitFBefore : Arena := s2Step155ExitGAfter

private def s2Step155ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 780],768⟩

private def s2Step155ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 849],770⟩

private def s2Step155ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 847],769⟩

private def s2Step155ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private theorem s2Step155ExitBank_incomingDistinct : ([s2Step155ExitGRow,s2Step155ExitFRow,s2Step155ExitFvRow,s2Step155ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155ExitF_Incoming : rowsOwned s2Step155ExitFBefore [s2Step155ExitFRow,s2Step155ExitFvRow,s2Step155ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step155ExitGRow,s2Step155ExitFRow,s2Step155ExitFvRow,s2Step155ExitGvRow] 1 s2Step155ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step155ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step155ExitBank_outgoingOwned : rowsOwned s2Step155ExitGvAfter [s2Step155ExitGOut,s2Step155ExitFOut,s2Step155ExitFvOut,s2Step155ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step155ExitGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step155ExitF_Outgoing : rowsOwned s2Step155ExitGvAfter [s2Step155ExitFOut,s2Step155ExitFvOut,s2Step155ExitGvOut] :=
  hmrRows_owned_drop s2Step155ExitGvAfter [s2Step155ExitGOut,s2Step155ExitFOut,s2Step155ExitFvOut,s2Step155ExitGvOut] 1 s2Step155ExitBank_outgoingOwned

private theorem s2Step155ExitF_distinct : (s2Step155ExitFRow.sign::s2Step155ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155ExitF_owned : (s2Step155ExitFRow.sign::s2Step155ExitFRow.payload).toFinset⊆s2Step155ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step155ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155ExitF_retired : s2Step155ExitFBefore.retireSet s2Step155ExitFExtra.toFinset=s2Step155ExitFAfter := by
  unfold Arena.retireSet s2Step155ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step155ExitFBefore,s2Step155ExitGAfter,s2Step155ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step155ExitF_checked : planRowResizeLog s2Step155ExitFBefore s2Step155ExitFRow 192 []=
    some (s2Step155ExitFAfter,s2Step155ExitFOut,shrinkRow 768 s2Step155ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step155ExitFBefore s2Step155ExitFRow 192 s2Step155ExitF_distinct s2Step155ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step155ExitFRow.payload.take 192) s2Step155ExitFRow.sign=s2Step155ExitFOut := by decide +kernel
  have hi : s2Step155ExitFRow.payload.drop 192=s2Step155ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step155ExitF_retired] at result
  exact result

private def s2Step155ExitFvBefore : Arena := s2Step155ExitFAfter

private theorem s2Step155ExitFv_Incoming : rowsOwned s2Step155ExitFvBefore [s2Step155ExitFvRow,s2Step155ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step155ExitGRow,s2Step155ExitFRow,s2Step155ExitFvRow,s2Step155ExitGvRow] 2 s2Step155ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step155ExitFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step155ExitFv_Outgoing : rowsOwned s2Step155ExitGvAfter [s2Step155ExitFvOut,s2Step155ExitGvOut] :=
  hmrRows_owned_drop s2Step155ExitGvAfter [s2Step155ExitGOut,s2Step155ExitFOut,s2Step155ExitFvOut,s2Step155ExitGvOut] 2 s2Step155ExitBank_outgoingOwned

private theorem s2Step155ExitFv_distinct : (s2Step155ExitFvRow.sign::s2Step155ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155ExitFv_owned : (s2Step155ExitFvRow.sign::s2Step155ExitFvRow.payload).toFinset⊆s2Step155ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step155ExitFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155ExitFv_retired : s2Step155ExitFvBefore.retireSet s2Step155ExitFvExtra.toFinset=s2Step155ExitFvAfter := by
  unfold Arena.retireSet s2Step155ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step155ExitFvBefore,s2Step155ExitFAfter,s2Step155ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step155ExitFv_checked : planRowResizeLog s2Step155ExitFvBefore s2Step155ExitFvRow 92 []=
    some (s2Step155ExitFvAfter,s2Step155ExitFvOut,shrinkRow 770 s2Step155ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step155ExitFvBefore s2Step155ExitFvRow 92 s2Step155ExitFv_distinct s2Step155ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step155ExitFvRow.payload.take 92) s2Step155ExitFvRow.sign=s2Step155ExitFvOut := by decide +kernel
  have hi : s2Step155ExitFvRow.payload.drop 92=s2Step155ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step155ExitFv_retired] at result
  exact result

private def s2Step155ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step155ExitG_Incoming : rowsOwned s2Step155ExitGBefore [s2Step155ExitGRow,s2Step155ExitFRow,s2Step155ExitFvRow,s2Step155ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step155ExitGRow,s2Step155ExitFRow,s2Step155ExitFvRow,s2Step155ExitGvRow] 0 s2Step155ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step155ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step155ExitG_Outgoing : rowsOwned s2Step155ExitGvAfter [s2Step155ExitGOut,s2Step155ExitFOut,s2Step155ExitFvOut,s2Step155ExitGvOut] :=
  hmrRows_owned_drop s2Step155ExitGvAfter [s2Step155ExitGOut,s2Step155ExitFOut,s2Step155ExitFvOut,s2Step155ExitGvOut] 0 s2Step155ExitBank_outgoingOwned

private theorem s2Step155ExitG_distinct : (s2Step155ExitGRow.sign::s2Step155ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155ExitG_owned : (s2Step155ExitGRow.sign::s2Step155ExitGRow.payload).toFinset⊆s2Step155ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step155ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155ExitG_retired : s2Step155ExitGBefore.retireSet s2Step155ExitGExtra.toFinset=s2Step155ExitGAfter := by
  unfold Arena.retireSet s2Step155ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step155ExitGBefore,s2Step155ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step155ExitG_checked : planRowResizeLog s2Step155ExitGBefore s2Step155ExitGRow 192 []=
    some (s2Step155ExitGAfter,s2Step155ExitGOut,shrinkRow 769 s2Step155ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step155ExitGBefore s2Step155ExitGRow 192 s2Step155ExitG_distinct s2Step155ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step155ExitGRow.payload.take 192) s2Step155ExitGRow.sign=s2Step155ExitGOut := by decide +kernel
  have hi : s2Step155ExitGRow.payload.drop 192=s2Step155ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step155ExitG_retired] at result
  exact result

private def s2Step155ExitGvBefore : Arena := s2Step155ExitFvAfter

private theorem s2Step155ExitGv_Incoming : rowsOwned s2Step155ExitGvBefore [s2Step155ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step155ExitGRow,s2Step155ExitFRow,s2Step155ExitFvRow,s2Step155ExitGvRow] 3 s2Step155ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step155ExitGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step155ExitGv_Outgoing : rowsOwned s2Step155ExitGvAfter [s2Step155ExitGvOut] :=
  hmrRows_owned_drop s2Step155ExitGvAfter [s2Step155ExitGOut,s2Step155ExitFOut,s2Step155ExitFvOut,s2Step155ExitGvOut] 3 s2Step155ExitBank_outgoingOwned

private theorem s2Step155ExitGv_distinct : (s2Step155ExitGvRow.sign::s2Step155ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155ExitGv_owned : (s2Step155ExitGvRow.sign::s2Step155ExitGvRow.payload).toFinset⊆s2Step155ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step155ExitGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155ExitGv_reserved : s2Step155ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step155ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step155ExitGv_checked : planRowResizeLog s2Step155ExitGvBefore s2Step155ExitGvRow 93 []=
    some (s2Step155ExitGvAfter,s2Step155ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step155ExitGvBefore s2Step155ExitGvAfter s2Step155ExitGvRow 93 []
    s2Step155ExitGv_distinct s2Step155ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step155ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step155ExitGvRow.payload++[]) s2Step155ExitGvRow.sign=s2Step155ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step155ExitBank_rows : planWindowRowsLog s2Step155ExitGBefore [(s2Step155ExitGRow,192),(s2Step155ExitFRow,192),(s2Step155ExitFvRow,92),(s2Step155ExitGvRow,93)] [[],[],[],[]]=
    some (s2Step155ExitGvAfter,[s2Step155ExitGOut,s2Step155ExitFOut,s2Step155ExitFvOut,s2Step155ExitGvOut],(shrinkRow 769 s2Step155ExitGExtra ++ (shrinkRow 768 s2Step155ExitFExtra ++ (shrinkRow 770 s2Step155ExitFvExtra ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step155ExitGvAfter [] []=some (s2Step155ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step155ExitGvBefore s2Step155ExitGvAfter s2Step155ExitGvAfter
    s2Step155ExitGvRow s2Step155ExitGvOut 93 [] [] [] []
    (growRow 771 []) ([]) s2Step155ExitGv_Incoming s2Step155ExitGv_checked h4 s2Step155ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step155ExitFvBefore s2Step155ExitFvAfter s2Step155ExitGvAfter
    s2Step155ExitFvRow s2Step155ExitFvOut 92 [] [(s2Step155ExitGvRow,93)] [[]] [s2Step155ExitGvOut]
    (shrinkRow 770 s2Step155ExitFvExtra) ((growRow 771 [] ++ [])) s2Step155ExitFv_Incoming s2Step155ExitFv_checked h3 s2Step155ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step155ExitFBefore s2Step155ExitFAfter s2Step155ExitGvAfter
    s2Step155ExitFRow s2Step155ExitFOut 192 [] [(s2Step155ExitFvRow,92),(s2Step155ExitGvRow,93)] [[],[]] [s2Step155ExitFvOut,s2Step155ExitGvOut]
    (shrinkRow 768 s2Step155ExitFExtra) ((shrinkRow 770 s2Step155ExitFvExtra ++ (growRow 771 [] ++ []))) s2Step155ExitF_Incoming s2Step155ExitF_checked h2 s2Step155ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step155ExitGBefore s2Step155ExitGAfter s2Step155ExitGvAfter
    s2Step155ExitGRow s2Step155ExitGOut 192 [] [(s2Step155ExitFRow,192),(s2Step155ExitFvRow,92),(s2Step155ExitGvRow,93)] [[],[],[]] [s2Step155ExitFOut,s2Step155ExitFvOut,s2Step155ExitGvOut]
    (shrinkRow 769 s2Step155ExitGExtra) ((shrinkRow 768 s2Step155ExitFExtra ++ (shrinkRow 770 s2Step155ExitFvExtra ++ (growRow 771 [] ++ [])))) s2Step155ExitG_Incoming s2Step155ExitG_checked h1 s2Step155ExitG_Outgoing
  exact h0

private theorem s2Step155ExitBank_checked : compileHmrBankResizeLog .exit s2Step155ExitGBefore ⟨s2Step155ExitFRow,s2Step155ExitGRow,s2Step155ExitFvRow,s2Step155ExitGvRow⟩ ⟨192,192,92,93⟩ [[],[],[],[]]=
    some (s2Step155ExitGvAfter,⟨s2Step155ExitFOut,s2Step155ExitGOut,s2Step155ExitFvOut,s2Step155ExitGvOut⟩,(shrinkRow 769 s2Step155ExitGExtra ++ (shrinkRow 768 s2Step155ExitFExtra ++ (shrinkRow 770 s2Step155ExitFvExtra ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step155ExitBank_rows]
  rfl

private theorem s2Step155Add0_apart : Disjoint s2Step155Add0Arena.live s2Step155Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step155Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155Add0_card : s2Step155Add0Arena.live.card=884 := by
  decide +kernel

private theorem s2Step155Add0_borrowed : s2Step155Add0Arena.checkBorrow (hmrHybridCount s2Step155Add0Arena s2Step155Add0B.length) s2Step155Add0Work=some s2Step155Add0During := by
  have len : s2Step155Add0Work.length=hmrHybridCount s2Step155Add0Arena s2Step155Add0B.length := by
    rw [hmrHybridCount,s2Step155Add0_card]
    decide +kernel
  have nd : s2Step155Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step155Add0Arena s2Step155Add0During s2Step155Add0Work.toFinset s2Step155Add0_bounded s2Step155Add0_apart rfl

private theorem s2Step155Add0_distinct : (790::801::797::(s2Step155Add0A++s2Step155Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155Add0_owned : (790::801::797::(s2Step155Add0A++s2Step155Add0B)).toFinset⊆s2Step155Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step155Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155Add0_checked : compileHmrHybridCinLog s2Step155Add0Arena 801 790 797 s2Step155Add0A s2Step155Add0B s2Step155Add0Work=some s2Step155Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step155Add0Arena s2Step155Add0During 801 790 797 s2Step155Add0A s2Step155Add0B s2Step155Add0Work
    (by decide +kernel) (by decide +kernel) s2Step155Add0_distinct
    (fun q hq => s2Step155Add0_owned (List.mem_toFinset.mpr hq)) s2Step155Add0_borrowed

private theorem s2Step155Add1_apart : Disjoint s2Step155Add1Arena.live s2Step155Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step155Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155Add1_card : s2Step155Add1Arena.live.card=884 := by
  decide +kernel

private theorem s2Step155Add1_borrowed : s2Step155Add1Arena.checkBorrow (hmrHybridCount s2Step155Add1Arena s2Step155Add1B.length) s2Step155Add1Work=some s2Step155Add1During := by
  have len : s2Step155Add1Work.length=hmrHybridCount s2Step155Add1Arena s2Step155Add1B.length := by
    rw [hmrHybridCount,s2Step155Add1_card]
    decide +kernel
  have nd : s2Step155Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step155Add1Arena s2Step155Add1During s2Step155Add1Work.toFinset s2Step155Add1_bounded s2Step155Add1_apart rfl

private theorem s2Step155Add1_distinct : (790::801::797::(s2Step155Add1A++s2Step155Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155Add1_owned : (790::801::797::(s2Step155Add1A++s2Step155Add1B)).toFinset⊆s2Step155Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step155Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155Add1_checked : compileHmrHybridCinLog s2Step155Add1Arena 801 790 797 s2Step155Add1A s2Step155Add1B s2Step155Add1Work=some s2Step155Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step155Add1Arena s2Step155Add1During 801 790 797 s2Step155Add1A s2Step155Add1B s2Step155Add1Work
    (by decide +kernel) (by decide +kernel) s2Step155Add1_distinct
    (fun q hq => s2Step155Add1_owned (List.mem_toFinset.mpr hq)) s2Step155Add1_borrowed

private theorem s2Step155F4_apart : Disjoint (s2Step155Add0A++s2Step155Add0B).toFinset (s2Step155Add1A++s2Step155Add1B).toFinset := by
  have nd : ((s2Step155Add0A++s2Step155Add0B)++(s2Step155Add1A++s2Step155Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step155F4_carry : s2Step155F4FlagArena.checkBorrow 1 [797]=some s2Step155Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step155F4FlagArena,s2Step155HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step155F4FlagArena,s2Step155HeadFvAfter,s2Step155Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step155F4_distinct : (778::801::790::797::((s2Step155Add0A++s2Step155Add1A)++(s2Step155Add0B++s2Step155Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155F4_flag : s2Step155HeadFvAfter.checkBorrow 1 [790]=some s2Step155F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step155HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step155F4_owned : (778::801::((s2Step155Add0A++s2Step155Add1A)++(s2Step155Add0B++s2Step155Add1B))).toFinset⊆s2Step155HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step155HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155F4_checked : compileHmrHybridF4Log s2Step155HeadFvAfter 778 801 s2Step155Add0A s2Step155Add0B s2Step155Add1A s2Step155Add1B [790] [797] s2Step155Add0Work s2Step155Add1Work=some s2Step155F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step155HeadFvAfter s2Step155F4FlagArena s2Step155Add0Arena s2Step155Add0During s2Step155Add1During 778 801
    s2Step155Add0A s2Step155Add0B s2Step155Add1A s2Step155Add1B [790] [797] s2Step155Add0Work s2Step155Add1Work
    (fun q hq => s2Step155F4_owned (List.mem_toFinset.mpr hq)) s2Step155F4_flag s2Step155F4_carry
    s2Step155F4_distinct s2Step155F4_apart s2Step155Add0_checked s2Step155Add1_checked

private theorem s2Step155Front_branch : s2Step155FrontSigmaArena.checkBorrow 1 [801]=some s2Step155HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step155FrontSigmaArena,s2Step155EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step155FrontSigmaArena,s2Step155EntryGvAfter,s2Step155HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step155Front_entry : HmrFrontEntryValid s2Step155EntryFBefore s2Step155FrontBank 192 92 ⟨192,192,92,93⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step155FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step155EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step155EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<801) ∨ (802≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step155FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step155Front_sigma : s2Step155EntryGvAfter.checkBorrow 1 [778]=some s2Step155FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step155EntryGvAfter,arenaWires]
  · rfl

private def s2Step155HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155HeadFBefore : Arena := s2Step155HeadGAfter

private def s2Step155HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703],768⟩

private def s2Step155HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩

private def s2Step155HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],769⟩

private def s2Step155HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791],771⟩

private theorem s2Step155HeadBank_incomingDistinct : ([s2Step155HeadGRow,s2Step155HeadFRow,s2Step155HeadGvRow,s2Step155HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155HeadF_Incoming : rowsOwned s2Step155HeadFBefore [s2Step155HeadFRow,s2Step155HeadGvRow,s2Step155HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step155HeadGRow,s2Step155HeadFRow,s2Step155HeadGvRow,s2Step155HeadFvRow] 1 s2Step155HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step155HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step155HeadBank_outgoingOwned : rowsOwned s2Step155HeadFvAfter [s2Step155HeadGOut,s2Step155HeadFOut,s2Step155HeadGvOut,s2Step155HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step155HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step155HeadF_Outgoing : rowsOwned s2Step155HeadFvAfter [s2Step155HeadFOut,s2Step155HeadGvOut,s2Step155HeadFvOut] :=
  hmrRows_owned_drop s2Step155HeadFvAfter [s2Step155HeadGOut,s2Step155HeadFOut,s2Step155HeadGvOut,s2Step155HeadFvOut] 1 s2Step155HeadBank_outgoingOwned

private theorem s2Step155HeadF_distinct : (s2Step155HeadFRow.sign::s2Step155HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155HeadF_owned : (s2Step155HeadFRow.sign::s2Step155HeadFRow.payload).toFinset⊆s2Step155HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step155HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155HeadF_reserved : s2Step155HeadFBefore.reserve s2Step155HeadFFresh.toFinset=some s2Step155HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step155HeadFFresh,arenaWires]
  · norm_num [s2Step155HeadFBefore,s2Step155HeadGAfter,s2Step155HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step155HeadFAfter,s2Step155HeadFBefore,s2Step155HeadGAfter,s2Step155HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step155HeadF_checked : planRowResizeLog s2Step155HeadFBefore s2Step155HeadFRow 193 s2Step155HeadFFresh=
    some (s2Step155HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 780],768⟩,growRow 768 s2Step155HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step155HeadFBefore s2Step155HeadFAfter s2Step155HeadFRow 193 s2Step155HeadFFresh
    s2Step155HeadF_distinct s2Step155HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step155HeadF_reserved
  have rowEq : WindowRow.mk (s2Step155HeadFRow.payload++s2Step155HeadFFresh) s2Step155HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 780],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step155HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step155HeadFvBefore : Arena := s2Step155HeadGvAfter

private theorem s2Step155HeadFv_Incoming : rowsOwned s2Step155HeadFvBefore [s2Step155HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step155HeadGRow,s2Step155HeadFRow,s2Step155HeadGvRow,s2Step155HeadFvRow] 3 s2Step155HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step155HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step155HeadFv_Outgoing : rowsOwned s2Step155HeadFvAfter [s2Step155HeadFvOut] :=
  hmrRows_owned_drop s2Step155HeadFvAfter [s2Step155HeadGOut,s2Step155HeadFOut,s2Step155HeadGvOut,s2Step155HeadFvOut] 3 s2Step155HeadBank_outgoingOwned

private theorem s2Step155HeadFv_distinct : (s2Step155HeadFvRow.sign::s2Step155HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155HeadFv_owned : (s2Step155HeadFvRow.sign::s2Step155HeadFvRow.payload).toFinset⊆s2Step155HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step155HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155HeadFv_reserved : s2Step155HeadFvBefore.reserve s2Step155HeadFvFresh.toFinset=some s2Step155HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step155HeadFvFresh,arenaWires]
  · norm_num [s2Step155HeadFvBefore,s2Step155HeadGvAfter,s2Step155HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step155HeadFvAfter,s2Step155HeadFvBefore,s2Step155HeadGvAfter,s2Step155HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step155HeadFv_checked : planRowResizeLog s2Step155HeadFvBefore s2Step155HeadFvRow 93 s2Step155HeadFvFresh=
    some (s2Step155HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 849],770⟩,growRow 770 s2Step155HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step155HeadFvBefore s2Step155HeadFvAfter s2Step155HeadFvRow 93 s2Step155HeadFvFresh
    s2Step155HeadFv_distinct s2Step155HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step155HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step155HeadFvRow.payload++s2Step155HeadFvFresh) s2Step155HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 849],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step155HeadG_Incoming : rowsOwned s2Step155HeadGBefore [s2Step155HeadGRow,s2Step155HeadFRow,s2Step155HeadGvRow,s2Step155HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step155HeadGRow,s2Step155HeadFRow,s2Step155HeadGvRow,s2Step155HeadFvRow] 0 s2Step155HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step155HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step155HeadG_Outgoing : rowsOwned s2Step155HeadFvAfter [s2Step155HeadGOut,s2Step155HeadFOut,s2Step155HeadGvOut,s2Step155HeadFvOut] :=
  hmrRows_owned_drop s2Step155HeadFvAfter [s2Step155HeadGOut,s2Step155HeadFOut,s2Step155HeadGvOut,s2Step155HeadFvOut] 0 s2Step155HeadBank_outgoingOwned

private theorem s2Step155HeadG_distinct : (s2Step155HeadGRow.sign::s2Step155HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155HeadG_owned : (s2Step155HeadGRow.sign::s2Step155HeadGRow.payload).toFinset⊆s2Step155HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step155HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155HeadG_reserved : s2Step155HeadGBefore.reserve s2Step155HeadGFresh.toFinset=some s2Step155HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step155HeadGFresh,arenaWires]
  · norm_num [s2Step155HeadGBefore,s2Step155HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step155HeadGAfter,s2Step155HeadGBefore,s2Step155HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step155HeadG_checked : planRowResizeLog s2Step155HeadGBefore s2Step155HeadGRow 193 s2Step155HeadGFresh=
    some (s2Step155HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 847],769⟩,growRow 769 s2Step155HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step155HeadGBefore s2Step155HeadGAfter s2Step155HeadGRow 193 s2Step155HeadGFresh
    s2Step155HeadG_distinct s2Step155HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step155HeadG_reserved
  have rowEq : WindowRow.mk (s2Step155HeadGRow.payload++s2Step155HeadGFresh) s2Step155HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 847],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step155HeadGvBefore : Arena := s2Step155HeadFAfter

private theorem s2Step155HeadGv_Incoming : rowsOwned s2Step155HeadGvBefore [s2Step155HeadGvRow,s2Step155HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step155HeadGRow,s2Step155HeadFRow,s2Step155HeadGvRow,s2Step155HeadFvRow] 2 s2Step155HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step155HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step155HeadGv_Outgoing : rowsOwned s2Step155HeadFvAfter [s2Step155HeadGvOut,s2Step155HeadFvOut] :=
  hmrRows_owned_drop s2Step155HeadFvAfter [s2Step155HeadGOut,s2Step155HeadFOut,s2Step155HeadGvOut,s2Step155HeadFvOut] 2 s2Step155HeadBank_outgoingOwned

private theorem s2Step155HeadGv_distinct : (s2Step155HeadGvRow.sign::s2Step155HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step155HeadGv_owned : (s2Step155HeadGvRow.sign::s2Step155HeadGvRow.payload).toFinset⊆s2Step155HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step155HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step155HeadGv_reserved : s2Step155HeadGvBefore.reserve s2Step155HeadGvFresh.toFinset=some s2Step155HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step155HeadGvFresh,arenaWires]
  · norm_num [s2Step155HeadGvBefore,s2Step155HeadFAfter,s2Step155HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step155HeadGvAfter,s2Step155HeadGvBefore,s2Step155HeadFAfter,s2Step155HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step155HeadGv_checked : planRowResizeLog s2Step155HeadGvBefore s2Step155HeadGvRow 93 s2Step155HeadGvFresh=
    some (s2Step155HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩,growRow 771 s2Step155HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step155HeadGvBefore s2Step155HeadGvAfter s2Step155HeadGvRow 93 s2Step155HeadGvFresh
    s2Step155HeadGv_distinct s2Step155HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step155HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step155HeadGvRow.payload++s2Step155HeadGvFresh) s2Step155HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step155HeadBank_rows : planWindowRowsLog s2Step155HeadGBefore [(s2Step155HeadGRow,193),(s2Step155HeadFRow,193),(s2Step155HeadGvRow,93),(s2Step155HeadFvRow,93)] [s2Step155HeadGFresh,s2Step155HeadFFresh,s2Step155HeadGvFresh,s2Step155HeadFvFresh]=
    some (s2Step155HeadFvAfter,[s2Step155HeadGOut,s2Step155HeadFOut,s2Step155HeadGvOut,s2Step155HeadFvOut],(growRow 769 s2Step155HeadGFresh ++ (growRow 768 s2Step155HeadFFresh ++ (growRow 771 s2Step155HeadGvFresh ++ (growRow 770 s2Step155HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step155HeadFvAfter [] []=some (s2Step155HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step155HeadFvBefore s2Step155HeadFvAfter s2Step155HeadFvAfter
    s2Step155HeadFvRow s2Step155HeadFvOut 93 s2Step155HeadFvFresh [] [] []
    (growRow 770 s2Step155HeadFvFresh) ([]) s2Step155HeadFv_Incoming s2Step155HeadFv_checked h4 s2Step155HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step155HeadGvBefore s2Step155HeadGvAfter s2Step155HeadFvAfter
    s2Step155HeadGvRow s2Step155HeadGvOut 93 s2Step155HeadGvFresh [(s2Step155HeadFvRow,93)] [s2Step155HeadFvFresh] [s2Step155HeadFvOut]
    (growRow 771 s2Step155HeadGvFresh) ((growRow 770 s2Step155HeadFvFresh ++ [])) s2Step155HeadGv_Incoming s2Step155HeadGv_checked h3 s2Step155HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step155HeadFBefore s2Step155HeadFAfter s2Step155HeadFvAfter
    s2Step155HeadFRow s2Step155HeadFOut 193 s2Step155HeadFFresh [(s2Step155HeadGvRow,93),(s2Step155HeadFvRow,93)] [s2Step155HeadGvFresh,s2Step155HeadFvFresh] [s2Step155HeadGvOut,s2Step155HeadFvOut]
    (growRow 768 s2Step155HeadFFresh) ((growRow 771 s2Step155HeadGvFresh ++ (growRow 770 s2Step155HeadFvFresh ++ []))) s2Step155HeadF_Incoming s2Step155HeadF_checked h2 s2Step155HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step155HeadGBefore s2Step155HeadGAfter s2Step155HeadFvAfter
    s2Step155HeadGRow s2Step155HeadGOut 193 s2Step155HeadGFresh [(s2Step155HeadFRow,193),(s2Step155HeadGvRow,93),(s2Step155HeadFvRow,93)] [s2Step155HeadFFresh,s2Step155HeadGvFresh,s2Step155HeadFvFresh] [s2Step155HeadFOut,s2Step155HeadGvOut,s2Step155HeadFvOut]
    (growRow 769 s2Step155HeadGFresh) ((growRow 768 s2Step155HeadFFresh ++ (growRow 771 s2Step155HeadGvFresh ++ (growRow 770 s2Step155HeadFvFresh ++ [])))) s2Step155HeadG_Incoming s2Step155HeadG_checked h1 s2Step155HeadG_Outgoing
  exact h0

private theorem s2Step155HeadBank_checked : compileHmrBankResizeLog .headroom s2Step155HeadGBefore ⟨s2Step155HeadFRow,s2Step155HeadGRow,s2Step155HeadFvRow,s2Step155HeadGvRow⟩ ⟨193,193,93,93⟩ [s2Step155HeadGFresh,s2Step155HeadFFresh,s2Step155HeadGvFresh,s2Step155HeadFvFresh]=
    some (s2Step155HeadFvAfter,⟨s2Step155HeadFOut,s2Step155HeadGOut,s2Step155HeadFvOut,s2Step155HeadGvOut⟩,(growRow 769 s2Step155HeadGFresh ++ (growRow 768 s2Step155HeadFFresh ++ (growRow 771 s2Step155HeadGvFresh ++ (growRow 770 s2Step155HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step155HeadBank_rows]
  rfl

private theorem s2Step155Front_checked : compileHmrSourceFrontLog s2Step155EntryFBefore s2Step155FrontBank 192 92 ⟨192,192,92,93⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step155FrontLog=some s2Step155FrontPlan := by
  have pairEq : s2Step155FrontPair=⟨s2Step155HeadFRow,s2Step155HeadGRow,s2Step155HeadFvRow,s2Step155HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step155FrontHead=⟨s2Step155ExitFRow,s2Step155ExitGRow,s2Step155ExitFvRow,s2Step155ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step155Add0A=s2Step155FrontHead.f.wires := by decide +kernel
  have gEq : s2Step155Add0B=s2Step155FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step155Add1A=s2Step155FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step155Add1B=s2Step155FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step155EntryFBefore s2Step155FrontBank 192 92 ⟨192,192,92,93⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step155FrontLog s2Step155FrontPlan
  · exact s2Step155Front_entry
  · exact s2Step155EntryBank_checked
  · exact s2Step155Front_sigma
  · rfl
  · exact s2Step155Front_branch
  · rfl
  · simpa only [s2Step155FrontPlan,pairEq] using s2Step155HeadBank_checked
  · simpa only [s2Step155FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step155F4_checked
  · exact s2Step155Counter_checked
  · rfl
  · simpa only [s2Step155FrontPlan,headEq] using s2Step155ExitBank_checked

private theorem s2Step155Complete_explicit_checked : compileHmrEarlyStepLog s2Step155EntryFBefore s2Step155FrontBank 192 92 ⟨192,192,92,93⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step155CompleteLog=some s2Step155CompletePlan := by
  let Q := s2Step155EarlyControlPlan
  have hq := s2Step155EarlyControl_plan_checked
  have fv1 : s2Step155CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step155CompleteOut.fv.payload[2]?.getD s2Step155CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step155CompleteOut.fv.payload[3]?.getD s2Step155CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step155CompleteOut.fv.payload[4]?.getD s2Step155CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step155EntryFBefore s2Step155EarlyControlArena s2Step155FrontBank 192 92 ⟨192,192,92,93⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step155CompleteLog s2Step155FrontPlan Q
    s2Step155Front_checked s2Step155Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step155Complete_owned s2Step155Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step155EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 s2Step155CompleteOut.fv.second (s2Step155CompleteOut.fv.payload[2]?.getD s2Step155CompleteOut.fv.sign) (s2Step155CompleteOut.fv.payload[3]?.getD s2Step155CompleteOut.fv.sign) (s2Step155CompleteOut.fv.payload[4]?.getD s2Step155CompleteOut.fv.sign) 801 42 s2Step155EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep155Arena : Arena := s2Step155EntryFBefore
def s2PrivateStep155Bank : WindowBank := s2Step155FrontBank
def s2PrivateStep155Spec : HmrSourceWalkStepLog := ⟨192,92,⟨192,192,92,93⟩,42,.early s2Step155CompleteLog⟩
def s2PrivateStep155Plan : HmrSourceStepPlan := .early s2Step155CompletePlan
theorem s2PrivateStep155_source : s2PrivateStep155Spec=s2ObservedLogs144[11] := rfl
theorem s2PrivateStep155_checked : compileHmrSourceStepLog s2PrivateStep155Arena s2PrivateStep155Bank
    s2PrivateStep155Spec.fgWidth s2PrivateStep155Spec.vWidth s2PrivateStep155Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 155 s2PrivateStep155Spec.need none s2PrivateStep155Spec.log=some s2PrivateStep155Plan := by
  change compileHmrSourceStepLog s2Step155EntryFBefore s2Step155FrontBank 192 92 ⟨192,192,92,93⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 155 42 none (.early s2Step155CompleteLog)=some (.early s2Step155CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 155<498)]
  rw [s2Step155Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
