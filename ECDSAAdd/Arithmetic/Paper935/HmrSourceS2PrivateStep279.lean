import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep277
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

private def s2Step279CompleteMoves : List (Wire × Wire) := [(783,130)]

private def s2Step279EarlyControlLog : HmrEarlyControlLog := ⟨[783, 781, 891, 839, 815],[788],[830],[800, 894, 896, 901, 903, 904],[905]⟩

private def s2Step279FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [815], [], [844]],[[788], [839], [781], [891]],[[], [], [], []]⟩,[845],[791],[830],[800],[894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step279CompleteLog : HmrEarlyStepLog := ⟨s2Step279FrontLog,s2Step279CompleteMoves,s2Step279EarlyControlLog⟩

private def s2Step279ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩

private def s2Step279ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩

private def s2Step279ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129],769⟩

private def s2Step279ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844],771⟩

private def s2Step279FrontOut : WindowBank := ⟨s2Step279ExitFOut,s2Step279ExitGOut,s2Step279ExitFvOut,s2Step279ExitGvOut⟩

private def s2Step279CompleteOut : WindowBank := s2Step279FrontOut.repacked s2Step279CompleteMoves

private def s2Step279EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step279EarlyControlPositiveArena,[788],s2Step279EarlyControlEqualityArena,[830],⟨⟨845,false⟩,[⟨⟨788,false⟩,830⟩]⟩⟩

private def s2Step279EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,783⟩,⟨⟨774,false⟩,781⟩,⟨⟨775,false⟩,891⟩,⟨⟨776,false⟩,839⟩,⟨⟨777,false⟩,815⟩]⟩

private def s2Step279EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step279EarlyControlZeroArena,s2Step279EarlyControlZeroPlan,s2Step279EarlyControlClassPlan,s2Step279EarlyControlFlagArena,s2Step279EarlyControlFittedArena,s2Step279EarlyControlHistoryArena,s2Step279EarlyControlSigmaArena,s2Step279EarlyControlOutputArena,s2Step279EarlyControlLog⟩

private def s2Step279CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step279Counter_bounded : s2Step279CounterWork.toFinset⊆arenaWires := by norm_num [s2Step279CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step279HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279CounterDuring : Arena := ⟨s2Step279HeadFvAfter.live∪s2Step279CounterWork.toFinset,Finset.union_subset s2Step279HeadFvAfter.bounded s2Step279Counter_bounded⟩

private def s2Step279EntryFFresh : List Wire := []

private def s2Step279EntryFvFresh : List Wire := []

private def s2Step279EntryGFresh : List Wire := [815]

private def s2Step279EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279EntryGvFresh : List Wire := [844]

private def s2Step279ExitFExtra : List Wire := [839]

private def s2Step279ExitFvExtra : List Wire := [891]

private def s2Step279ExitGExtra : List Wire := [130, 815, 788]

private def s2Step279ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279ExitGvExtra : List Wire := [781]

private def s2Step279Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279Add0Work : List Wire := [894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step279Add0_bounded : s2Step279Add0Work.toFinset⊆arenaWires := by
  have h : s2Step279Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step279Add0During : Arena := ⟨s2Step279Add0Arena.live∪s2Step279Add0Work.toFinset,Finset.union_subset s2Step279Add0Arena.bounded s2Step279Add0_bounded⟩

private def s2Step279Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279Add1Work : List Wire := [894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step279Add1_bounded : s2Step279Add1Work.toFinset⊆arenaWires := by
  have h : s2Step279Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step279Add1During : Arena := ⟨s2Step279Add1Arena.live∪s2Step279Add1Work.toFinset,Finset.union_subset s2Step279Add1Arena.bounded s2Step279Add1_bounded⟩

private def s2Step279F4FlagArena : Arena := ⟨s2Step279HeadFvAfter.live∪{830},Finset.union_subset s2Step279HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step279F4Plan : HmrHybridF4Plan := ⟨s2Step279F4FlagArena,[830],s2Step279Add0Arena,[800],s2Step279Add0During,s2Step279Add0Work,s2Step279Add1During,s2Step279Add1Work⟩

private def s2Step279HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 839],768⟩

private def s2Step279HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 891],770⟩

private def s2Step279HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 815, 788],769⟩

private def s2Step279HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 781],771⟩

private def s2Step279FrontHead : WindowBank := ⟨s2Step279HeadFOut,s2Step279HeadGOut,s2Step279HeadFvOut,s2Step279HeadGvOut⟩

private def s2Step279EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩

private def s2Step279EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩

private def s2Step279EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 815],769⟩

private def s2Step279EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844],771⟩

private def s2Step279FrontPair : WindowBank := ⟨s2Step279EntryFOut,s2Step279EntryGOut,s2Step279EntryFvOut,s2Step279EntryGvOut⟩

private def s2Step279FrontSigmaArena : Arena := ⟨s2Step279EntryGvAfter.live∪{845},Finset.union_subset s2Step279EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step279HeadFFresh : List Wire := [839]

private def s2Step279HeadFvFresh : List Wire := [891]

private def s2Step279HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279HeadGFresh : List Wire := [788]

private def s2Step279HeadGvFresh : List Wire := [781]

private def s2Step279FrontPlan : HmrSourceFront := ⟨s2Step279EntryGvAfter,s2Step279FrontPair,(growRow 768 s2Step279EntryFFresh ++ (growRow 769 s2Step279EntryGFresh ++ (growRow 770 s2Step279EntryFvFresh ++ (growRow 771 s2Step279EntryGvFresh ++ [])))),s2Step279FrontSigmaArena,[845],s2Step279HeadGBefore,[791],
  s2Step279HeadFvAfter,s2Step279FrontHead,(growRow 769 s2Step279HeadGFresh ++ (growRow 768 s2Step279HeadFFresh ++ (growRow 771 s2Step279HeadGvFresh ++ (growRow 770 s2Step279HeadFvFresh ++ [])))),s2Step279F4Plan,s2Step279CounterDuring,s2Step279CounterWork,s2Step279ExitGvAfter,s2Step279FrontOut,(shrinkRow 769 s2Step279ExitGExtra ++ (shrinkRow 768 s2Step279ExitFExtra ++ (shrinkRow 770 s2Step279ExitFvExtra ++ (shrinkRow 771 s2Step279ExitGvExtra ++ []))))⟩

private def s2Step279CompletePlan : HmrEarlyStepPlan := ⟨s2Step279FrontPlan,s2Step279EarlyControlArena,s2Step279EarlyControlPlan,s2Step279CompleteMoves⟩

private theorem s2Step279Complete_apart : List.Disjoint (s2Step279CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [845, 791, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] := by
  have nd : ((s2Step279CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[845, 791, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step279Complete_owned : (s2Step279CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step279EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step279EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step279CompleteMoveArena : Arena := ⟨s2Step279ExitGvAfter.live∪{130},Finset.union_subset s2Step279ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step279Complete_repack : s2Step279ExitGvAfter.checkRepack s2Step279CompleteMoves=some s2Step279EarlyControlArena := by
  have owned : 783∈s2Step279ExitGvAfter.live := by norm_num [s2Step279ExitGvAfter,arenaWires]
  have reserve : s2Step279ExitGvAfter.reserve {130}=some s2Step279CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step279ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step279CompleteMoveArena.retireSet {783}=s2Step279EarlyControlArena := by
    unfold Arena.retireSet s2Step279EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step279CompleteMoveArena,s2Step279ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step279CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step279CompleteMoveArena.retireSet {783}).checkRepack []=some s2Step279EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step279EarlyControl_branchOwned : ([791] : List Wire).toFinset⊆s2Step279EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step279EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279EarlyControl_branch : compileHmrBranchRetirement s2Step279EarlyControlSigmaArena 791=some s2Step279EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step279EarlyControl_branchOwned
  · ext q
    simp [s2Step279EarlyControlOutputArena,s2Step279EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step279EarlyControl_classEqualityBorrow : s2Step279EarlyControlPositiveArena.checkBorrow (([845, 788] : List Wire).length-1) s2Step279EarlyControlLog.classWork=some s2Step279EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step279EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step279EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step279EarlyControlEqualityArena,s2Step279EarlyControlPositiveArena,s2Step279EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step279EarlyControl_classEqualityOwned : ([845, 788] : List Wire).toFinset⊆s2Step279EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step279EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279EarlyControl_classEquality : compileHmrEqualityLog s2Step279EarlyControlPositiveArena [845, 788] 0 s2Step279EarlyControlLog.classWork=some (s2Step279EarlyControlEqualityArena,s2Step279EarlyControlLog.classWork,s2Step279EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step279EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step279EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step279EarlyControl_classOwned : ([777, 815, 845] : List Wire).toFinset⊆s2Step279EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step279EarlyControlZeroArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279EarlyControl_positiveBorrow : s2Step279EarlyControlZeroArena.checkBorrow (1) s2Step279EarlyControlLog.positiveWork=some s2Step279EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step279EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step279EarlyControlZeroArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step279EarlyControlPositiveArena,s2Step279EarlyControlZeroArena,s2Step279EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step279EarlyControl_class : compileHmrSourceClassLog s2Step279EarlyControlZeroArena false 777 s2Step279EarlyControlZeroPlan.top 0 845 s2Step279EarlyControlLog.positiveWork s2Step279EarlyControlLog.classWork=some s2Step279EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step279EarlyControlClassPlan s2Step279EarlyControlZeroArena false 777 s2Step279EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s2Step279EarlyControl_classOwned
  · exact s2Step279EarlyControl_positiveBorrow
  · exact s2Step279EarlyControl_classEquality

private theorem s2Step279EarlyControl_entryRecordOwned : ([791, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step279EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step279EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s2Step279EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step279EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279EarlyControl_fitBorrow : s2Step279EarlyControlFlagArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step279EarlyControlLog.recordFresh=some s2Step279EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step279EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step279EarlyControlFlagArena (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step279EarlyControlFittedArena,s2Step279EarlyControlFlagArena,s2Step279EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step279EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step279EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step279EarlyControlFlagArena (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279EarlyControl_fit : compileHmrRecordGrowLog s2Step279EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 54 s2Step279EarlyControlLog.recordFresh=some s2Step279EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step279EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step279EarlyControl_fitBorrow

private theorem s2Step279EarlyControl_flagsBorrow : s2Step279EarlyControlEqualityArena.checkBorrow (6) s2Step279EarlyControlLog.flagWork=some s2Step279EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step279EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step279EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step279EarlyControlFlagArena,s2Step279EarlyControlEqualityArena,s2Step279EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step279EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s2Step279EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step279EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279EarlyControl_flags : compileHmrFlagsLog s2Step279EarlyControlClassPlan.equalityArena s2Step279EarlyControlClassPlan.equality.top 253 252 251 s2Step279EarlyControlLog.flagWork=some s2Step279EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step279EarlyControl_flagsOwned⟩
  · exact s2Step279EarlyControl_flagsBorrow

private theorem s2Step279EarlyControl_historyBorrow : s2Step279EarlyControlArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step279EarlyControlLog.recordFresh=some s2Step279EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step279EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step279EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step279EarlyControlHistoryArena,s2Step279EarlyControlArena,s2Step279EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step279EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step279EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step279EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279EarlyControl_history : compileHmrRecordGrowLog s2Step279EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 54 s2Step279EarlyControlLog.recordFresh=some s2Step279EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step279EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step279EarlyControl_historyBorrow

private theorem s2Step279EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s2Step279EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step279EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s2Step279EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step279EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279EarlyControl_sigmaRelease : s2Step279EarlyControlHistoryArena.release {845} (fun _ => false)=some s2Step279EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step279EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step279EarlyControlSigmaArena,s2Step279EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step279EarlyControl_sigma : compileHmrSigmaDropLog s2Step279EarlyControlHistoryArena false 0 0 254 845 []=some s2Step279EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step279EarlyControl_sigmaOwned⟩
  · exact s2Step279EarlyControl_sigmaRelease

private theorem s2Step279EarlyControl_zeroBorrow : s2Step279EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step279EarlyControlLog.zeroWork=some s2Step279EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step279EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step279EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step279EarlyControlZeroArena,s2Step279EarlyControlArena,s2Step279EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step279EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step279EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step279EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279EarlyControl_zero : compileHmrEqualityLog s2Step279EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step279EarlyControlLog.zeroWork=some (s2Step279EarlyControlZeroArena,s2Step279EarlyControlLog.zeroWork,s2Step279EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step279EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step279EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step279EarlyControl_logged : s2Step279EarlyControlPlan.Logged s2Step279EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 845 254 253 252 251 791 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step279EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step279EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step279EarlyControl_zero
  · exact s2Step279EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step279EarlyControl_flags
  · exact s2Step279EarlyControl_fit
  · exact s2Step279EarlyControl_history
  · exact s2Step279EarlyControl_sigma
  · exact s2Step279EarlyControl_branch

private theorem s2Step279EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step279EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 845 254 253 252 251 791 54 s2Step279EarlyControlLog=some s2Step279EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step279EarlyControlPlan s2Step279EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 845 254 253 252 251 791 54 s2Step279EarlyControl_logged

private def s2Step279EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩

private def s2Step279EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩

private def s2Step279EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130],769⟩

private def s2Step279EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778],771⟩

private def s2Step279FrontBank : WindowBank := ⟨s2Step279EntryFRow,s2Step279EntryGRow,s2Step279EntryFvRow,s2Step279EntryGvRow⟩

private def s2Step279Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 839, 768]

private def s2Step279Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 815, 788, 769]

private def s2Step279Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 891, 770]

private def s2Step279Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 781, 771]

private theorem s2Step279Counter_apart : Disjoint s2Step279HeadFvAfter.live s2Step279CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step279HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279Counter_borrowed : s2Step279HeadFvAfter.checkBorrow 4 s2Step279CounterWork=some s2Step279CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step279HeadFvAfter s2Step279CounterDuring s2Step279CounterWork.toFinset s2Step279Counter_bounded s2Step279Counter_apart rfl

private theorem s2Step279Counter_owned : (845::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step279HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step279HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279Counter_checked : compileHmrCounterStepLog s2Step279HeadFvAfter true 845 [772, 773, 774, 775, 776, 777] s2Step279CounterWork=some s2Step279CounterDuring := by
  have owned : ∀q∈845::[772, 773, 774, 775, 776, 777],q∈s2Step279HeadFvAfter.live := fun q hq => s2Step279Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step279Counter_borrowed

private def s2Step279EntryFAfter : Arena := s2Step279EntryFBefore

private theorem s2Step279EntryBank_incomingDistinct : ([s2Step279EntryFRow,s2Step279EntryGRow,s2Step279EntryFvRow,s2Step279EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279EntryF_Incoming : rowsOwned s2Step279EntryFBefore [s2Step279EntryFRow,s2Step279EntryGRow,s2Step279EntryFvRow,s2Step279EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step279EntryFRow,s2Step279EntryGRow,s2Step279EntryFvRow,s2Step279EntryGvRow] 0 s2Step279EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step279EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step279EntryBank_outgoingOwned : rowsOwned s2Step279EntryGvAfter [s2Step279EntryFOut,s2Step279EntryGOut,s2Step279EntryFvOut,s2Step279EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step279EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step279EntryF_Outgoing : rowsOwned s2Step279EntryGvAfter [s2Step279EntryFOut,s2Step279EntryGOut,s2Step279EntryFvOut,s2Step279EntryGvOut] :=
  hmrRows_owned_drop s2Step279EntryGvAfter [s2Step279EntryFOut,s2Step279EntryGOut,s2Step279EntryFvOut,s2Step279EntryGvOut] 0 s2Step279EntryBank_outgoingOwned

private theorem s2Step279EntryF_distinct : (s2Step279EntryFRow.sign::s2Step279EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279EntryF_owned : (s2Step279EntryFRow.sign::s2Step279EntryFRow.payload).toFinset⊆s2Step279EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step279EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279EntryF_reserved : s2Step279EntryFBefore.reserve s2Step279EntryFFresh.toFinset=some s2Step279EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step279EntryFFresh,arenaWires]
  · norm_num [s2Step279EntryFBefore,s2Step279EntryFFresh,arenaWires]
  · simp only [s2Step279EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step279EntryF_checked : planRowResizeLog s2Step279EntryFBefore s2Step279EntryFRow 132 s2Step279EntryFFresh=
    some (s2Step279EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩,growRow 768 s2Step279EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step279EntryFBefore s2Step279EntryFAfter s2Step279EntryFRow 132 s2Step279EntryFFresh
    s2Step279EntryF_distinct s2Step279EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step279EntryF_reserved
  have rowEq : WindowRow.mk (s2Step279EntryFRow.payload++s2Step279EntryFFresh) s2Step279EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step279EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279EntryFvAfter : Arena := s2Step279EntryGAfter

private def s2Step279EntryFvBefore : Arena := s2Step279EntryGAfter

private theorem s2Step279EntryFv_Incoming : rowsOwned s2Step279EntryFvBefore [s2Step279EntryFvRow,s2Step279EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step279EntryFRow,s2Step279EntryGRow,s2Step279EntryFvRow,s2Step279EntryGvRow] 2 s2Step279EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step279EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step279EntryFv_Outgoing : rowsOwned s2Step279EntryGvAfter [s2Step279EntryFvOut,s2Step279EntryGvOut] :=
  hmrRows_owned_drop s2Step279EntryGvAfter [s2Step279EntryFOut,s2Step279EntryGOut,s2Step279EntryFvOut,s2Step279EntryGvOut] 2 s2Step279EntryBank_outgoingOwned

private theorem s2Step279EntryFv_distinct : (s2Step279EntryFvRow.sign::s2Step279EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279EntryFv_owned : (s2Step279EntryFvRow.sign::s2Step279EntryFvRow.payload).toFinset⊆s2Step279EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step279EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279EntryFv_reserved : s2Step279EntryFvBefore.reserve s2Step279EntryFvFresh.toFinset=some s2Step279EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step279EntryFvFresh,arenaWires]
  · norm_num [s2Step279EntryFvBefore,s2Step279EntryGAfter,s2Step279EntryFvFresh,arenaWires]
  · simp only [s2Step279EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step279EntryFv_checked : planRowResizeLog s2Step279EntryFvBefore s2Step279EntryFvRow 155 s2Step279EntryFvFresh=
    some (s2Step279EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩,growRow 770 s2Step279EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step279EntryFvBefore s2Step279EntryFvAfter s2Step279EntryFvRow 155 s2Step279EntryFvFresh
    s2Step279EntryFv_distinct s2Step279EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step279EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step279EntryFvRow.payload++s2Step279EntryFvFresh) s2Step279EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step279EntryGBefore : Arena := s2Step279EntryFBefore

private theorem s2Step279EntryG_Incoming : rowsOwned s2Step279EntryGBefore [s2Step279EntryGRow,s2Step279EntryFvRow,s2Step279EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step279EntryFRow,s2Step279EntryGRow,s2Step279EntryFvRow,s2Step279EntryGvRow] 1 s2Step279EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step279EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step279EntryG_Outgoing : rowsOwned s2Step279EntryGvAfter [s2Step279EntryGOut,s2Step279EntryFvOut,s2Step279EntryGvOut] :=
  hmrRows_owned_drop s2Step279EntryGvAfter [s2Step279EntryFOut,s2Step279EntryGOut,s2Step279EntryFvOut,s2Step279EntryGvOut] 1 s2Step279EntryBank_outgoingOwned

private theorem s2Step279EntryG_distinct : (s2Step279EntryGRow.sign::s2Step279EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279EntryG_owned : (s2Step279EntryGRow.sign::s2Step279EntryGRow.payload).toFinset⊆s2Step279EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step279EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279EntryG_reserved : s2Step279EntryGBefore.reserve s2Step279EntryGFresh.toFinset=some s2Step279EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step279EntryGFresh,arenaWires]
  · norm_num [s2Step279EntryGBefore,s2Step279EntryFBefore,s2Step279EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step279EntryGAfter,s2Step279EntryGBefore,s2Step279EntryFBefore,s2Step279EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step279EntryG_checked : planRowResizeLog s2Step279EntryGBefore s2Step279EntryGRow 132 s2Step279EntryGFresh=
    some (s2Step279EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 815],769⟩,growRow 769 s2Step279EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step279EntryGBefore s2Step279EntryGAfter s2Step279EntryGRow 132 s2Step279EntryGFresh
    s2Step279EntryG_distinct s2Step279EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step279EntryG_reserved
  have rowEq : WindowRow.mk (s2Step279EntryGRow.payload++s2Step279EntryGFresh) s2Step279EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 815],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step279EntryGvBefore : Arena := s2Step279EntryGAfter

private theorem s2Step279EntryGv_Incoming : rowsOwned s2Step279EntryGvBefore [s2Step279EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step279EntryFRow,s2Step279EntryGRow,s2Step279EntryFvRow,s2Step279EntryGvRow] 3 s2Step279EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step279EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step279EntryGv_Outgoing : rowsOwned s2Step279EntryGvAfter [s2Step279EntryGvOut] :=
  hmrRows_owned_drop s2Step279EntryGvAfter [s2Step279EntryFOut,s2Step279EntryGOut,s2Step279EntryFvOut,s2Step279EntryGvOut] 3 s2Step279EntryBank_outgoingOwned

private theorem s2Step279EntryGv_distinct : (s2Step279EntryGvRow.sign::s2Step279EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279EntryGv_owned : (s2Step279EntryGvRow.sign::s2Step279EntryGvRow.payload).toFinset⊆s2Step279EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step279EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279EntryGv_reserved : s2Step279EntryGvBefore.reserve s2Step279EntryGvFresh.toFinset=some s2Step279EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step279EntryGvFresh,arenaWires]
  · norm_num [s2Step279EntryGvBefore,s2Step279EntryGAfter,s2Step279EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step279EntryGvAfter,s2Step279EntryGvBefore,s2Step279EntryGAfter,s2Step279EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step279EntryGv_checked : planRowResizeLog s2Step279EntryGvBefore s2Step279EntryGvRow 155 s2Step279EntryGvFresh=
    some (s2Step279EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844],771⟩,growRow 771 s2Step279EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step279EntryGvBefore s2Step279EntryGvAfter s2Step279EntryGvRow 155 s2Step279EntryGvFresh
    s2Step279EntryGv_distinct s2Step279EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step279EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step279EntryGvRow.payload++s2Step279EntryGvFresh) s2Step279EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step279EntryBank_rows : planWindowRowsLog s2Step279EntryFBefore [(s2Step279EntryFRow,132),(s2Step279EntryGRow,132),(s2Step279EntryFvRow,155),(s2Step279EntryGvRow,155)] [s2Step279EntryFFresh,s2Step279EntryGFresh,s2Step279EntryFvFresh,s2Step279EntryGvFresh]=
    some (s2Step279EntryGvAfter,[s2Step279EntryFOut,s2Step279EntryGOut,s2Step279EntryFvOut,s2Step279EntryGvOut],(growRow 768 s2Step279EntryFFresh ++ (growRow 769 s2Step279EntryGFresh ++ (growRow 770 s2Step279EntryFvFresh ++ (growRow 771 s2Step279EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step279EntryGvAfter [] []=some (s2Step279EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step279EntryGvBefore s2Step279EntryGvAfter s2Step279EntryGvAfter
    s2Step279EntryGvRow s2Step279EntryGvOut 155 s2Step279EntryGvFresh [] [] []
    (growRow 771 s2Step279EntryGvFresh) ([]) s2Step279EntryGv_Incoming s2Step279EntryGv_checked h4 s2Step279EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step279EntryFvBefore s2Step279EntryFvAfter s2Step279EntryGvAfter
    s2Step279EntryFvRow s2Step279EntryFvOut 155 s2Step279EntryFvFresh [(s2Step279EntryGvRow,155)] [s2Step279EntryGvFresh] [s2Step279EntryGvOut]
    (growRow 770 s2Step279EntryFvFresh) ((growRow 771 s2Step279EntryGvFresh ++ [])) s2Step279EntryFv_Incoming s2Step279EntryFv_checked h3 s2Step279EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step279EntryGBefore s2Step279EntryGAfter s2Step279EntryGvAfter
    s2Step279EntryGRow s2Step279EntryGOut 132 s2Step279EntryGFresh [(s2Step279EntryFvRow,155),(s2Step279EntryGvRow,155)] [s2Step279EntryFvFresh,s2Step279EntryGvFresh] [s2Step279EntryFvOut,s2Step279EntryGvOut]
    (growRow 769 s2Step279EntryGFresh) ((growRow 770 s2Step279EntryFvFresh ++ (growRow 771 s2Step279EntryGvFresh ++ []))) s2Step279EntryG_Incoming s2Step279EntryG_checked h2 s2Step279EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step279EntryFBefore s2Step279EntryFAfter s2Step279EntryGvAfter
    s2Step279EntryFRow s2Step279EntryFOut 132 s2Step279EntryFFresh [(s2Step279EntryGRow,132),(s2Step279EntryFvRow,155),(s2Step279EntryGvRow,155)] [s2Step279EntryGFresh,s2Step279EntryFvFresh,s2Step279EntryGvFresh] [s2Step279EntryGOut,s2Step279EntryFvOut,s2Step279EntryGvOut]
    (growRow 768 s2Step279EntryFFresh) ((growRow 769 s2Step279EntryGFresh ++ (growRow 770 s2Step279EntryFvFresh ++ (growRow 771 s2Step279EntryGvFresh ++ [])))) s2Step279EntryF_Incoming s2Step279EntryF_checked h1 s2Step279EntryF_Outgoing
  exact h0

private theorem s2Step279EntryBank_checked : compileHmrBankResizeLog .entry s2Step279EntryFBefore ⟨s2Step279EntryFRow,s2Step279EntryGRow,s2Step279EntryFvRow,s2Step279EntryGvRow⟩ ⟨132,132,155,155⟩ [s2Step279EntryFFresh,s2Step279EntryGFresh,s2Step279EntryFvFresh,s2Step279EntryGvFresh]=
    some (s2Step279EntryGvAfter,⟨s2Step279EntryFOut,s2Step279EntryGOut,s2Step279EntryFvOut,s2Step279EntryGvOut⟩,(growRow 768 s2Step279EntryFFresh ++ (growRow 769 s2Step279EntryGFresh ++ (growRow 770 s2Step279EntryFvFresh ++ (growRow 771 s2Step279EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step279EntryBank_rows]
  rfl

private def s2Step279ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279ExitFBefore : Arena := s2Step279ExitGAfter

private def s2Step279ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 839],768⟩

private def s2Step279ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 891],770⟩

private def s2Step279ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 815, 788],769⟩

private def s2Step279ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 781],771⟩

private theorem s2Step279ExitBank_incomingDistinct : ([s2Step279ExitGRow,s2Step279ExitFRow,s2Step279ExitFvRow,s2Step279ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279ExitF_Incoming : rowsOwned s2Step279ExitFBefore [s2Step279ExitFRow,s2Step279ExitFvRow,s2Step279ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step279ExitGRow,s2Step279ExitFRow,s2Step279ExitFvRow,s2Step279ExitGvRow] 1 s2Step279ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step279ExitFBefore (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step279ExitBank_outgoingOwned : rowsOwned s2Step279ExitGvAfter [s2Step279ExitGOut,s2Step279ExitFOut,s2Step279ExitFvOut,s2Step279ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step279ExitGvAfter (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step279ExitF_Outgoing : rowsOwned s2Step279ExitGvAfter [s2Step279ExitFOut,s2Step279ExitFvOut,s2Step279ExitGvOut] :=
  hmrRows_owned_drop s2Step279ExitGvAfter [s2Step279ExitGOut,s2Step279ExitFOut,s2Step279ExitFvOut,s2Step279ExitGvOut] 1 s2Step279ExitBank_outgoingOwned

private theorem s2Step279ExitF_distinct : (s2Step279ExitFRow.sign::s2Step279ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279ExitF_owned : (s2Step279ExitFRow.sign::s2Step279ExitFRow.payload).toFinset⊆s2Step279ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step279ExitFBefore (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279ExitF_retired : s2Step279ExitFBefore.retireSet s2Step279ExitFExtra.toFinset=s2Step279ExitFAfter := by
  unfold Arena.retireSet s2Step279ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step279ExitFBefore,s2Step279ExitGAfter,s2Step279ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step279ExitF_checked : planRowResizeLog s2Step279ExitFBefore s2Step279ExitFRow 132 []=
    some (s2Step279ExitFAfter,s2Step279ExitFOut,shrinkRow 768 s2Step279ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step279ExitFBefore s2Step279ExitFRow 132 s2Step279ExitF_distinct s2Step279ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step279ExitFRow.payload.take 132) s2Step279ExitFRow.sign=s2Step279ExitFOut := by decide +kernel
  have hi : s2Step279ExitFRow.payload.drop 132=s2Step279ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step279ExitF_retired] at result
  exact result

private def s2Step279ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279ExitFvBefore : Arena := s2Step279ExitFAfter

private theorem s2Step279ExitFv_Incoming : rowsOwned s2Step279ExitFvBefore [s2Step279ExitFvRow,s2Step279ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step279ExitGRow,s2Step279ExitFRow,s2Step279ExitFvRow,s2Step279ExitGvRow] 2 s2Step279ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step279ExitFvBefore (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step279ExitFv_Outgoing : rowsOwned s2Step279ExitGvAfter [s2Step279ExitFvOut,s2Step279ExitGvOut] :=
  hmrRows_owned_drop s2Step279ExitGvAfter [s2Step279ExitGOut,s2Step279ExitFOut,s2Step279ExitFvOut,s2Step279ExitGvOut] 2 s2Step279ExitBank_outgoingOwned

private theorem s2Step279ExitFv_distinct : (s2Step279ExitFvRow.sign::s2Step279ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279ExitFv_owned : (s2Step279ExitFvRow.sign::s2Step279ExitFvRow.payload).toFinset⊆s2Step279ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step279ExitFvBefore (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279ExitFv_retired : s2Step279ExitFvBefore.retireSet s2Step279ExitFvExtra.toFinset=s2Step279ExitFvAfter := by
  unfold Arena.retireSet s2Step279ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step279ExitFvBefore,s2Step279ExitFAfter,s2Step279ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step279ExitFv_checked : planRowResizeLog s2Step279ExitFvBefore s2Step279ExitFvRow 155 []=
    some (s2Step279ExitFvAfter,s2Step279ExitFvOut,shrinkRow 770 s2Step279ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step279ExitFvBefore s2Step279ExitFvRow 155 s2Step279ExitFv_distinct s2Step279ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step279ExitFvRow.payload.take 155) s2Step279ExitFvRow.sign=s2Step279ExitFvOut := by decide +kernel
  have hi : s2Step279ExitFvRow.payload.drop 155=s2Step279ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step279ExitFv_retired] at result
  exact result

private def s2Step279ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step279ExitG_Incoming : rowsOwned s2Step279ExitGBefore [s2Step279ExitGRow,s2Step279ExitFRow,s2Step279ExitFvRow,s2Step279ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step279ExitGRow,s2Step279ExitFRow,s2Step279ExitFvRow,s2Step279ExitGvRow] 0 s2Step279ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step279ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step279ExitG_Outgoing : rowsOwned s2Step279ExitGvAfter [s2Step279ExitGOut,s2Step279ExitFOut,s2Step279ExitFvOut,s2Step279ExitGvOut] :=
  hmrRows_owned_drop s2Step279ExitGvAfter [s2Step279ExitGOut,s2Step279ExitFOut,s2Step279ExitFvOut,s2Step279ExitGvOut] 0 s2Step279ExitBank_outgoingOwned

private theorem s2Step279ExitG_distinct : (s2Step279ExitGRow.sign::s2Step279ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279ExitG_owned : (s2Step279ExitGRow.sign::s2Step279ExitGRow.payload).toFinset⊆s2Step279ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step279ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279ExitG_retired : s2Step279ExitGBefore.retireSet s2Step279ExitGExtra.toFinset=s2Step279ExitGAfter := by
  unfold Arena.retireSet s2Step279ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step279ExitGBefore,s2Step279ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step279ExitG_checked : planRowResizeLog s2Step279ExitGBefore s2Step279ExitGRow 130 []=
    some (s2Step279ExitGAfter,s2Step279ExitGOut,shrinkRow 769 s2Step279ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step279ExitGBefore s2Step279ExitGRow 130 s2Step279ExitG_distinct s2Step279ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step279ExitGRow.payload.take 130) s2Step279ExitGRow.sign=s2Step279ExitGOut := by decide +kernel
  have hi : s2Step279ExitGRow.payload.drop 130=s2Step279ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step279ExitG_retired] at result
  exact result

private def s2Step279ExitGvBefore : Arena := s2Step279ExitFvAfter

private theorem s2Step279ExitGv_Incoming : rowsOwned s2Step279ExitGvBefore [s2Step279ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step279ExitGRow,s2Step279ExitFRow,s2Step279ExitFvRow,s2Step279ExitGvRow] 3 s2Step279ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step279ExitGvBefore (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step279ExitGv_Outgoing : rowsOwned s2Step279ExitGvAfter [s2Step279ExitGvOut] :=
  hmrRows_owned_drop s2Step279ExitGvAfter [s2Step279ExitGOut,s2Step279ExitFOut,s2Step279ExitFvOut,s2Step279ExitGvOut] 3 s2Step279ExitBank_outgoingOwned

private theorem s2Step279ExitGv_distinct : (s2Step279ExitGvRow.sign::s2Step279ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279ExitGv_owned : (s2Step279ExitGvRow.sign::s2Step279ExitGvRow.payload).toFinset⊆s2Step279ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step279ExitGvBefore (fun q => (0≤q ∧ q<130) ∨ (131≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279ExitGv_retired : s2Step279ExitGvBefore.retireSet s2Step279ExitGvExtra.toFinset=s2Step279ExitGvAfter := by
  unfold Arena.retireSet s2Step279ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step279ExitGvBefore,s2Step279ExitFvAfter,s2Step279ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step279ExitGv_checked : planRowResizeLog s2Step279ExitGvBefore s2Step279ExitGvRow 155 []=
    some (s2Step279ExitGvAfter,s2Step279ExitGvOut,shrinkRow 771 s2Step279ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step279ExitGvBefore s2Step279ExitGvRow 155 s2Step279ExitGv_distinct s2Step279ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step279ExitGvRow.payload.take 155) s2Step279ExitGvRow.sign=s2Step279ExitGvOut := by decide +kernel
  have hi : s2Step279ExitGvRow.payload.drop 155=s2Step279ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step279ExitGv_retired] at result
  exact result

private theorem s2Step279ExitBank_rows : planWindowRowsLog s2Step279ExitGBefore [(s2Step279ExitGRow,130),(s2Step279ExitFRow,132),(s2Step279ExitFvRow,155),(s2Step279ExitGvRow,155)] [[],[],[],[]]=
    some (s2Step279ExitGvAfter,[s2Step279ExitGOut,s2Step279ExitFOut,s2Step279ExitFvOut,s2Step279ExitGvOut],(shrinkRow 769 s2Step279ExitGExtra ++ (shrinkRow 768 s2Step279ExitFExtra ++ (shrinkRow 770 s2Step279ExitFvExtra ++ (shrinkRow 771 s2Step279ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step279ExitGvAfter [] []=some (s2Step279ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step279ExitGvBefore s2Step279ExitGvAfter s2Step279ExitGvAfter
    s2Step279ExitGvRow s2Step279ExitGvOut 155 [] [] [] []
    (shrinkRow 771 s2Step279ExitGvExtra) ([]) s2Step279ExitGv_Incoming s2Step279ExitGv_checked h4 s2Step279ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step279ExitFvBefore s2Step279ExitFvAfter s2Step279ExitGvAfter
    s2Step279ExitFvRow s2Step279ExitFvOut 155 [] [(s2Step279ExitGvRow,155)] [[]] [s2Step279ExitGvOut]
    (shrinkRow 770 s2Step279ExitFvExtra) ((shrinkRow 771 s2Step279ExitGvExtra ++ [])) s2Step279ExitFv_Incoming s2Step279ExitFv_checked h3 s2Step279ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step279ExitFBefore s2Step279ExitFAfter s2Step279ExitGvAfter
    s2Step279ExitFRow s2Step279ExitFOut 132 [] [(s2Step279ExitFvRow,155),(s2Step279ExitGvRow,155)] [[],[]] [s2Step279ExitFvOut,s2Step279ExitGvOut]
    (shrinkRow 768 s2Step279ExitFExtra) ((shrinkRow 770 s2Step279ExitFvExtra ++ (shrinkRow 771 s2Step279ExitGvExtra ++ []))) s2Step279ExitF_Incoming s2Step279ExitF_checked h2 s2Step279ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step279ExitGBefore s2Step279ExitGAfter s2Step279ExitGvAfter
    s2Step279ExitGRow s2Step279ExitGOut 130 [] [(s2Step279ExitFRow,132),(s2Step279ExitFvRow,155),(s2Step279ExitGvRow,155)] [[],[],[]] [s2Step279ExitFOut,s2Step279ExitFvOut,s2Step279ExitGvOut]
    (shrinkRow 769 s2Step279ExitGExtra) ((shrinkRow 768 s2Step279ExitFExtra ++ (shrinkRow 770 s2Step279ExitFvExtra ++ (shrinkRow 771 s2Step279ExitGvExtra ++ [])))) s2Step279ExitG_Incoming s2Step279ExitG_checked h1 s2Step279ExitG_Outgoing
  exact h0

private theorem s2Step279ExitBank_checked : compileHmrBankResizeLog .exit s2Step279ExitGBefore ⟨s2Step279ExitFRow,s2Step279ExitGRow,s2Step279ExitFvRow,s2Step279ExitGvRow⟩ ⟨132,130,155,155⟩ [[],[],[],[]]=
    some (s2Step279ExitGvAfter,⟨s2Step279ExitFOut,s2Step279ExitGOut,s2Step279ExitFvOut,s2Step279ExitGvOut⟩,(shrinkRow 769 s2Step279ExitGExtra ++ (shrinkRow 768 s2Step279ExitFExtra ++ (shrinkRow 770 s2Step279ExitFvExtra ++ (shrinkRow 771 s2Step279ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step279ExitBank_rows]
  rfl

private theorem s2Step279Add0_apart : Disjoint s2Step279Add0Arena.live s2Step279Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step279Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279Add0_card : s2Step279Add0Arena.live.card=901 := by
  decide +kernel

private theorem s2Step279Add0_borrowed : s2Step279Add0Arena.checkBorrow (hmrHybridCount s2Step279Add0Arena s2Step279Add0B.length) s2Step279Add0Work=some s2Step279Add0During := by
  have len : s2Step279Add0Work.length=hmrHybridCount s2Step279Add0Arena s2Step279Add0B.length := by
    rw [hmrHybridCount,s2Step279Add0_card]
    decide +kernel
  have nd : s2Step279Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step279Add0Arena s2Step279Add0During s2Step279Add0Work.toFinset s2Step279Add0_bounded s2Step279Add0_apart rfl

private theorem s2Step279Add0_distinct : (830::791::800::(s2Step279Add0A++s2Step279Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279Add0_owned : (830::791::800::(s2Step279Add0A++s2Step279Add0B)).toFinset⊆s2Step279Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step279Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279Add0_checked : compileHmrHybridCinLog s2Step279Add0Arena 791 830 800 s2Step279Add0A s2Step279Add0B s2Step279Add0Work=some s2Step279Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step279Add0Arena s2Step279Add0During 791 830 800 s2Step279Add0A s2Step279Add0B s2Step279Add0Work
    (by decide +kernel) (by decide +kernel) s2Step279Add0_distinct
    (fun q hq => s2Step279Add0_owned (List.mem_toFinset.mpr hq)) s2Step279Add0_borrowed

private theorem s2Step279Add1_apart : Disjoint s2Step279Add1Arena.live s2Step279Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step279Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279Add1_card : s2Step279Add1Arena.live.card=901 := by
  decide +kernel

private theorem s2Step279Add1_borrowed : s2Step279Add1Arena.checkBorrow (hmrHybridCount s2Step279Add1Arena s2Step279Add1B.length) s2Step279Add1Work=some s2Step279Add1During := by
  have len : s2Step279Add1Work.length=hmrHybridCount s2Step279Add1Arena s2Step279Add1B.length := by
    rw [hmrHybridCount,s2Step279Add1_card]
    decide +kernel
  have nd : s2Step279Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step279Add1Arena s2Step279Add1During s2Step279Add1Work.toFinset s2Step279Add1_bounded s2Step279Add1_apart rfl

private theorem s2Step279Add1_distinct : (830::791::800::(s2Step279Add1A++s2Step279Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279Add1_owned : (830::791::800::(s2Step279Add1A++s2Step279Add1B)).toFinset⊆s2Step279Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step279Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279Add1_checked : compileHmrHybridCinLog s2Step279Add1Arena 791 830 800 s2Step279Add1A s2Step279Add1B s2Step279Add1Work=some s2Step279Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step279Add1Arena s2Step279Add1During 791 830 800 s2Step279Add1A s2Step279Add1B s2Step279Add1Work
    (by decide +kernel) (by decide +kernel) s2Step279Add1_distinct
    (fun q hq => s2Step279Add1_owned (List.mem_toFinset.mpr hq)) s2Step279Add1_borrowed

private theorem s2Step279F4_apart : Disjoint (s2Step279Add0A++s2Step279Add0B).toFinset (s2Step279Add1A++s2Step279Add1B).toFinset := by
  have nd : ((s2Step279Add0A++s2Step279Add0B)++(s2Step279Add1A++s2Step279Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step279F4_carry : s2Step279F4FlagArena.checkBorrow 1 [800]=some s2Step279Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step279F4FlagArena,s2Step279HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step279F4FlagArena,s2Step279HeadFvAfter,s2Step279Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step279F4_distinct : (845::791::830::800::((s2Step279Add0A++s2Step279Add1A)++(s2Step279Add0B++s2Step279Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279F4_flag : s2Step279HeadFvAfter.checkBorrow 1 [830]=some s2Step279F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step279HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step279F4_owned : (845::791::((s2Step279Add0A++s2Step279Add1A)++(s2Step279Add0B++s2Step279Add1B))).toFinset⊆s2Step279HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step279HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279F4_checked : compileHmrHybridF4Log s2Step279HeadFvAfter 845 791 s2Step279Add0A s2Step279Add0B s2Step279Add1A s2Step279Add1B [830] [800] s2Step279Add0Work s2Step279Add1Work=some s2Step279F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step279HeadFvAfter s2Step279F4FlagArena s2Step279Add0Arena s2Step279Add0During s2Step279Add1During 845 791
    s2Step279Add0A s2Step279Add0B s2Step279Add1A s2Step279Add1B [830] [800] s2Step279Add0Work s2Step279Add1Work
    (fun q hq => s2Step279F4_owned (List.mem_toFinset.mpr hq)) s2Step279F4_flag s2Step279F4_carry
    s2Step279F4_distinct s2Step279F4_apart s2Step279Add0_checked s2Step279Add1_checked

private theorem s2Step279Front_branch : s2Step279FrontSigmaArena.checkBorrow 1 [791]=some s2Step279HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step279FrontSigmaArena,s2Step279EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step279FrontSigmaArena,s2Step279EntryGvAfter,s2Step279HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step279Front_entry : HmrFrontEntryValid s2Step279EntryFBefore s2Step279FrontBank 132 155 ⟨132,130,155,155⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step279FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step279EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step279EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step279FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step279Front_sigma : s2Step279EntryGvAfter.checkBorrow 1 [845]=some s2Step279FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step279EntryGvAfter,arenaWires]
  · rfl

private def s2Step279HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279HeadFBefore : Arena := s2Step279HeadGAfter

private def s2Step279HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩

private def s2Step279HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩

private def s2Step279HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 815],769⟩

private def s2Step279HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844],771⟩

private theorem s2Step279HeadBank_incomingDistinct : ([s2Step279HeadGRow,s2Step279HeadFRow,s2Step279HeadGvRow,s2Step279HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279HeadF_Incoming : rowsOwned s2Step279HeadFBefore [s2Step279HeadFRow,s2Step279HeadGvRow,s2Step279HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step279HeadGRow,s2Step279HeadFRow,s2Step279HeadGvRow,s2Step279HeadFvRow] 1 s2Step279HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step279HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step279HeadBank_outgoingOwned : rowsOwned s2Step279HeadFvAfter [s2Step279HeadGOut,s2Step279HeadFOut,s2Step279HeadGvOut,s2Step279HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step279HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step279HeadF_Outgoing : rowsOwned s2Step279HeadFvAfter [s2Step279HeadFOut,s2Step279HeadGvOut,s2Step279HeadFvOut] :=
  hmrRows_owned_drop s2Step279HeadFvAfter [s2Step279HeadGOut,s2Step279HeadFOut,s2Step279HeadGvOut,s2Step279HeadFvOut] 1 s2Step279HeadBank_outgoingOwned

private theorem s2Step279HeadF_distinct : (s2Step279HeadFRow.sign::s2Step279HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279HeadF_owned : (s2Step279HeadFRow.sign::s2Step279HeadFRow.payload).toFinset⊆s2Step279HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step279HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279HeadF_reserved : s2Step279HeadFBefore.reserve s2Step279HeadFFresh.toFinset=some s2Step279HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step279HeadFFresh,arenaWires]
  · norm_num [s2Step279HeadFBefore,s2Step279HeadGAfter,s2Step279HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step279HeadFAfter,s2Step279HeadFBefore,s2Step279HeadGAfter,s2Step279HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step279HeadF_checked : planRowResizeLog s2Step279HeadFBefore s2Step279HeadFRow 133 s2Step279HeadFFresh=
    some (s2Step279HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 839],768⟩,growRow 768 s2Step279HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step279HeadFBefore s2Step279HeadFAfter s2Step279HeadFRow 133 s2Step279HeadFFresh
    s2Step279HeadF_distinct s2Step279HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step279HeadF_reserved
  have rowEq : WindowRow.mk (s2Step279HeadFRow.payload++s2Step279HeadFFresh) s2Step279HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 839],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step279HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step279HeadFvBefore : Arena := s2Step279HeadGvAfter

private theorem s2Step279HeadFv_Incoming : rowsOwned s2Step279HeadFvBefore [s2Step279HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step279HeadGRow,s2Step279HeadFRow,s2Step279HeadGvRow,s2Step279HeadFvRow] 3 s2Step279HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step279HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step279HeadFv_Outgoing : rowsOwned s2Step279HeadFvAfter [s2Step279HeadFvOut] :=
  hmrRows_owned_drop s2Step279HeadFvAfter [s2Step279HeadGOut,s2Step279HeadFOut,s2Step279HeadGvOut,s2Step279HeadFvOut] 3 s2Step279HeadBank_outgoingOwned

private theorem s2Step279HeadFv_distinct : (s2Step279HeadFvRow.sign::s2Step279HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279HeadFv_owned : (s2Step279HeadFvRow.sign::s2Step279HeadFvRow.payload).toFinset⊆s2Step279HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step279HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279HeadFv_reserved : s2Step279HeadFvBefore.reserve s2Step279HeadFvFresh.toFinset=some s2Step279HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step279HeadFvFresh,arenaWires]
  · norm_num [s2Step279HeadFvBefore,s2Step279HeadGvAfter,s2Step279HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step279HeadFvAfter,s2Step279HeadFvBefore,s2Step279HeadGvAfter,s2Step279HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step279HeadFv_checked : planRowResizeLog s2Step279HeadFvBefore s2Step279HeadFvRow 156 s2Step279HeadFvFresh=
    some (s2Step279HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 891],770⟩,growRow 770 s2Step279HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step279HeadFvBefore s2Step279HeadFvAfter s2Step279HeadFvRow 156 s2Step279HeadFvFresh
    s2Step279HeadFv_distinct s2Step279HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step279HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step279HeadFvRow.payload++s2Step279HeadFvFresh) s2Step279HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 891],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step279HeadG_Incoming : rowsOwned s2Step279HeadGBefore [s2Step279HeadGRow,s2Step279HeadFRow,s2Step279HeadGvRow,s2Step279HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step279HeadGRow,s2Step279HeadFRow,s2Step279HeadGvRow,s2Step279HeadFvRow] 0 s2Step279HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step279HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step279HeadG_Outgoing : rowsOwned s2Step279HeadFvAfter [s2Step279HeadGOut,s2Step279HeadFOut,s2Step279HeadGvOut,s2Step279HeadFvOut] :=
  hmrRows_owned_drop s2Step279HeadFvAfter [s2Step279HeadGOut,s2Step279HeadFOut,s2Step279HeadGvOut,s2Step279HeadFvOut] 0 s2Step279HeadBank_outgoingOwned

private theorem s2Step279HeadG_distinct : (s2Step279HeadGRow.sign::s2Step279HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279HeadG_owned : (s2Step279HeadGRow.sign::s2Step279HeadGRow.payload).toFinset⊆s2Step279HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step279HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279HeadG_reserved : s2Step279HeadGBefore.reserve s2Step279HeadGFresh.toFinset=some s2Step279HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step279HeadGFresh,arenaWires]
  · norm_num [s2Step279HeadGBefore,s2Step279HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step279HeadGAfter,s2Step279HeadGBefore,s2Step279HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step279HeadG_checked : planRowResizeLog s2Step279HeadGBefore s2Step279HeadGRow 133 s2Step279HeadGFresh=
    some (s2Step279HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 815, 788],769⟩,growRow 769 s2Step279HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step279HeadGBefore s2Step279HeadGAfter s2Step279HeadGRow 133 s2Step279HeadGFresh
    s2Step279HeadG_distinct s2Step279HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step279HeadG_reserved
  have rowEq : WindowRow.mk (s2Step279HeadGRow.payload++s2Step279HeadGFresh) s2Step279HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 815, 788],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step279HeadGvBefore : Arena := s2Step279HeadFAfter

private theorem s2Step279HeadGv_Incoming : rowsOwned s2Step279HeadGvBefore [s2Step279HeadGvRow,s2Step279HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step279HeadGRow,s2Step279HeadFRow,s2Step279HeadGvRow,s2Step279HeadFvRow] 2 s2Step279HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step279HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step279HeadGv_Outgoing : rowsOwned s2Step279HeadFvAfter [s2Step279HeadGvOut,s2Step279HeadFvOut] :=
  hmrRows_owned_drop s2Step279HeadFvAfter [s2Step279HeadGOut,s2Step279HeadFOut,s2Step279HeadGvOut,s2Step279HeadFvOut] 2 s2Step279HeadBank_outgoingOwned

private theorem s2Step279HeadGv_distinct : (s2Step279HeadGvRow.sign::s2Step279HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step279HeadGv_owned : (s2Step279HeadGvRow.sign::s2Step279HeadGvRow.payload).toFinset⊆s2Step279HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step279HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step279HeadGv_reserved : s2Step279HeadGvBefore.reserve s2Step279HeadGvFresh.toFinset=some s2Step279HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step279HeadGvFresh,arenaWires]
  · norm_num [s2Step279HeadGvBefore,s2Step279HeadFAfter,s2Step279HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step279HeadGvAfter,s2Step279HeadGvBefore,s2Step279HeadFAfter,s2Step279HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step279HeadGv_checked : planRowResizeLog s2Step279HeadGvBefore s2Step279HeadGvRow 156 s2Step279HeadGvFresh=
    some (s2Step279HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 781],771⟩,growRow 771 s2Step279HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step279HeadGvBefore s2Step279HeadGvAfter s2Step279HeadGvRow 156 s2Step279HeadGvFresh
    s2Step279HeadGv_distinct s2Step279HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step279HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step279HeadGvRow.payload++s2Step279HeadGvFresh) s2Step279HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 781],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step279HeadBank_rows : planWindowRowsLog s2Step279HeadGBefore [(s2Step279HeadGRow,133),(s2Step279HeadFRow,133),(s2Step279HeadGvRow,156),(s2Step279HeadFvRow,156)] [s2Step279HeadGFresh,s2Step279HeadFFresh,s2Step279HeadGvFresh,s2Step279HeadFvFresh]=
    some (s2Step279HeadFvAfter,[s2Step279HeadGOut,s2Step279HeadFOut,s2Step279HeadGvOut,s2Step279HeadFvOut],(growRow 769 s2Step279HeadGFresh ++ (growRow 768 s2Step279HeadFFresh ++ (growRow 771 s2Step279HeadGvFresh ++ (growRow 770 s2Step279HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step279HeadFvAfter [] []=some (s2Step279HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step279HeadFvBefore s2Step279HeadFvAfter s2Step279HeadFvAfter
    s2Step279HeadFvRow s2Step279HeadFvOut 156 s2Step279HeadFvFresh [] [] []
    (growRow 770 s2Step279HeadFvFresh) ([]) s2Step279HeadFv_Incoming s2Step279HeadFv_checked h4 s2Step279HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step279HeadGvBefore s2Step279HeadGvAfter s2Step279HeadFvAfter
    s2Step279HeadGvRow s2Step279HeadGvOut 156 s2Step279HeadGvFresh [(s2Step279HeadFvRow,156)] [s2Step279HeadFvFresh] [s2Step279HeadFvOut]
    (growRow 771 s2Step279HeadGvFresh) ((growRow 770 s2Step279HeadFvFresh ++ [])) s2Step279HeadGv_Incoming s2Step279HeadGv_checked h3 s2Step279HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step279HeadFBefore s2Step279HeadFAfter s2Step279HeadFvAfter
    s2Step279HeadFRow s2Step279HeadFOut 133 s2Step279HeadFFresh [(s2Step279HeadGvRow,156),(s2Step279HeadFvRow,156)] [s2Step279HeadGvFresh,s2Step279HeadFvFresh] [s2Step279HeadGvOut,s2Step279HeadFvOut]
    (growRow 768 s2Step279HeadFFresh) ((growRow 771 s2Step279HeadGvFresh ++ (growRow 770 s2Step279HeadFvFresh ++ []))) s2Step279HeadF_Incoming s2Step279HeadF_checked h2 s2Step279HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step279HeadGBefore s2Step279HeadGAfter s2Step279HeadFvAfter
    s2Step279HeadGRow s2Step279HeadGOut 133 s2Step279HeadGFresh [(s2Step279HeadFRow,133),(s2Step279HeadGvRow,156),(s2Step279HeadFvRow,156)] [s2Step279HeadFFresh,s2Step279HeadGvFresh,s2Step279HeadFvFresh] [s2Step279HeadFOut,s2Step279HeadGvOut,s2Step279HeadFvOut]
    (growRow 769 s2Step279HeadGFresh) ((growRow 768 s2Step279HeadFFresh ++ (growRow 771 s2Step279HeadGvFresh ++ (growRow 770 s2Step279HeadFvFresh ++ [])))) s2Step279HeadG_Incoming s2Step279HeadG_checked h1 s2Step279HeadG_Outgoing
  exact h0

private theorem s2Step279HeadBank_checked : compileHmrBankResizeLog .headroom s2Step279HeadGBefore ⟨s2Step279HeadFRow,s2Step279HeadGRow,s2Step279HeadFvRow,s2Step279HeadGvRow⟩ ⟨133,133,156,156⟩ [s2Step279HeadGFresh,s2Step279HeadFFresh,s2Step279HeadGvFresh,s2Step279HeadFvFresh]=
    some (s2Step279HeadFvAfter,⟨s2Step279HeadFOut,s2Step279HeadGOut,s2Step279HeadFvOut,s2Step279HeadGvOut⟩,(growRow 769 s2Step279HeadGFresh ++ (growRow 768 s2Step279HeadFFresh ++ (growRow 771 s2Step279HeadGvFresh ++ (growRow 770 s2Step279HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step279HeadBank_rows]
  rfl

private theorem s2Step279Front_checked : compileHmrSourceFrontLog s2Step279EntryFBefore s2Step279FrontBank 132 155 ⟨132,130,155,155⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step279FrontLog=some s2Step279FrontPlan := by
  have pairEq : s2Step279FrontPair=⟨s2Step279HeadFRow,s2Step279HeadGRow,s2Step279HeadFvRow,s2Step279HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step279FrontHead=⟨s2Step279ExitFRow,s2Step279ExitGRow,s2Step279ExitFvRow,s2Step279ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step279Add0A=s2Step279FrontHead.f.wires := by decide +kernel
  have gEq : s2Step279Add0B=s2Step279FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step279Add1A=s2Step279FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step279Add1B=s2Step279FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step279EntryFBefore s2Step279FrontBank 132 155 ⟨132,130,155,155⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step279FrontLog s2Step279FrontPlan
  · exact s2Step279Front_entry
  · exact s2Step279EntryBank_checked
  · exact s2Step279Front_sigma
  · rfl
  · exact s2Step279Front_branch
  · rfl
  · simpa only [s2Step279FrontPlan,pairEq] using s2Step279HeadBank_checked
  · simpa only [s2Step279FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step279F4_checked
  · exact s2Step279Counter_checked
  · rfl
  · simpa only [s2Step279FrontPlan,headEq] using s2Step279ExitBank_checked

private theorem s2Step279Complete_explicit_checked : compileHmrEarlyStepLog s2Step279EntryFBefore s2Step279FrontBank 132 155 ⟨132,130,155,155⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 54 s2Step279CompleteLog=some s2Step279CompletePlan := by
  let Q := s2Step279EarlyControlPlan
  have hq := s2Step279EarlyControl_plan_checked
  have fv1 : s2Step279CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step279CompleteOut.fv.payload[2]?.getD s2Step279CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step279CompleteOut.fv.payload[3]?.getD s2Step279CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step279CompleteOut.fv.payload[4]?.getD s2Step279CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step279EntryFBefore s2Step279EarlyControlArena s2Step279FrontBank 132 155 ⟨132,130,155,155⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 54 s2Step279CompleteLog s2Step279FrontPlan Q
    s2Step279Front_checked s2Step279Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step279Complete_owned s2Step279Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step279EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 845 s2Step279CompleteOut.fv.second (s2Step279CompleteOut.fv.payload[2]?.getD s2Step279CompleteOut.fv.sign) (s2Step279CompleteOut.fv.payload[3]?.getD s2Step279CompleteOut.fv.sign) (s2Step279CompleteOut.fv.payload[4]?.getD s2Step279CompleteOut.fv.sign) 791 54 s2Step279EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep279Arena : Arena := s2Step279EntryFBefore
def s2PrivateStep279Bank : WindowBank := s2Step279FrontBank
def s2PrivateStep279Spec : HmrSourceWalkStepLog := ⟨132,155,⟨132,130,155,155⟩,54,.early s2Step279CompleteLog⟩
def s2PrivateStep279Plan : HmrSourceStepPlan := .early s2Step279CompletePlan
theorem s2PrivateStep279_source : s2PrivateStep279Spec=s2ObservedLogs272[7] := rfl
theorem s2PrivateStep279_checked : compileHmrSourceStepLog s2PrivateStep279Arena s2PrivateStep279Bank
    s2PrivateStep279Spec.fgWidth s2PrivateStep279Spec.vWidth s2PrivateStep279Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]
    6 498 279 s2PrivateStep279Spec.need none s2PrivateStep279Spec.log=some s2PrivateStep279Plan := by
  change compileHmrSourceStepLog s2Step279EntryFBefore s2Step279FrontBank 132 155 ⟨132,130,155,155⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 6 498 279 54 none (.early s2Step279CompleteLog)=some (.early s2Step279CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 279<498)]
  rw [s2Step279Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
