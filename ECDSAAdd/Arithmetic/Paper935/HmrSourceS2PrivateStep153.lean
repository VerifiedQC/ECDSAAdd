import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep151
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

private def s2Step153CompleteMoves : List (Wire × Wire) := [(847,192)]

private def s2Step153EarlyControlLog : HmrEarlyControlLog := ⟨[847, 778, 791, 797, 849],[780],[839],[867, 877, 879, 882, 885, 888],[]⟩

private def s2Step153FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [779, 778, 791]],[[839], [780], [797], [849]],[[], [], [], []]⟩,[786],[790],[867],[877],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882]⟩

private def s2Step153CompleteLog : HmrEarlyStepLog := ⟨s2Step153FrontLog,s2Step153CompleteMoves,s2Step153EarlyControlLog⟩

private def s2Step153ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704],768⟩

private def s2Step153ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩

private def s2Step153ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],769⟩

private def s2Step153ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779],771⟩

private def s2Step153FrontOut : WindowBank := ⟨s2Step153ExitFOut,s2Step153ExitGOut,s2Step153ExitFvOut,s2Step153ExitGvOut⟩

private def s2Step153CompleteOut : WindowBank := s2Step153FrontOut.repacked s2Step153CompleteMoves

private def s2Step153EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step153EarlyControlPositiveArena,[780],s2Step153EarlyControlEqualityArena,[839],⟨⟨786,false⟩,[⟨⟨780,false⟩,839⟩]⟩⟩

private def s2Step153EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,847⟩,⟨⟨774,false⟩,778⟩,⟨⟨775,false⟩,791⟩,⟨⟨776,false⟩,797⟩,⟨⟨777,false⟩,849⟩]⟩

private def s2Step153EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step153EarlyControlZeroArena,s2Step153EarlyControlZeroPlan,s2Step153EarlyControlClassPlan,s2Step153EarlyControlFlagArena,s2Step153EarlyControlFittedArena,s2Step153EarlyControlHistoryArena,s2Step153EarlyControlSigmaArena,s2Step153EarlyControlOutputArena,s2Step153EarlyControlLog⟩

private def s2Step153CounterWork : List Wire := [867, 877, 879, 882]

private theorem s2Step153Counter_bounded : s2Step153CounterWork.toFinset⊆arenaWires := by norm_num [s2Step153CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step153HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153CounterDuring : Arena := ⟨s2Step153HeadFvAfter.live∪s2Step153CounterWork.toFinset,Finset.union_subset s2Step153HeadFvAfter.bounded s2Step153Counter_bounded⟩

private def s2Step153EntryFFresh : List Wire := []

private def s2Step153EntryFvFresh : List Wire := []

private def s2Step153EntryGFresh : List Wire := []

private def s2Step153EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153EntryGvFresh : List Wire := [779, 778, 791]

private def s2Step153ExitFExtra : List Wire := [780]

private def s2Step153ExitFvExtra : List Wire := [849]

private def s2Step153ExitGExtra : List Wire := [192, 839]

private def s2Step153ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<192) ∨ (193≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153ExitGvExtra : List Wire := [778, 791, 797]

private def s2Step153Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153Add0Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step153Add0_bounded : s2Step153Add0Work.toFinset⊆arenaWires := by
  have h : s2Step153Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step153Add0During : Arena := ⟨s2Step153Add0Arena.live∪s2Step153Add0Work.toFinset,Finset.union_subset s2Step153Add0Arena.bounded s2Step153Add0_bounded⟩

private def s2Step153Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153Add1Work : List Wire := [879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step153Add1_bounded : s2Step153Add1Work.toFinset⊆arenaWires := by
  have h : s2Step153Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step153Add1During : Arena := ⟨s2Step153Add1Arena.live∪s2Step153Add1Work.toFinset,Finset.union_subset s2Step153Add1Arena.bounded s2Step153Add1_bounded⟩

private def s2Step153F4FlagArena : Arena := ⟨s2Step153HeadFvAfter.live∪{867},Finset.union_subset s2Step153HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step153F4Plan : HmrHybridF4Plan := ⟨s2Step153F4FlagArena,[867],s2Step153Add0Arena,[877],s2Step153Add0During,s2Step153Add0Work,s2Step153Add1During,s2Step153Add1Work⟩

private def s2Step153HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 780],768⟩

private def s2Step153HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 849],770⟩

private def s2Step153HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 839],769⟩

private def s2Step153HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 778, 791, 797],771⟩

private def s2Step153FrontHead : WindowBank := ⟨s2Step153HeadFOut,s2Step153HeadGOut,s2Step153HeadFvOut,s2Step153HeadGvOut⟩

private def s2Step153EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704],768⟩

private def s2Step153EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩

private def s2Step153EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192],769⟩

private def s2Step153EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 778, 791],771⟩

private def s2Step153FrontPair : WindowBank := ⟨s2Step153EntryFOut,s2Step153EntryGOut,s2Step153EntryFvOut,s2Step153EntryGvOut⟩

private def s2Step153FrontSigmaArena : Arena := ⟨s2Step153EntryGvAfter.live∪{786},Finset.union_subset s2Step153EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step153HeadFFresh : List Wire := [780]

private def s2Step153HeadFvFresh : List Wire := [849]

private def s2Step153HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153HeadGFresh : List Wire := [839]

private def s2Step153HeadGvFresh : List Wire := [797]

private def s2Step153FrontPlan : HmrSourceFront := ⟨s2Step153EntryGvAfter,s2Step153FrontPair,(growRow 768 s2Step153EntryFFresh ++ (growRow 769 s2Step153EntryGFresh ++ (growRow 770 s2Step153EntryFvFresh ++ (growRow 771 s2Step153EntryGvFresh ++ [])))),s2Step153FrontSigmaArena,[786],s2Step153HeadGBefore,[790],
  s2Step153HeadFvAfter,s2Step153FrontHead,(growRow 769 s2Step153HeadGFresh ++ (growRow 768 s2Step153HeadFFresh ++ (growRow 771 s2Step153HeadGvFresh ++ (growRow 770 s2Step153HeadFvFresh ++ [])))),s2Step153F4Plan,s2Step153CounterDuring,s2Step153CounterWork,s2Step153ExitGvAfter,s2Step153FrontOut,(shrinkRow 769 s2Step153ExitGExtra ++ (shrinkRow 768 s2Step153ExitFExtra ++ (shrinkRow 770 s2Step153ExitFvExtra ++ (shrinkRow 771 s2Step153ExitGvExtra ++ []))))⟩

private def s2Step153CompletePlan : HmrEarlyStepPlan := ⟨s2Step153FrontPlan,s2Step153EarlyControlArena,s2Step153EarlyControlPlan,s2Step153CompleteMoves⟩

private theorem s2Step153Complete_apart : List.Disjoint (s2Step153CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [786, 790, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step153CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[786, 790, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step153Complete_owned : (s2Step153CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step153EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step153EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step153CompleteMoveArena : Arena := ⟨s2Step153ExitGvAfter.live∪{192},Finset.union_subset s2Step153ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step153Complete_repack : s2Step153ExitGvAfter.checkRepack s2Step153CompleteMoves=some s2Step153EarlyControlArena := by
  have owned : 847∈s2Step153ExitGvAfter.live := by norm_num [s2Step153ExitGvAfter,arenaWires]
  have reserve : s2Step153ExitGvAfter.reserve {192}=some s2Step153CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step153ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step153CompleteMoveArena.retireSet {847}=s2Step153EarlyControlArena := by
    unfold Arena.retireSet s2Step153EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step153CompleteMoveArena,s2Step153ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step153CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step153CompleteMoveArena.retireSet {847}).checkRepack []=some s2Step153EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step153EarlyControl_branchOwned : ([790] : List Wire).toFinset⊆s2Step153EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step153EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153EarlyControl_branch : compileHmrBranchRetirement s2Step153EarlyControlSigmaArena 790=some s2Step153EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step153EarlyControl_branchOwned
  · ext q
    simp [s2Step153EarlyControlOutputArena,s2Step153EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step153EarlyControl_classEqualityBorrow : s2Step153EarlyControlPositiveArena.checkBorrow (([786, 780] : List Wire).length-1) s2Step153EarlyControlLog.classWork=some s2Step153EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step153EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step153EarlyControlPositiveArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step153EarlyControlEqualityArena,s2Step153EarlyControlPositiveArena,s2Step153EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step153EarlyControl_classEqualityOwned : ([786, 780] : List Wire).toFinset⊆s2Step153EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step153EarlyControlPositiveArena (fun q => (0≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153EarlyControl_classEquality : compileHmrEqualityLog s2Step153EarlyControlPositiveArena [786, 780] 0 s2Step153EarlyControlLog.classWork=some (s2Step153EarlyControlEqualityArena,s2Step153EarlyControlLog.classWork,s2Step153EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step153EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step153EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step153EarlyControl_classOwned : ([777, 849, 786] : List Wire).toFinset⊆s2Step153EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step153EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153EarlyControl_positiveBorrow : s2Step153EarlyControlZeroArena.checkBorrow (1) s2Step153EarlyControlLog.positiveWork=some s2Step153EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step153EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step153EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step153EarlyControlPositiveArena,s2Step153EarlyControlZeroArena,s2Step153EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step153EarlyControl_class : compileHmrSourceClassLog s2Step153EarlyControlZeroArena false 777 s2Step153EarlyControlZeroPlan.top 0 786 s2Step153EarlyControlLog.positiveWork s2Step153EarlyControlLog.classWork=some s2Step153EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step153EarlyControlClassPlan s2Step153EarlyControlZeroArena false 777 s2Step153EarlyControlZeroPlan.top 0 786
  constructor
  · decide +kernel
  · exact s2Step153EarlyControl_classOwned
  · exact s2Step153EarlyControl_positiveBorrow
  · exact s2Step153EarlyControl_classEquality

private theorem s2Step153EarlyControl_entryRecordOwned : ([790, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step153EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step153EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153EarlyControl_entrySigmaOwned : ([786, 254] : List Wire).toFinset⊆s2Step153EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step153EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153EarlyControl_fitBorrow : s2Step153EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step153EarlyControlLog.recordFresh=some s2Step153EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step153EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step153EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step153EarlyControlFittedArena,s2Step153EarlyControlFlagArena,s2Step153EarlyControlLog,arenaWires]

private theorem s2Step153EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step153EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step153EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153EarlyControl_fit : compileHmrRecordGrowLog s2Step153EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step153EarlyControlLog.recordFresh=some s2Step153EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step153EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step153EarlyControl_fitBorrow

private theorem s2Step153EarlyControl_flagsBorrow : s2Step153EarlyControlEqualityArena.checkBorrow (6) s2Step153EarlyControlLog.flagWork=some s2Step153EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step153EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step153EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step153EarlyControlFlagArena,s2Step153EarlyControlEqualityArena,s2Step153EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step153EarlyControl_flagsOwned : ([839, 253, 252, 251] : List Wire).toFinset⊆s2Step153EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step153EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153EarlyControl_flags : compileHmrFlagsLog s2Step153EarlyControlClassPlan.equalityArena s2Step153EarlyControlClassPlan.equality.top 253 252 251 s2Step153EarlyControlLog.flagWork=some s2Step153EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step153EarlyControl_flagsOwned⟩
  · exact s2Step153EarlyControl_flagsBorrow

private theorem s2Step153EarlyControl_historyBorrow : s2Step153EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step153EarlyControlLog.recordFresh=some s2Step153EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step153EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step153EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step153EarlyControlHistoryArena,s2Step153EarlyControlArena,s2Step153EarlyControlLog,arenaWires]

private theorem s2Step153EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step153EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step153EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153EarlyControl_history : compileHmrRecordGrowLog s2Step153EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step153EarlyControlLog.recordFresh=some s2Step153EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step153EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step153EarlyControl_historyBorrow

private theorem s2Step153EarlyControl_sigmaOwned : ([254, 786] : List Wire).toFinset⊆s2Step153EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step153EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153EarlyControl_sigmaReleaseOwned : ([786] : List Wire).toFinset⊆s2Step153EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step153EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153EarlyControl_sigmaRelease : s2Step153EarlyControlHistoryArena.release {786} (fun _ => false)=some s2Step153EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step153EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step153EarlyControlSigmaArena,s2Step153EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step153EarlyControl_sigma : compileHmrSigmaDropLog s2Step153EarlyControlHistoryArena false 0 0 254 786 []=some s2Step153EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step153EarlyControl_sigmaOwned⟩
  · exact s2Step153EarlyControl_sigmaRelease

private theorem s2Step153EarlyControl_zeroBorrow : s2Step153EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step153EarlyControlLog.zeroWork=some s2Step153EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step153EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step153EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step153EarlyControlZeroArena,s2Step153EarlyControlArena,s2Step153EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step153EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step153EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step153EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153EarlyControl_zero : compileHmrEqualityLog s2Step153EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step153EarlyControlLog.zeroWork=some (s2Step153EarlyControlZeroArena,s2Step153EarlyControlLog.zeroWork,s2Step153EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step153EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step153EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step153EarlyControl_logged : s2Step153EarlyControlPlan.Logged s2Step153EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 786 254 253 252 251 790 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step153EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step153EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step153EarlyControl_zero
  · exact s2Step153EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step153EarlyControl_flags
  · exact s2Step153EarlyControl_fit
  · exact s2Step153EarlyControl_history
  · exact s2Step153EarlyControl_sigma
  · exact s2Step153EarlyControl_branch

private theorem s2Step153EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step153EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 786 254 253 252 251 790 42 s2Step153EarlyControlLog=some s2Step153EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step153EarlyControlPlan s2Step153EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 786 254 253 252 251 790 42 s2Step153EarlyControl_logged

private def s2Step153EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704],768⟩

private def s2Step153EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩

private def s2Step153EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192],769⟩

private def s2Step153EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845],771⟩

private def s2Step153FrontBank : WindowBank := ⟨s2Step153EntryFRow,s2Step153EntryGRow,s2Step153EntryFvRow,s2Step153EntryGvRow⟩

private def s2Step153Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 780, 768]

private def s2Step153Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 839, 769]

private def s2Step153Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 849, 770]

private def s2Step153Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 778, 791, 797, 771]

private theorem s2Step153Counter_apart : Disjoint s2Step153HeadFvAfter.live s2Step153CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step153HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153Counter_borrowed : s2Step153HeadFvAfter.checkBorrow 4 s2Step153CounterWork=some s2Step153CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step153HeadFvAfter s2Step153CounterDuring s2Step153CounterWork.toFinset s2Step153Counter_bounded s2Step153Counter_apart rfl

private theorem s2Step153Counter_owned : (786::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step153HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step153HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153Counter_checked : compileHmrCounterStepLog s2Step153HeadFvAfter true 786 [772, 773, 774, 775, 776, 777] s2Step153CounterWork=some s2Step153CounterDuring := by
  have owned : ∀q∈786::[772, 773, 774, 775, 776, 777],q∈s2Step153HeadFvAfter.live := fun q hq => s2Step153Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step153Counter_borrowed

private def s2Step153EntryFAfter : Arena := s2Step153EntryFBefore

private theorem s2Step153EntryBank_incomingDistinct : ([s2Step153EntryFRow,s2Step153EntryGRow,s2Step153EntryFvRow,s2Step153EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153EntryF_Incoming : rowsOwned s2Step153EntryFBefore [s2Step153EntryFRow,s2Step153EntryGRow,s2Step153EntryFvRow,s2Step153EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step153EntryFRow,s2Step153EntryGRow,s2Step153EntryFvRow,s2Step153EntryGvRow] 0 s2Step153EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step153EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step153EntryBank_outgoingOwned : rowsOwned s2Step153EntryGvAfter [s2Step153EntryFOut,s2Step153EntryGOut,s2Step153EntryFvOut,s2Step153EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step153EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step153EntryF_Outgoing : rowsOwned s2Step153EntryGvAfter [s2Step153EntryFOut,s2Step153EntryGOut,s2Step153EntryFvOut,s2Step153EntryGvOut] :=
  hmrRows_owned_drop s2Step153EntryGvAfter [s2Step153EntryFOut,s2Step153EntryGOut,s2Step153EntryFvOut,s2Step153EntryGvOut] 0 s2Step153EntryBank_outgoingOwned

private theorem s2Step153EntryF_distinct : (s2Step153EntryFRow.sign::s2Step153EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153EntryF_owned : (s2Step153EntryFRow.sign::s2Step153EntryFRow.payload).toFinset⊆s2Step153EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step153EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153EntryF_reserved : s2Step153EntryFBefore.reserve s2Step153EntryFFresh.toFinset=some s2Step153EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step153EntryFFresh,arenaWires]
  · norm_num [s2Step153EntryFBefore,s2Step153EntryFFresh,arenaWires]
  · simp only [s2Step153EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step153EntryF_checked : planRowResizeLog s2Step153EntryFBefore s2Step153EntryFRow 193 s2Step153EntryFFresh=
    some (s2Step153EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704],768⟩,growRow 768 s2Step153EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step153EntryFBefore s2Step153EntryFAfter s2Step153EntryFRow 193 s2Step153EntryFFresh
    s2Step153EntryF_distinct s2Step153EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step153EntryF_reserved
  have rowEq : WindowRow.mk (s2Step153EntryFRow.payload++s2Step153EntryFFresh) s2Step153EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step153EntryFvAfter : Arena := s2Step153EntryFBefore

private def s2Step153EntryFvBefore : Arena := s2Step153EntryFBefore

private theorem s2Step153EntryFv_Incoming : rowsOwned s2Step153EntryFvBefore [s2Step153EntryFvRow,s2Step153EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step153EntryFRow,s2Step153EntryGRow,s2Step153EntryFvRow,s2Step153EntryGvRow] 2 s2Step153EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step153EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step153EntryFv_Outgoing : rowsOwned s2Step153EntryGvAfter [s2Step153EntryFvOut,s2Step153EntryGvOut] :=
  hmrRows_owned_drop s2Step153EntryGvAfter [s2Step153EntryFOut,s2Step153EntryGOut,s2Step153EntryFvOut,s2Step153EntryGvOut] 2 s2Step153EntryBank_outgoingOwned

private theorem s2Step153EntryFv_distinct : (s2Step153EntryFvRow.sign::s2Step153EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153EntryFv_owned : (s2Step153EntryFvRow.sign::s2Step153EntryFvRow.payload).toFinset⊆s2Step153EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step153EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153EntryFv_reserved : s2Step153EntryFvBefore.reserve s2Step153EntryFvFresh.toFinset=some s2Step153EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step153EntryFvFresh,arenaWires]
  · norm_num [s2Step153EntryFvBefore,s2Step153EntryFBefore,s2Step153EntryFvFresh,arenaWires]
  · simp only [s2Step153EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step153EntryFv_checked : planRowResizeLog s2Step153EntryFvBefore s2Step153EntryFvRow 92 s2Step153EntryFvFresh=
    some (s2Step153EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩,growRow 770 s2Step153EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step153EntryFvBefore s2Step153EntryFvAfter s2Step153EntryFvRow 92 s2Step153EntryFvFresh
    s2Step153EntryFv_distinct s2Step153EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step153EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step153EntryFvRow.payload++s2Step153EntryFvFresh) s2Step153EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step153EntryGAfter : Arena := s2Step153EntryFBefore

private def s2Step153EntryGBefore : Arena := s2Step153EntryFBefore

private theorem s2Step153EntryG_Incoming : rowsOwned s2Step153EntryGBefore [s2Step153EntryGRow,s2Step153EntryFvRow,s2Step153EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step153EntryFRow,s2Step153EntryGRow,s2Step153EntryFvRow,s2Step153EntryGvRow] 1 s2Step153EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step153EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step153EntryG_Outgoing : rowsOwned s2Step153EntryGvAfter [s2Step153EntryGOut,s2Step153EntryFvOut,s2Step153EntryGvOut] :=
  hmrRows_owned_drop s2Step153EntryGvAfter [s2Step153EntryFOut,s2Step153EntryGOut,s2Step153EntryFvOut,s2Step153EntryGvOut] 1 s2Step153EntryBank_outgoingOwned

private theorem s2Step153EntryG_distinct : (s2Step153EntryGRow.sign::s2Step153EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153EntryG_owned : (s2Step153EntryGRow.sign::s2Step153EntryGRow.payload).toFinset⊆s2Step153EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step153EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153EntryG_reserved : s2Step153EntryGBefore.reserve s2Step153EntryGFresh.toFinset=some s2Step153EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step153EntryGFresh,arenaWires]
  · norm_num [s2Step153EntryGBefore,s2Step153EntryFBefore,s2Step153EntryGFresh,arenaWires]
  · simp only [s2Step153EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step153EntryG_checked : planRowResizeLog s2Step153EntryGBefore s2Step153EntryGRow 193 s2Step153EntryGFresh=
    some (s2Step153EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192],769⟩,growRow 769 s2Step153EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step153EntryGBefore s2Step153EntryGAfter s2Step153EntryGRow 193 s2Step153EntryGFresh
    s2Step153EntryG_distinct s2Step153EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step153EntryG_reserved
  have rowEq : WindowRow.mk (s2Step153EntryGRow.payload++s2Step153EntryGFresh) s2Step153EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step153EntryGvBefore : Arena := s2Step153EntryFBefore

private theorem s2Step153EntryGv_Incoming : rowsOwned s2Step153EntryGvBefore [s2Step153EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step153EntryFRow,s2Step153EntryGRow,s2Step153EntryFvRow,s2Step153EntryGvRow] 3 s2Step153EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step153EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step153EntryGv_Outgoing : rowsOwned s2Step153EntryGvAfter [s2Step153EntryGvOut] :=
  hmrRows_owned_drop s2Step153EntryGvAfter [s2Step153EntryFOut,s2Step153EntryGOut,s2Step153EntryFvOut,s2Step153EntryGvOut] 3 s2Step153EntryBank_outgoingOwned

private theorem s2Step153EntryGv_distinct : (s2Step153EntryGvRow.sign::s2Step153EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153EntryGv_owned : (s2Step153EntryGvRow.sign::s2Step153EntryGvRow.payload).toFinset⊆s2Step153EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step153EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153EntryGv_reserved : s2Step153EntryGvBefore.reserve s2Step153EntryGvFresh.toFinset=some s2Step153EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step153EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step153EntryGvBefore,s2Step153EntryFBefore,s2Step153EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step153EntryGvAfter,s2Step153EntryGvBefore,s2Step153EntryFBefore,s2Step153EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step153EntryGv_checked : planRowResizeLog s2Step153EntryGvBefore s2Step153EntryGvRow 92 s2Step153EntryGvFresh=
    some (s2Step153EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 778, 791],771⟩,growRow 771 s2Step153EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step153EntryGvBefore s2Step153EntryGvAfter s2Step153EntryGvRow 92 s2Step153EntryGvFresh
    s2Step153EntryGv_distinct s2Step153EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step153EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step153EntryGvRow.payload++s2Step153EntryGvFresh) s2Step153EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 778, 791],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step153EntryBank_rows : planWindowRowsLog s2Step153EntryFBefore [(s2Step153EntryFRow,193),(s2Step153EntryGRow,193),(s2Step153EntryFvRow,92),(s2Step153EntryGvRow,92)] [s2Step153EntryFFresh,s2Step153EntryGFresh,s2Step153EntryFvFresh,s2Step153EntryGvFresh]=
    some (s2Step153EntryGvAfter,[s2Step153EntryFOut,s2Step153EntryGOut,s2Step153EntryFvOut,s2Step153EntryGvOut],(growRow 768 s2Step153EntryFFresh ++ (growRow 769 s2Step153EntryGFresh ++ (growRow 770 s2Step153EntryFvFresh ++ (growRow 771 s2Step153EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step153EntryGvAfter [] []=some (s2Step153EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step153EntryGvBefore s2Step153EntryGvAfter s2Step153EntryGvAfter
    s2Step153EntryGvRow s2Step153EntryGvOut 92 s2Step153EntryGvFresh [] [] []
    (growRow 771 s2Step153EntryGvFresh) ([]) s2Step153EntryGv_Incoming s2Step153EntryGv_checked h4 s2Step153EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step153EntryFvBefore s2Step153EntryFvAfter s2Step153EntryGvAfter
    s2Step153EntryFvRow s2Step153EntryFvOut 92 s2Step153EntryFvFresh [(s2Step153EntryGvRow,92)] [s2Step153EntryGvFresh] [s2Step153EntryGvOut]
    (growRow 770 s2Step153EntryFvFresh) ((growRow 771 s2Step153EntryGvFresh ++ [])) s2Step153EntryFv_Incoming s2Step153EntryFv_checked h3 s2Step153EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step153EntryGBefore s2Step153EntryGAfter s2Step153EntryGvAfter
    s2Step153EntryGRow s2Step153EntryGOut 193 s2Step153EntryGFresh [(s2Step153EntryFvRow,92),(s2Step153EntryGvRow,92)] [s2Step153EntryFvFresh,s2Step153EntryGvFresh] [s2Step153EntryFvOut,s2Step153EntryGvOut]
    (growRow 769 s2Step153EntryGFresh) ((growRow 770 s2Step153EntryFvFresh ++ (growRow 771 s2Step153EntryGvFresh ++ []))) s2Step153EntryG_Incoming s2Step153EntryG_checked h2 s2Step153EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step153EntryFBefore s2Step153EntryFAfter s2Step153EntryGvAfter
    s2Step153EntryFRow s2Step153EntryFOut 193 s2Step153EntryFFresh [(s2Step153EntryGRow,193),(s2Step153EntryFvRow,92),(s2Step153EntryGvRow,92)] [s2Step153EntryGFresh,s2Step153EntryFvFresh,s2Step153EntryGvFresh] [s2Step153EntryGOut,s2Step153EntryFvOut,s2Step153EntryGvOut]
    (growRow 768 s2Step153EntryFFresh) ((growRow 769 s2Step153EntryGFresh ++ (growRow 770 s2Step153EntryFvFresh ++ (growRow 771 s2Step153EntryGvFresh ++ [])))) s2Step153EntryF_Incoming s2Step153EntryF_checked h1 s2Step153EntryF_Outgoing
  exact h0

private theorem s2Step153EntryBank_checked : compileHmrBankResizeLog .entry s2Step153EntryFBefore ⟨s2Step153EntryFRow,s2Step153EntryGRow,s2Step153EntryFvRow,s2Step153EntryGvRow⟩ ⟨193,193,92,92⟩ [s2Step153EntryFFresh,s2Step153EntryGFresh,s2Step153EntryFvFresh,s2Step153EntryGvFresh]=
    some (s2Step153EntryGvAfter,⟨s2Step153EntryFOut,s2Step153EntryGOut,s2Step153EntryFvOut,s2Step153EntryGvOut⟩,(growRow 768 s2Step153EntryFFresh ++ (growRow 769 s2Step153EntryGFresh ++ (growRow 770 s2Step153EntryFvFresh ++ (growRow 771 s2Step153EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step153EntryBank_rows]
  rfl

private def s2Step153ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<192) ∨ (193≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<192) ∨ (193≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153ExitFBefore : Arena := s2Step153ExitGAfter

private def s2Step153ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 780],768⟩

private def s2Step153ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 849],770⟩

private def s2Step153ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 839],769⟩

private def s2Step153ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 778, 791, 797],771⟩

private theorem s2Step153ExitBank_incomingDistinct : ([s2Step153ExitGRow,s2Step153ExitFRow,s2Step153ExitFvRow,s2Step153ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153ExitF_Incoming : rowsOwned s2Step153ExitFBefore [s2Step153ExitFRow,s2Step153ExitFvRow,s2Step153ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step153ExitGRow,s2Step153ExitFRow,s2Step153ExitFvRow,s2Step153ExitGvRow] 1 s2Step153ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step153ExitFBefore (fun q => (0≤q ∧ q<192) ∨ (193≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step153ExitBank_outgoingOwned : rowsOwned s2Step153ExitGvAfter [s2Step153ExitGOut,s2Step153ExitFOut,s2Step153ExitFvOut,s2Step153ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step153ExitGvAfter (fun q => (0≤q ∧ q<192) ∨ (193≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<791) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step153ExitF_Outgoing : rowsOwned s2Step153ExitGvAfter [s2Step153ExitFOut,s2Step153ExitFvOut,s2Step153ExitGvOut] :=
  hmrRows_owned_drop s2Step153ExitGvAfter [s2Step153ExitGOut,s2Step153ExitFOut,s2Step153ExitFvOut,s2Step153ExitGvOut] 1 s2Step153ExitBank_outgoingOwned

private theorem s2Step153ExitF_distinct : (s2Step153ExitFRow.sign::s2Step153ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153ExitF_owned : (s2Step153ExitFRow.sign::s2Step153ExitFRow.payload).toFinset⊆s2Step153ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step153ExitFBefore (fun q => (0≤q ∧ q<192) ∨ (193≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153ExitF_retired : s2Step153ExitFBefore.retireSet s2Step153ExitFExtra.toFinset=s2Step153ExitFAfter := by
  unfold Arena.retireSet s2Step153ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step153ExitFBefore,s2Step153ExitGAfter,s2Step153ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step153ExitF_checked : planRowResizeLog s2Step153ExitFBefore s2Step153ExitFRow 193 []=
    some (s2Step153ExitFAfter,s2Step153ExitFOut,shrinkRow 768 s2Step153ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step153ExitFBefore s2Step153ExitFRow 193 s2Step153ExitF_distinct s2Step153ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step153ExitFRow.payload.take 193) s2Step153ExitFRow.sign=s2Step153ExitFOut := by decide +kernel
  have hi : s2Step153ExitFRow.payload.drop 193=s2Step153ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step153ExitF_retired] at result
  exact result

private def s2Step153ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<192) ∨ (193≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153ExitFvBefore : Arena := s2Step153ExitFAfter

private theorem s2Step153ExitFv_Incoming : rowsOwned s2Step153ExitFvBefore [s2Step153ExitFvRow,s2Step153ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step153ExitGRow,s2Step153ExitFRow,s2Step153ExitFvRow,s2Step153ExitGvRow] 2 s2Step153ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step153ExitFvBefore (fun q => (0≤q ∧ q<192) ∨ (193≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step153ExitFv_Outgoing : rowsOwned s2Step153ExitGvAfter [s2Step153ExitFvOut,s2Step153ExitGvOut] :=
  hmrRows_owned_drop s2Step153ExitGvAfter [s2Step153ExitGOut,s2Step153ExitFOut,s2Step153ExitFvOut,s2Step153ExitGvOut] 2 s2Step153ExitBank_outgoingOwned

private theorem s2Step153ExitFv_distinct : (s2Step153ExitFvRow.sign::s2Step153ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153ExitFv_owned : (s2Step153ExitFvRow.sign::s2Step153ExitFvRow.payload).toFinset⊆s2Step153ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step153ExitFvBefore (fun q => (0≤q ∧ q<192) ∨ (193≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153ExitFv_retired : s2Step153ExitFvBefore.retireSet s2Step153ExitFvExtra.toFinset=s2Step153ExitFvAfter := by
  unfold Arena.retireSet s2Step153ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step153ExitFvBefore,s2Step153ExitFAfter,s2Step153ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step153ExitFv_checked : planRowResizeLog s2Step153ExitFvBefore s2Step153ExitFvRow 92 []=
    some (s2Step153ExitFvAfter,s2Step153ExitFvOut,shrinkRow 770 s2Step153ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step153ExitFvBefore s2Step153ExitFvRow 92 s2Step153ExitFv_distinct s2Step153ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step153ExitFvRow.payload.take 92) s2Step153ExitFvRow.sign=s2Step153ExitFvOut := by decide +kernel
  have hi : s2Step153ExitFvRow.payload.drop 92=s2Step153ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step153ExitFv_retired] at result
  exact result

private def s2Step153ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step153ExitG_Incoming : rowsOwned s2Step153ExitGBefore [s2Step153ExitGRow,s2Step153ExitFRow,s2Step153ExitFvRow,s2Step153ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step153ExitGRow,s2Step153ExitFRow,s2Step153ExitFvRow,s2Step153ExitGvRow] 0 s2Step153ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step153ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step153ExitG_Outgoing : rowsOwned s2Step153ExitGvAfter [s2Step153ExitGOut,s2Step153ExitFOut,s2Step153ExitFvOut,s2Step153ExitGvOut] :=
  hmrRows_owned_drop s2Step153ExitGvAfter [s2Step153ExitGOut,s2Step153ExitFOut,s2Step153ExitFvOut,s2Step153ExitGvOut] 0 s2Step153ExitBank_outgoingOwned

private theorem s2Step153ExitG_distinct : (s2Step153ExitGRow.sign::s2Step153ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153ExitG_owned : (s2Step153ExitGRow.sign::s2Step153ExitGRow.payload).toFinset⊆s2Step153ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step153ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153ExitG_retired : s2Step153ExitGBefore.retireSet s2Step153ExitGExtra.toFinset=s2Step153ExitGAfter := by
  unfold Arena.retireSet s2Step153ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step153ExitGBefore,s2Step153ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step153ExitG_checked : planRowResizeLog s2Step153ExitGBefore s2Step153ExitGRow 192 []=
    some (s2Step153ExitGAfter,s2Step153ExitGOut,shrinkRow 769 s2Step153ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step153ExitGBefore s2Step153ExitGRow 192 s2Step153ExitG_distinct s2Step153ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step153ExitGRow.payload.take 192) s2Step153ExitGRow.sign=s2Step153ExitGOut := by decide +kernel
  have hi : s2Step153ExitGRow.payload.drop 192=s2Step153ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step153ExitG_retired] at result
  exact result

private def s2Step153ExitGvBefore : Arena := s2Step153ExitFvAfter

private theorem s2Step153ExitGv_Incoming : rowsOwned s2Step153ExitGvBefore [s2Step153ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step153ExitGRow,s2Step153ExitFRow,s2Step153ExitFvRow,s2Step153ExitGvRow] 3 s2Step153ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step153ExitGvBefore (fun q => (0≤q ∧ q<192) ∨ (193≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step153ExitGv_Outgoing : rowsOwned s2Step153ExitGvAfter [s2Step153ExitGvOut] :=
  hmrRows_owned_drop s2Step153ExitGvAfter [s2Step153ExitGOut,s2Step153ExitFOut,s2Step153ExitFvOut,s2Step153ExitGvOut] 3 s2Step153ExitBank_outgoingOwned

private theorem s2Step153ExitGv_distinct : (s2Step153ExitGvRow.sign::s2Step153ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153ExitGv_owned : (s2Step153ExitGvRow.sign::s2Step153ExitGvRow.payload).toFinset⊆s2Step153ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step153ExitGvBefore (fun q => (0≤q ∧ q<192) ∨ (193≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153ExitGv_retired : s2Step153ExitGvBefore.retireSet s2Step153ExitGvExtra.toFinset=s2Step153ExitGvAfter := by
  unfold Arena.retireSet s2Step153ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step153ExitGvBefore,s2Step153ExitFvAfter,s2Step153ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step153ExitGv_checked : planRowResizeLog s2Step153ExitGvBefore s2Step153ExitGvRow 90 []=
    some (s2Step153ExitGvAfter,s2Step153ExitGvOut,shrinkRow 771 s2Step153ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step153ExitGvBefore s2Step153ExitGvRow 90 s2Step153ExitGv_distinct s2Step153ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step153ExitGvRow.payload.take 90) s2Step153ExitGvRow.sign=s2Step153ExitGvOut := by decide +kernel
  have hi : s2Step153ExitGvRow.payload.drop 90=s2Step153ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step153ExitGv_retired] at result
  exact result

private theorem s2Step153ExitBank_rows : planWindowRowsLog s2Step153ExitGBefore [(s2Step153ExitGRow,192),(s2Step153ExitFRow,193),(s2Step153ExitFvRow,92),(s2Step153ExitGvRow,90)] [[],[],[],[]]=
    some (s2Step153ExitGvAfter,[s2Step153ExitGOut,s2Step153ExitFOut,s2Step153ExitFvOut,s2Step153ExitGvOut],(shrinkRow 769 s2Step153ExitGExtra ++ (shrinkRow 768 s2Step153ExitFExtra ++ (shrinkRow 770 s2Step153ExitFvExtra ++ (shrinkRow 771 s2Step153ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step153ExitGvAfter [] []=some (s2Step153ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step153ExitGvBefore s2Step153ExitGvAfter s2Step153ExitGvAfter
    s2Step153ExitGvRow s2Step153ExitGvOut 90 [] [] [] []
    (shrinkRow 771 s2Step153ExitGvExtra) ([]) s2Step153ExitGv_Incoming s2Step153ExitGv_checked h4 s2Step153ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step153ExitFvBefore s2Step153ExitFvAfter s2Step153ExitGvAfter
    s2Step153ExitFvRow s2Step153ExitFvOut 92 [] [(s2Step153ExitGvRow,90)] [[]] [s2Step153ExitGvOut]
    (shrinkRow 770 s2Step153ExitFvExtra) ((shrinkRow 771 s2Step153ExitGvExtra ++ [])) s2Step153ExitFv_Incoming s2Step153ExitFv_checked h3 s2Step153ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step153ExitFBefore s2Step153ExitFAfter s2Step153ExitGvAfter
    s2Step153ExitFRow s2Step153ExitFOut 193 [] [(s2Step153ExitFvRow,92),(s2Step153ExitGvRow,90)] [[],[]] [s2Step153ExitFvOut,s2Step153ExitGvOut]
    (shrinkRow 768 s2Step153ExitFExtra) ((shrinkRow 770 s2Step153ExitFvExtra ++ (shrinkRow 771 s2Step153ExitGvExtra ++ []))) s2Step153ExitF_Incoming s2Step153ExitF_checked h2 s2Step153ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step153ExitGBefore s2Step153ExitGAfter s2Step153ExitGvAfter
    s2Step153ExitGRow s2Step153ExitGOut 192 [] [(s2Step153ExitFRow,193),(s2Step153ExitFvRow,92),(s2Step153ExitGvRow,90)] [[],[],[]] [s2Step153ExitFOut,s2Step153ExitFvOut,s2Step153ExitGvOut]
    (shrinkRow 769 s2Step153ExitGExtra) ((shrinkRow 768 s2Step153ExitFExtra ++ (shrinkRow 770 s2Step153ExitFvExtra ++ (shrinkRow 771 s2Step153ExitGvExtra ++ [])))) s2Step153ExitG_Incoming s2Step153ExitG_checked h1 s2Step153ExitG_Outgoing
  exact h0

private theorem s2Step153ExitBank_checked : compileHmrBankResizeLog .exit s2Step153ExitGBefore ⟨s2Step153ExitFRow,s2Step153ExitGRow,s2Step153ExitFvRow,s2Step153ExitGvRow⟩ ⟨193,192,92,90⟩ [[],[],[],[]]=
    some (s2Step153ExitGvAfter,⟨s2Step153ExitFOut,s2Step153ExitGOut,s2Step153ExitFvOut,s2Step153ExitGvOut⟩,(shrinkRow 769 s2Step153ExitGExtra ++ (shrinkRow 768 s2Step153ExitFExtra ++ (shrinkRow 770 s2Step153ExitFvExtra ++ (shrinkRow 771 s2Step153ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step153ExitBank_rows]
  rfl

private theorem s2Step153Add0_apart : Disjoint s2Step153Add0Arena.live s2Step153Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step153Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153Add0_card : s2Step153Add0Arena.live.card=886 := by
  decide +kernel

private theorem s2Step153Add0_borrowed : s2Step153Add0Arena.checkBorrow (hmrHybridCount s2Step153Add0Arena s2Step153Add0B.length) s2Step153Add0Work=some s2Step153Add0During := by
  have len : s2Step153Add0Work.length=hmrHybridCount s2Step153Add0Arena s2Step153Add0B.length := by
    rw [hmrHybridCount,s2Step153Add0_card]
    decide +kernel
  have nd : s2Step153Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step153Add0Arena s2Step153Add0During s2Step153Add0Work.toFinset s2Step153Add0_bounded s2Step153Add0_apart rfl

private theorem s2Step153Add0_distinct : (867::790::877::(s2Step153Add0A++s2Step153Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153Add0_owned : (867::790::877::(s2Step153Add0A++s2Step153Add0B)).toFinset⊆s2Step153Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step153Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153Add0_checked : compileHmrHybridCinLog s2Step153Add0Arena 790 867 877 s2Step153Add0A s2Step153Add0B s2Step153Add0Work=some s2Step153Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step153Add0Arena s2Step153Add0During 790 867 877 s2Step153Add0A s2Step153Add0B s2Step153Add0Work
    (by decide +kernel) (by decide +kernel) s2Step153Add0_distinct
    (fun q hq => s2Step153Add0_owned (List.mem_toFinset.mpr hq)) s2Step153Add0_borrowed

private theorem s2Step153Add1_apart : Disjoint s2Step153Add1Arena.live s2Step153Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step153Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153Add1_card : s2Step153Add1Arena.live.card=886 := by
  decide +kernel

private theorem s2Step153Add1_borrowed : s2Step153Add1Arena.checkBorrow (hmrHybridCount s2Step153Add1Arena s2Step153Add1B.length) s2Step153Add1Work=some s2Step153Add1During := by
  have len : s2Step153Add1Work.length=hmrHybridCount s2Step153Add1Arena s2Step153Add1B.length := by
    rw [hmrHybridCount,s2Step153Add1_card]
    decide +kernel
  have nd : s2Step153Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step153Add1Arena s2Step153Add1During s2Step153Add1Work.toFinset s2Step153Add1_bounded s2Step153Add1_apart rfl

private theorem s2Step153Add1_distinct : (867::790::877::(s2Step153Add1A++s2Step153Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153Add1_owned : (867::790::877::(s2Step153Add1A++s2Step153Add1B)).toFinset⊆s2Step153Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step153Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153Add1_checked : compileHmrHybridCinLog s2Step153Add1Arena 790 867 877 s2Step153Add1A s2Step153Add1B s2Step153Add1Work=some s2Step153Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step153Add1Arena s2Step153Add1During 790 867 877 s2Step153Add1A s2Step153Add1B s2Step153Add1Work
    (by decide +kernel) (by decide +kernel) s2Step153Add1_distinct
    (fun q hq => s2Step153Add1_owned (List.mem_toFinset.mpr hq)) s2Step153Add1_borrowed

private theorem s2Step153F4_apart : Disjoint (s2Step153Add0A++s2Step153Add0B).toFinset (s2Step153Add1A++s2Step153Add1B).toFinset := by
  have nd : ((s2Step153Add0A++s2Step153Add0B)++(s2Step153Add1A++s2Step153Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step153F4_carry : s2Step153F4FlagArena.checkBorrow 1 [877]=some s2Step153Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step153F4FlagArena,s2Step153HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step153F4FlagArena,s2Step153HeadFvAfter,s2Step153Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step153F4_distinct : (786::790::867::877::((s2Step153Add0A++s2Step153Add1A)++(s2Step153Add0B++s2Step153Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153F4_flag : s2Step153HeadFvAfter.checkBorrow 1 [867]=some s2Step153F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step153HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step153F4_owned : (786::790::((s2Step153Add0A++s2Step153Add1A)++(s2Step153Add0B++s2Step153Add1B))).toFinset⊆s2Step153HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step153HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153F4_checked : compileHmrHybridF4Log s2Step153HeadFvAfter 786 790 s2Step153Add0A s2Step153Add0B s2Step153Add1A s2Step153Add1B [867] [877] s2Step153Add0Work s2Step153Add1Work=some s2Step153F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step153HeadFvAfter s2Step153F4FlagArena s2Step153Add0Arena s2Step153Add0During s2Step153Add1During 786 790
    s2Step153Add0A s2Step153Add0B s2Step153Add1A s2Step153Add1B [867] [877] s2Step153Add0Work s2Step153Add1Work
    (fun q hq => s2Step153F4_owned (List.mem_toFinset.mpr hq)) s2Step153F4_flag s2Step153F4_carry
    s2Step153F4_distinct s2Step153F4_apart s2Step153Add0_checked s2Step153Add1_checked

private theorem s2Step153Front_branch : s2Step153FrontSigmaArena.checkBorrow 1 [790]=some s2Step153HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step153FrontSigmaArena,s2Step153EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step153FrontSigmaArena,s2Step153EntryGvAfter,s2Step153HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step153Front_entry : HmrFrontEntryValid s2Step153EntryFBefore s2Step153FrontBank 193 92 ⟨193,192,92,90⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step153FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step153EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step153EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step153FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step153Front_sigma : s2Step153EntryGvAfter.checkBorrow 1 [786]=some s2Step153FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step153EntryGvAfter,arenaWires]
  · rfl

private def s2Step153HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153HeadFBefore : Arena := s2Step153HeadGAfter

private def s2Step153HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704],768⟩

private def s2Step153HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815],770⟩

private def s2Step153HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192],769⟩

private def s2Step153HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 778, 791],771⟩

private theorem s2Step153HeadBank_incomingDistinct : ([s2Step153HeadGRow,s2Step153HeadFRow,s2Step153HeadGvRow,s2Step153HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153HeadF_Incoming : rowsOwned s2Step153HeadFBefore [s2Step153HeadFRow,s2Step153HeadGvRow,s2Step153HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step153HeadGRow,s2Step153HeadFRow,s2Step153HeadGvRow,s2Step153HeadFvRow] 1 s2Step153HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step153HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step153HeadBank_outgoingOwned : rowsOwned s2Step153HeadFvAfter [s2Step153HeadGOut,s2Step153HeadFOut,s2Step153HeadGvOut,s2Step153HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step153HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step153HeadF_Outgoing : rowsOwned s2Step153HeadFvAfter [s2Step153HeadFOut,s2Step153HeadGvOut,s2Step153HeadFvOut] :=
  hmrRows_owned_drop s2Step153HeadFvAfter [s2Step153HeadGOut,s2Step153HeadFOut,s2Step153HeadGvOut,s2Step153HeadFvOut] 1 s2Step153HeadBank_outgoingOwned

private theorem s2Step153HeadF_distinct : (s2Step153HeadFRow.sign::s2Step153HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153HeadF_owned : (s2Step153HeadFRow.sign::s2Step153HeadFRow.payload).toFinset⊆s2Step153HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step153HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153HeadF_reserved : s2Step153HeadFBefore.reserve s2Step153HeadFFresh.toFinset=some s2Step153HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step153HeadFFresh,arenaWires]
  · norm_num [s2Step153HeadFBefore,s2Step153HeadGAfter,s2Step153HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step153HeadFAfter,s2Step153HeadFBefore,s2Step153HeadGAfter,s2Step153HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step153HeadF_checked : planRowResizeLog s2Step153HeadFBefore s2Step153HeadFRow 194 s2Step153HeadFFresh=
    some (s2Step153HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 780],768⟩,growRow 768 s2Step153HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step153HeadFBefore s2Step153HeadFAfter s2Step153HeadFRow 194 s2Step153HeadFFresh
    s2Step153HeadF_distinct s2Step153HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step153HeadF_reserved
  have rowEq : WindowRow.mk (s2Step153HeadFRow.payload++s2Step153HeadFFresh) s2Step153HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 780],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step153HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step153HeadFvBefore : Arena := s2Step153HeadGvAfter

private theorem s2Step153HeadFv_Incoming : rowsOwned s2Step153HeadFvBefore [s2Step153HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step153HeadGRow,s2Step153HeadFRow,s2Step153HeadGvRow,s2Step153HeadFvRow] 3 s2Step153HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step153HeadFvBefore (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step153HeadFv_Outgoing : rowsOwned s2Step153HeadFvAfter [s2Step153HeadFvOut] :=
  hmrRows_owned_drop s2Step153HeadFvAfter [s2Step153HeadGOut,s2Step153HeadFOut,s2Step153HeadGvOut,s2Step153HeadFvOut] 3 s2Step153HeadBank_outgoingOwned

private theorem s2Step153HeadFv_distinct : (s2Step153HeadFvRow.sign::s2Step153HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153HeadFv_owned : (s2Step153HeadFvRow.sign::s2Step153HeadFvRow.payload).toFinset⊆s2Step153HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step153HeadFvBefore (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153HeadFv_reserved : s2Step153HeadFvBefore.reserve s2Step153HeadFvFresh.toFinset=some s2Step153HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step153HeadFvFresh,arenaWires]
  · norm_num [s2Step153HeadFvBefore,s2Step153HeadGvAfter,s2Step153HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step153HeadFvAfter,s2Step153HeadFvBefore,s2Step153HeadGvAfter,s2Step153HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step153HeadFv_checked : planRowResizeLog s2Step153HeadFvBefore s2Step153HeadFvRow 93 s2Step153HeadFvFresh=
    some (s2Step153HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 849],770⟩,growRow 770 s2Step153HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step153HeadFvBefore s2Step153HeadFvAfter s2Step153HeadFvRow 93 s2Step153HeadFvFresh
    s2Step153HeadFv_distinct s2Step153HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step153HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step153HeadFvRow.payload++s2Step153HeadFvFresh) s2Step153HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 849],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step153HeadG_Incoming : rowsOwned s2Step153HeadGBefore [s2Step153HeadGRow,s2Step153HeadFRow,s2Step153HeadGvRow,s2Step153HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step153HeadGRow,s2Step153HeadFRow,s2Step153HeadGvRow,s2Step153HeadFvRow] 0 s2Step153HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step153HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step153HeadG_Outgoing : rowsOwned s2Step153HeadFvAfter [s2Step153HeadGOut,s2Step153HeadFOut,s2Step153HeadGvOut,s2Step153HeadFvOut] :=
  hmrRows_owned_drop s2Step153HeadFvAfter [s2Step153HeadGOut,s2Step153HeadFOut,s2Step153HeadGvOut,s2Step153HeadFvOut] 0 s2Step153HeadBank_outgoingOwned

private theorem s2Step153HeadG_distinct : (s2Step153HeadGRow.sign::s2Step153HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153HeadG_owned : (s2Step153HeadGRow.sign::s2Step153HeadGRow.payload).toFinset⊆s2Step153HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step153HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153HeadG_reserved : s2Step153HeadGBefore.reserve s2Step153HeadGFresh.toFinset=some s2Step153HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step153HeadGFresh,arenaWires]
  · norm_num [s2Step153HeadGBefore,s2Step153HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step153HeadGAfter,s2Step153HeadGBefore,s2Step153HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step153HeadG_checked : planRowResizeLog s2Step153HeadGBefore s2Step153HeadGRow 194 s2Step153HeadGFresh=
    some (s2Step153HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 839],769⟩,growRow 769 s2Step153HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step153HeadGBefore s2Step153HeadGAfter s2Step153HeadGRow 194 s2Step153HeadGFresh
    s2Step153HeadG_distinct s2Step153HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step153HeadG_reserved
  have rowEq : WindowRow.mk (s2Step153HeadGRow.payload++s2Step153HeadGFresh) s2Step153HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 839],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step153HeadGvBefore : Arena := s2Step153HeadFAfter

private theorem s2Step153HeadGv_Incoming : rowsOwned s2Step153HeadGvBefore [s2Step153HeadGvRow,s2Step153HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step153HeadGRow,s2Step153HeadFRow,s2Step153HeadGvRow,s2Step153HeadFvRow] 2 s2Step153HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step153HeadGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step153HeadGv_Outgoing : rowsOwned s2Step153HeadFvAfter [s2Step153HeadGvOut,s2Step153HeadFvOut] :=
  hmrRows_owned_drop s2Step153HeadFvAfter [s2Step153HeadGOut,s2Step153HeadFOut,s2Step153HeadGvOut,s2Step153HeadFvOut] 2 s2Step153HeadBank_outgoingOwned

private theorem s2Step153HeadGv_distinct : (s2Step153HeadGvRow.sign::s2Step153HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step153HeadGv_owned : (s2Step153HeadGvRow.sign::s2Step153HeadGvRow.payload).toFinset⊆s2Step153HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step153HeadGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step153HeadGv_reserved : s2Step153HeadGvBefore.reserve s2Step153HeadGvFresh.toFinset=some s2Step153HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step153HeadGvFresh,arenaWires]
  · norm_num [s2Step153HeadGvBefore,s2Step153HeadFAfter,s2Step153HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step153HeadGvAfter,s2Step153HeadGvBefore,s2Step153HeadFAfter,s2Step153HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step153HeadGv_checked : planRowResizeLog s2Step153HeadGvBefore s2Step153HeadGvRow 93 s2Step153HeadGvFresh=
    some (s2Step153HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 778, 791, 797],771⟩,growRow 771 s2Step153HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step153HeadGvBefore s2Step153HeadGvAfter s2Step153HeadGvRow 93 s2Step153HeadGvFresh
    s2Step153HeadGv_distinct s2Step153HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step153HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step153HeadGvRow.payload++s2Step153HeadGvFresh) s2Step153HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 778, 791, 797],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step153HeadBank_rows : planWindowRowsLog s2Step153HeadGBefore [(s2Step153HeadGRow,194),(s2Step153HeadFRow,194),(s2Step153HeadGvRow,93),(s2Step153HeadFvRow,93)] [s2Step153HeadGFresh,s2Step153HeadFFresh,s2Step153HeadGvFresh,s2Step153HeadFvFresh]=
    some (s2Step153HeadFvAfter,[s2Step153HeadGOut,s2Step153HeadFOut,s2Step153HeadGvOut,s2Step153HeadFvOut],(growRow 769 s2Step153HeadGFresh ++ (growRow 768 s2Step153HeadFFresh ++ (growRow 771 s2Step153HeadGvFresh ++ (growRow 770 s2Step153HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step153HeadFvAfter [] []=some (s2Step153HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step153HeadFvBefore s2Step153HeadFvAfter s2Step153HeadFvAfter
    s2Step153HeadFvRow s2Step153HeadFvOut 93 s2Step153HeadFvFresh [] [] []
    (growRow 770 s2Step153HeadFvFresh) ([]) s2Step153HeadFv_Incoming s2Step153HeadFv_checked h4 s2Step153HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step153HeadGvBefore s2Step153HeadGvAfter s2Step153HeadFvAfter
    s2Step153HeadGvRow s2Step153HeadGvOut 93 s2Step153HeadGvFresh [(s2Step153HeadFvRow,93)] [s2Step153HeadFvFresh] [s2Step153HeadFvOut]
    (growRow 771 s2Step153HeadGvFresh) ((growRow 770 s2Step153HeadFvFresh ++ [])) s2Step153HeadGv_Incoming s2Step153HeadGv_checked h3 s2Step153HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step153HeadFBefore s2Step153HeadFAfter s2Step153HeadFvAfter
    s2Step153HeadFRow s2Step153HeadFOut 194 s2Step153HeadFFresh [(s2Step153HeadGvRow,93),(s2Step153HeadFvRow,93)] [s2Step153HeadGvFresh,s2Step153HeadFvFresh] [s2Step153HeadGvOut,s2Step153HeadFvOut]
    (growRow 768 s2Step153HeadFFresh) ((growRow 771 s2Step153HeadGvFresh ++ (growRow 770 s2Step153HeadFvFresh ++ []))) s2Step153HeadF_Incoming s2Step153HeadF_checked h2 s2Step153HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step153HeadGBefore s2Step153HeadGAfter s2Step153HeadFvAfter
    s2Step153HeadGRow s2Step153HeadGOut 194 s2Step153HeadGFresh [(s2Step153HeadFRow,194),(s2Step153HeadGvRow,93),(s2Step153HeadFvRow,93)] [s2Step153HeadFFresh,s2Step153HeadGvFresh,s2Step153HeadFvFresh] [s2Step153HeadFOut,s2Step153HeadGvOut,s2Step153HeadFvOut]
    (growRow 769 s2Step153HeadGFresh) ((growRow 768 s2Step153HeadFFresh ++ (growRow 771 s2Step153HeadGvFresh ++ (growRow 770 s2Step153HeadFvFresh ++ [])))) s2Step153HeadG_Incoming s2Step153HeadG_checked h1 s2Step153HeadG_Outgoing
  exact h0

private theorem s2Step153HeadBank_checked : compileHmrBankResizeLog .headroom s2Step153HeadGBefore ⟨s2Step153HeadFRow,s2Step153HeadGRow,s2Step153HeadFvRow,s2Step153HeadGvRow⟩ ⟨194,194,93,93⟩ [s2Step153HeadGFresh,s2Step153HeadFFresh,s2Step153HeadGvFresh,s2Step153HeadFvFresh]=
    some (s2Step153HeadFvAfter,⟨s2Step153HeadFOut,s2Step153HeadGOut,s2Step153HeadFvOut,s2Step153HeadGvOut⟩,(growRow 769 s2Step153HeadGFresh ++ (growRow 768 s2Step153HeadFFresh ++ (growRow 771 s2Step153HeadGvFresh ++ (growRow 770 s2Step153HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step153HeadBank_rows]
  rfl

private theorem s2Step153Front_checked : compileHmrSourceFrontLog s2Step153EntryFBefore s2Step153FrontBank 193 92 ⟨193,192,92,90⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step153FrontLog=some s2Step153FrontPlan := by
  have pairEq : s2Step153FrontPair=⟨s2Step153HeadFRow,s2Step153HeadGRow,s2Step153HeadFvRow,s2Step153HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step153FrontHead=⟨s2Step153ExitFRow,s2Step153ExitGRow,s2Step153ExitFvRow,s2Step153ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step153Add0A=s2Step153FrontHead.f.wires := by decide +kernel
  have gEq : s2Step153Add0B=s2Step153FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step153Add1A=s2Step153FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step153Add1B=s2Step153FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step153EntryFBefore s2Step153FrontBank 193 92 ⟨193,192,92,90⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step153FrontLog s2Step153FrontPlan
  · exact s2Step153Front_entry
  · exact s2Step153EntryBank_checked
  · exact s2Step153Front_sigma
  · rfl
  · exact s2Step153Front_branch
  · rfl
  · simpa only [s2Step153FrontPlan,pairEq] using s2Step153HeadBank_checked
  · simpa only [s2Step153FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step153F4_checked
  · exact s2Step153Counter_checked
  · rfl
  · simpa only [s2Step153FrontPlan,headEq] using s2Step153ExitBank_checked

private theorem s2Step153Complete_explicit_checked : compileHmrEarlyStepLog s2Step153EntryFBefore s2Step153FrontBank 193 92 ⟨193,192,92,90⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step153CompleteLog=some s2Step153CompletePlan := by
  let Q := s2Step153EarlyControlPlan
  have hq := s2Step153EarlyControl_plan_checked
  have fv1 : s2Step153CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step153CompleteOut.fv.payload[2]?.getD s2Step153CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step153CompleteOut.fv.payload[3]?.getD s2Step153CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step153CompleteOut.fv.payload[4]?.getD s2Step153CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step153EntryFBefore s2Step153EarlyControlArena s2Step153FrontBank 193 92 ⟨193,192,92,90⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step153CompleteLog s2Step153FrontPlan Q
    s2Step153Front_checked s2Step153Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step153Complete_owned s2Step153Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step153EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 786 s2Step153CompleteOut.fv.second (s2Step153CompleteOut.fv.payload[2]?.getD s2Step153CompleteOut.fv.sign) (s2Step153CompleteOut.fv.payload[3]?.getD s2Step153CompleteOut.fv.sign) (s2Step153CompleteOut.fv.payload[4]?.getD s2Step153CompleteOut.fv.sign) 790 42 s2Step153EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep153Arena : Arena := s2Step153EntryFBefore
def s2PrivateStep153Bank : WindowBank := s2Step153FrontBank
def s2PrivateStep153Spec : HmrSourceWalkStepLog := ⟨193,92,⟨193,192,92,90⟩,42,.early s2Step153CompleteLog⟩
def s2PrivateStep153Plan : HmrSourceStepPlan := .early s2Step153CompletePlan
theorem s2PrivateStep153_source : s2PrivateStep153Spec=s2ObservedLogs144[9] := rfl
theorem s2PrivateStep153_checked : compileHmrSourceStepLog s2PrivateStep153Arena s2PrivateStep153Bank
    s2PrivateStep153Spec.fgWidth s2PrivateStep153Spec.vWidth s2PrivateStep153Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 153 s2PrivateStep153Spec.need none s2PrivateStep153Spec.log=some s2PrivateStep153Plan := by
  change compileHmrSourceStepLog s2Step153EntryFBefore s2Step153FrontBank 193 92 ⟨193,192,92,90⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 153 42 none (.early s2Step153CompleteLog)=some (.early s2Step153CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 153<498)]
  rw [s2Step153Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
