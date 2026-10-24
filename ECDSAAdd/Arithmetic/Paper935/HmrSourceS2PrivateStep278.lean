import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep276
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

private def s2Step278CompleteMoves : List (Wire × Wire) := [(845,131)]

private def s2Step278EarlyControlLog : HmrEarlyControlLog := ⟨[845, 791, 788, 839, 781],[891],[830],[800, 894, 896, 901, 903, 904],[]⟩

private def s2Step278FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [778]],[[839], [788], [791], [841]],[[], [], [], []]⟩,[844],[815],[781],[891],[830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 891, 830, 800]⟩

private def s2Step278CompleteLog : HmrEarlyStepLog := ⟨s2Step278FrontLog,s2Step278CompleteMoves,s2Step278EarlyControlLog⟩

private def s2Step278ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩

private def s2Step278ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩

private def s2Step278ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130],769⟩

private def s2Step278ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778],771⟩

private def s2Step278FrontOut : WindowBank := ⟨s2Step278ExitFOut,s2Step278ExitGOut,s2Step278ExitFvOut,s2Step278ExitGvOut⟩

private def s2Step278CompleteOut : WindowBank := s2Step278FrontOut.repacked s2Step278CompleteMoves

private def s2Step278EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step278EarlyControlPositiveArena,[891],s2Step278EarlyControlEqualityArena,[830],⟨⟨844,false⟩,[⟨⟨891,false⟩,830⟩]⟩⟩

private def s2Step278EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,845⟩,⟨⟨774,false⟩,791⟩,⟨⟨775,false⟩,788⟩,⟨⟨776,false⟩,839⟩,⟨⟨777,false⟩,781⟩]⟩

private def s2Step278EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step278EarlyControlZeroArena,s2Step278EarlyControlZeroPlan,s2Step278EarlyControlClassPlan,s2Step278EarlyControlFlagArena,s2Step278EarlyControlFittedArena,s2Step278EarlyControlHistoryArena,s2Step278EarlyControlSigmaArena,s2Step278EarlyControlOutputArena,s2Step278EarlyControlLog⟩

private def s2Step278CounterWork : List Wire := [781, 891, 830, 800]

private theorem s2Step278Counter_bounded : s2Step278CounterWork.toFinset⊆arenaWires := by norm_num [s2Step278CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step278HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278CounterDuring : Arena := ⟨s2Step278HeadFvAfter.live∪s2Step278CounterWork.toFinset,Finset.union_subset s2Step278HeadFvAfter.bounded s2Step278Counter_bounded⟩

private def s2Step278EntryFFresh : List Wire := []

private def s2Step278EntryFvFresh : List Wire := []

private def s2Step278EntryGFresh : List Wire := []

private def s2Step278EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278EntryGvFresh : List Wire := [778]

private def s2Step278ExitFExtra : List Wire := [788]

private def s2Step278ExitGExtra : List Wire := [131, 839]

private def s2Step278ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<131) ∨ (132≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278ExitGvExtra : List Wire := [791]

private def s2Step278Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step278Add0_bounded : s2Step278Add0Work.toFinset⊆arenaWires := by
  have h : s2Step278Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step278Add0During : Arena := ⟨s2Step278Add0Arena.live∪s2Step278Add0Work.toFinset,Finset.union_subset s2Step278Add0Arena.bounded s2Step278Add0_bounded⟩

private def s2Step278Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step278Add1_bounded : s2Step278Add1Work.toFinset⊆arenaWires := by
  have h : s2Step278Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step278Add1During : Arena := ⟨s2Step278Add1Arena.live∪s2Step278Add1Work.toFinset,Finset.union_subset s2Step278Add1Arena.bounded s2Step278Add1_bounded⟩

private def s2Step278F4FlagArena : Arena := ⟨s2Step278HeadFvAfter.live∪{781},Finset.union_subset s2Step278HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step278F4Plan : HmrHybridF4Plan := ⟨s2Step278F4FlagArena,[781],s2Step278Add0Arena,[891],s2Step278Add0During,s2Step278Add0Work,s2Step278Add1During,s2Step278Add1Work⟩

private def s2Step278HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 788],768⟩

private def s2Step278HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩

private def s2Step278HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 839],769⟩

private def s2Step278HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 791],771⟩

private def s2Step278FrontHead : WindowBank := ⟨s2Step278HeadFOut,s2Step278HeadGOut,s2Step278HeadFvOut,s2Step278HeadGvOut⟩

private def s2Step278EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩

private def s2Step278EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789],770⟩

private def s2Step278EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],769⟩

private def s2Step278EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778],771⟩

private def s2Step278FrontPair : WindowBank := ⟨s2Step278EntryFOut,s2Step278EntryGOut,s2Step278EntryFvOut,s2Step278EntryGvOut⟩

private def s2Step278FrontSigmaArena : Arena := ⟨s2Step278EntryGvAfter.live∪{844},Finset.union_subset s2Step278EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step278HeadFFresh : List Wire := [788]

private def s2Step278HeadFvFresh : List Wire := [841]

private def s2Step278HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278HeadGFresh : List Wire := [839]

private def s2Step278HeadGvFresh : List Wire := [791]

private def s2Step278FrontPlan : HmrSourceFront := ⟨s2Step278EntryGvAfter,s2Step278FrontPair,(growRow 768 s2Step278EntryFFresh ++ (growRow 769 s2Step278EntryGFresh ++ (growRow 770 s2Step278EntryFvFresh ++ (growRow 771 s2Step278EntryGvFresh ++ [])))),s2Step278FrontSigmaArena,[844],s2Step278HeadGBefore,[815],
  s2Step278HeadFvAfter,s2Step278FrontHead,(growRow 769 s2Step278HeadGFresh ++ (growRow 768 s2Step278HeadFFresh ++ (growRow 771 s2Step278HeadGvFresh ++ (growRow 770 s2Step278HeadFvFresh ++ [])))),s2Step278F4Plan,s2Step278CounterDuring,s2Step278CounterWork,s2Step278ExitGvAfter,s2Step278FrontOut,(shrinkRow 769 s2Step278ExitGExtra ++ (shrinkRow 768 s2Step278ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step278ExitGvExtra ++ []))))⟩

private def s2Step278CompletePlan : HmrEarlyStepPlan := ⟨s2Step278FrontPlan,s2Step278EarlyControlArena,s2Step278EarlyControlPlan,s2Step278CompleteMoves⟩

private theorem s2Step278Complete_apart : List.Disjoint (s2Step278CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [844, 815, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] := by
  have nd : ((s2Step278CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[844, 815, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step278Complete_owned : (s2Step278CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step278EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step278EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step278CompleteMoveArena : Arena := ⟨s2Step278ExitGvAfter.live∪{131},Finset.union_subset s2Step278ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step278Complete_repack : s2Step278ExitGvAfter.checkRepack s2Step278CompleteMoves=some s2Step278EarlyControlArena := by
  have owned : 845∈s2Step278ExitGvAfter.live := by norm_num [s2Step278ExitGvAfter,arenaWires]
  have reserve : s2Step278ExitGvAfter.reserve {131}=some s2Step278CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step278ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step278CompleteMoveArena.retireSet {845}=s2Step278EarlyControlArena := by
    unfold Arena.retireSet s2Step278EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step278CompleteMoveArena,s2Step278ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step278CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step278CompleteMoveArena.retireSet {845}).checkRepack []=some s2Step278EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step278EarlyControl_branchOwned : ([815] : List Wire).toFinset⊆s2Step278EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step278EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278EarlyControl_branch : compileHmrBranchRetirement s2Step278EarlyControlSigmaArena 815=some s2Step278EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step278EarlyControl_branchOwned
  · ext q
    simp [s2Step278EarlyControlOutputArena,s2Step278EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step278EarlyControl_classEqualityBorrow : s2Step278EarlyControlPositiveArena.checkBorrow (([844, 891] : List Wire).length-1) s2Step278EarlyControlLog.classWork=some s2Step278EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step278EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step278EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step278EarlyControlEqualityArena,s2Step278EarlyControlPositiveArena,s2Step278EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step278EarlyControl_classEqualityOwned : ([844, 891] : List Wire).toFinset⊆s2Step278EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step278EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278EarlyControl_classEquality : compileHmrEqualityLog s2Step278EarlyControlPositiveArena [844, 891] 0 s2Step278EarlyControlLog.classWork=some (s2Step278EarlyControlEqualityArena,s2Step278EarlyControlLog.classWork,s2Step278EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step278EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step278EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step278EarlyControl_classOwned : ([777, 781, 844] : List Wire).toFinset⊆s2Step278EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step278EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278EarlyControl_positiveBorrow : s2Step278EarlyControlZeroArena.checkBorrow (1) s2Step278EarlyControlLog.positiveWork=some s2Step278EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step278EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step278EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step278EarlyControlPositiveArena,s2Step278EarlyControlZeroArena,s2Step278EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step278EarlyControl_class : compileHmrSourceClassLog s2Step278EarlyControlZeroArena false 777 s2Step278EarlyControlZeroPlan.top 0 844 s2Step278EarlyControlLog.positiveWork s2Step278EarlyControlLog.classWork=some s2Step278EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step278EarlyControlClassPlan s2Step278EarlyControlZeroArena false 777 s2Step278EarlyControlZeroPlan.top 0 844
  constructor
  · decide +kernel
  · exact s2Step278EarlyControl_classOwned
  · exact s2Step278EarlyControl_positiveBorrow
  · exact s2Step278EarlyControl_classEquality

private theorem s2Step278EarlyControl_entryRecordOwned : ([815, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step278EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step278EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278EarlyControl_entrySigmaOwned : ([844, 254] : List Wire).toFinset⊆s2Step278EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step278EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278EarlyControl_fitBorrow : s2Step278EarlyControlFlagArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step278EarlyControlLog.recordFresh=some s2Step278EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step278EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step278EarlyControlFlagArena (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step278EarlyControlFittedArena,s2Step278EarlyControlFlagArena,s2Step278EarlyControlLog,arenaWires]

private theorem s2Step278EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step278EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step278EarlyControlFlagArena (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278EarlyControl_fit : compileHmrRecordGrowLog s2Step278EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step278EarlyControlLog.recordFresh=some s2Step278EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step278EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step278EarlyControl_fitBorrow

private theorem s2Step278EarlyControl_flagsBorrow : s2Step278EarlyControlEqualityArena.checkBorrow (6) s2Step278EarlyControlLog.flagWork=some s2Step278EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step278EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step278EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step278EarlyControlFlagArena,s2Step278EarlyControlEqualityArena,s2Step278EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step278EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s2Step278EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step278EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278EarlyControl_flags : compileHmrFlagsLog s2Step278EarlyControlClassPlan.equalityArena s2Step278EarlyControlClassPlan.equality.top 253 252 251 s2Step278EarlyControlLog.flagWork=some s2Step278EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step278EarlyControl_flagsOwned⟩
  · exact s2Step278EarlyControl_flagsBorrow

private theorem s2Step278EarlyControl_historyBorrow : s2Step278EarlyControlArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step278EarlyControlLog.recordFresh=some s2Step278EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step278EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step278EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step278EarlyControlHistoryArena,s2Step278EarlyControlArena,s2Step278EarlyControlLog,arenaWires]

private theorem s2Step278EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step278EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step278EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278EarlyControl_history : compileHmrRecordGrowLog s2Step278EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step278EarlyControlLog.recordFresh=some s2Step278EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step278EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step278EarlyControl_historyBorrow

private theorem s2Step278EarlyControl_sigmaOwned : ([254, 844] : List Wire).toFinset⊆s2Step278EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step278EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278EarlyControl_sigmaReleaseOwned : ([844] : List Wire).toFinset⊆s2Step278EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step278EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278EarlyControl_sigmaRelease : s2Step278EarlyControlHistoryArena.release {844} (fun _ => false)=some s2Step278EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step278EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step278EarlyControlSigmaArena,s2Step278EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step278EarlyControl_sigma : compileHmrSigmaDropLog s2Step278EarlyControlHistoryArena false 0 0 254 844 []=some s2Step278EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step278EarlyControl_sigmaOwned⟩
  · exact s2Step278EarlyControl_sigmaRelease

private theorem s2Step278EarlyControl_zeroBorrow : s2Step278EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step278EarlyControlLog.zeroWork=some s2Step278EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step278EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step278EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step278EarlyControlZeroArena,s2Step278EarlyControlArena,s2Step278EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step278EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step278EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step278EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278EarlyControl_zero : compileHmrEqualityLog s2Step278EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step278EarlyControlLog.zeroWork=some (s2Step278EarlyControlZeroArena,s2Step278EarlyControlLog.zeroWork,s2Step278EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step278EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step278EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step278EarlyControl_logged : s2Step278EarlyControlPlan.Logged s2Step278EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 254 253 252 251 815 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step278EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step278EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step278EarlyControl_zero
  · exact s2Step278EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step278EarlyControl_flags
  · exact s2Step278EarlyControl_fit
  · exact s2Step278EarlyControl_history
  · exact s2Step278EarlyControl_sigma
  · exact s2Step278EarlyControl_branch

private theorem s2Step278EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step278EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 254 253 252 251 815 53 s2Step278EarlyControlLog=some s2Step278EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step278EarlyControlPlan s2Step278EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 254 253 252 251 815 53 s2Step278EarlyControl_logged

private def s2Step278EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩

private def s2Step278EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789],770⟩

private def s2Step278EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],769⟩

private def s2Step278EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851],771⟩

private def s2Step278FrontBank : WindowBank := ⟨s2Step278EntryFRow,s2Step278EntryGRow,s2Step278EntryFvRow,s2Step278EntryGvRow⟩

private def s2Step278Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 788, 768]

private def s2Step278Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 839, 769]

private def s2Step278Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 770]

private def s2Step278Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 791, 771]

private theorem s2Step278Counter_apart : Disjoint s2Step278HeadFvAfter.live s2Step278CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step278HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278Counter_borrowed : s2Step278HeadFvAfter.checkBorrow 4 s2Step278CounterWork=some s2Step278CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step278HeadFvAfter s2Step278CounterDuring s2Step278CounterWork.toFinset s2Step278Counter_bounded s2Step278Counter_apart rfl

private theorem s2Step278Counter_owned : (844::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step278HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step278HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278Counter_checked : compileHmrCounterStepLog s2Step278HeadFvAfter true 844 [772, 773, 774, 775, 776, 777] s2Step278CounterWork=some s2Step278CounterDuring := by
  have owned : ∀q∈844::[772, 773, 774, 775, 776, 777],q∈s2Step278HeadFvAfter.live := fun q hq => s2Step278Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step278Counter_borrowed

private def s2Step278EntryFAfter : Arena := s2Step278EntryFBefore

private theorem s2Step278EntryBank_incomingDistinct : ([s2Step278EntryFRow,s2Step278EntryGRow,s2Step278EntryFvRow,s2Step278EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278EntryF_Incoming : rowsOwned s2Step278EntryFBefore [s2Step278EntryFRow,s2Step278EntryGRow,s2Step278EntryFvRow,s2Step278EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step278EntryFRow,s2Step278EntryGRow,s2Step278EntryFvRow,s2Step278EntryGvRow] 0 s2Step278EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step278EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step278EntryBank_outgoingOwned : rowsOwned s2Step278EntryGvAfter [s2Step278EntryFOut,s2Step278EntryGOut,s2Step278EntryFvOut,s2Step278EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step278EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step278EntryF_Outgoing : rowsOwned s2Step278EntryGvAfter [s2Step278EntryFOut,s2Step278EntryGOut,s2Step278EntryFvOut,s2Step278EntryGvOut] :=
  hmrRows_owned_drop s2Step278EntryGvAfter [s2Step278EntryFOut,s2Step278EntryGOut,s2Step278EntryFvOut,s2Step278EntryGvOut] 0 s2Step278EntryBank_outgoingOwned

private theorem s2Step278EntryF_distinct : (s2Step278EntryFRow.sign::s2Step278EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278EntryF_owned : (s2Step278EntryFRow.sign::s2Step278EntryFRow.payload).toFinset⊆s2Step278EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step278EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278EntryF_reserved : s2Step278EntryFBefore.reserve s2Step278EntryFFresh.toFinset=some s2Step278EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step278EntryFFresh,arenaWires]
  · norm_num [s2Step278EntryFBefore,s2Step278EntryFFresh,arenaWires]
  · simp only [s2Step278EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step278EntryF_checked : planRowResizeLog s2Step278EntryFBefore s2Step278EntryFRow 132 s2Step278EntryFFresh=
    some (s2Step278EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩,growRow 768 s2Step278EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step278EntryFBefore s2Step278EntryFAfter s2Step278EntryFRow 132 s2Step278EntryFFresh
    s2Step278EntryF_distinct s2Step278EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step278EntryF_reserved
  have rowEq : WindowRow.mk (s2Step278EntryFRow.payload++s2Step278EntryFFresh) s2Step278EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step278EntryFvAfter : Arena := s2Step278EntryFBefore

private def s2Step278EntryFvBefore : Arena := s2Step278EntryFBefore

private theorem s2Step278EntryFv_Incoming : rowsOwned s2Step278EntryFvBefore [s2Step278EntryFvRow,s2Step278EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step278EntryFRow,s2Step278EntryGRow,s2Step278EntryFvRow,s2Step278EntryGvRow] 2 s2Step278EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step278EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step278EntryFv_Outgoing : rowsOwned s2Step278EntryGvAfter [s2Step278EntryFvOut,s2Step278EntryGvOut] :=
  hmrRows_owned_drop s2Step278EntryGvAfter [s2Step278EntryFOut,s2Step278EntryGOut,s2Step278EntryFvOut,s2Step278EntryGvOut] 2 s2Step278EntryBank_outgoingOwned

private theorem s2Step278EntryFv_distinct : (s2Step278EntryFvRow.sign::s2Step278EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278EntryFv_owned : (s2Step278EntryFvRow.sign::s2Step278EntryFvRow.payload).toFinset⊆s2Step278EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step278EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278EntryFv_reserved : s2Step278EntryFvBefore.reserve s2Step278EntryFvFresh.toFinset=some s2Step278EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step278EntryFvFresh,arenaWires]
  · norm_num [s2Step278EntryFvBefore,s2Step278EntryFBefore,s2Step278EntryFvFresh,arenaWires]
  · simp only [s2Step278EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step278EntryFv_checked : planRowResizeLog s2Step278EntryFvBefore s2Step278EntryFvRow 154 s2Step278EntryFvFresh=
    some (s2Step278EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789],770⟩,growRow 770 s2Step278EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step278EntryFvBefore s2Step278EntryFvAfter s2Step278EntryFvRow 154 s2Step278EntryFvFresh
    s2Step278EntryFv_distinct s2Step278EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step278EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step278EntryFvRow.payload++s2Step278EntryFvFresh) s2Step278EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step278EntryGAfter : Arena := s2Step278EntryFBefore

private def s2Step278EntryGBefore : Arena := s2Step278EntryFBefore

private theorem s2Step278EntryG_Incoming : rowsOwned s2Step278EntryGBefore [s2Step278EntryGRow,s2Step278EntryFvRow,s2Step278EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step278EntryFRow,s2Step278EntryGRow,s2Step278EntryFvRow,s2Step278EntryGvRow] 1 s2Step278EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step278EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step278EntryG_Outgoing : rowsOwned s2Step278EntryGvAfter [s2Step278EntryGOut,s2Step278EntryFvOut,s2Step278EntryGvOut] :=
  hmrRows_owned_drop s2Step278EntryGvAfter [s2Step278EntryFOut,s2Step278EntryGOut,s2Step278EntryFvOut,s2Step278EntryGvOut] 1 s2Step278EntryBank_outgoingOwned

private theorem s2Step278EntryG_distinct : (s2Step278EntryGRow.sign::s2Step278EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278EntryG_owned : (s2Step278EntryGRow.sign::s2Step278EntryGRow.payload).toFinset⊆s2Step278EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step278EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278EntryG_reserved : s2Step278EntryGBefore.reserve s2Step278EntryGFresh.toFinset=some s2Step278EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step278EntryGFresh,arenaWires]
  · norm_num [s2Step278EntryGBefore,s2Step278EntryFBefore,s2Step278EntryGFresh,arenaWires]
  · simp only [s2Step278EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step278EntryG_checked : planRowResizeLog s2Step278EntryGBefore s2Step278EntryGRow 132 s2Step278EntryGFresh=
    some (s2Step278EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],769⟩,growRow 769 s2Step278EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step278EntryGBefore s2Step278EntryGAfter s2Step278EntryGRow 132 s2Step278EntryGFresh
    s2Step278EntryG_distinct s2Step278EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step278EntryG_reserved
  have rowEq : WindowRow.mk (s2Step278EntryGRow.payload++s2Step278EntryGFresh) s2Step278EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step278EntryGvBefore : Arena := s2Step278EntryFBefore

private theorem s2Step278EntryGv_Incoming : rowsOwned s2Step278EntryGvBefore [s2Step278EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step278EntryFRow,s2Step278EntryGRow,s2Step278EntryFvRow,s2Step278EntryGvRow] 3 s2Step278EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step278EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step278EntryGv_Outgoing : rowsOwned s2Step278EntryGvAfter [s2Step278EntryGvOut] :=
  hmrRows_owned_drop s2Step278EntryGvAfter [s2Step278EntryFOut,s2Step278EntryGOut,s2Step278EntryFvOut,s2Step278EntryGvOut] 3 s2Step278EntryBank_outgoingOwned

private theorem s2Step278EntryGv_distinct : (s2Step278EntryGvRow.sign::s2Step278EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278EntryGv_owned : (s2Step278EntryGvRow.sign::s2Step278EntryGvRow.payload).toFinset⊆s2Step278EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step278EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278EntryGv_reserved : s2Step278EntryGvBefore.reserve s2Step278EntryGvFresh.toFinset=some s2Step278EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step278EntryGvFresh,arenaWires]
  · norm_num [s2Step278EntryGvBefore,s2Step278EntryFBefore,s2Step278EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step278EntryGvAfter,s2Step278EntryGvBefore,s2Step278EntryFBefore,s2Step278EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step278EntryGv_checked : planRowResizeLog s2Step278EntryGvBefore s2Step278EntryGvRow 154 s2Step278EntryGvFresh=
    some (s2Step278EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778],771⟩,growRow 771 s2Step278EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step278EntryGvBefore s2Step278EntryGvAfter s2Step278EntryGvRow 154 s2Step278EntryGvFresh
    s2Step278EntryGv_distinct s2Step278EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step278EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step278EntryGvRow.payload++s2Step278EntryGvFresh) s2Step278EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step278EntryBank_rows : planWindowRowsLog s2Step278EntryFBefore [(s2Step278EntryFRow,132),(s2Step278EntryGRow,132),(s2Step278EntryFvRow,154),(s2Step278EntryGvRow,154)] [s2Step278EntryFFresh,s2Step278EntryGFresh,s2Step278EntryFvFresh,s2Step278EntryGvFresh]=
    some (s2Step278EntryGvAfter,[s2Step278EntryFOut,s2Step278EntryGOut,s2Step278EntryFvOut,s2Step278EntryGvOut],(growRow 768 s2Step278EntryFFresh ++ (growRow 769 s2Step278EntryGFresh ++ (growRow 770 s2Step278EntryFvFresh ++ (growRow 771 s2Step278EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step278EntryGvAfter [] []=some (s2Step278EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step278EntryGvBefore s2Step278EntryGvAfter s2Step278EntryGvAfter
    s2Step278EntryGvRow s2Step278EntryGvOut 154 s2Step278EntryGvFresh [] [] []
    (growRow 771 s2Step278EntryGvFresh) ([]) s2Step278EntryGv_Incoming s2Step278EntryGv_checked h4 s2Step278EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step278EntryFvBefore s2Step278EntryFvAfter s2Step278EntryGvAfter
    s2Step278EntryFvRow s2Step278EntryFvOut 154 s2Step278EntryFvFresh [(s2Step278EntryGvRow,154)] [s2Step278EntryGvFresh] [s2Step278EntryGvOut]
    (growRow 770 s2Step278EntryFvFresh) ((growRow 771 s2Step278EntryGvFresh ++ [])) s2Step278EntryFv_Incoming s2Step278EntryFv_checked h3 s2Step278EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step278EntryGBefore s2Step278EntryGAfter s2Step278EntryGvAfter
    s2Step278EntryGRow s2Step278EntryGOut 132 s2Step278EntryGFresh [(s2Step278EntryFvRow,154),(s2Step278EntryGvRow,154)] [s2Step278EntryFvFresh,s2Step278EntryGvFresh] [s2Step278EntryFvOut,s2Step278EntryGvOut]
    (growRow 769 s2Step278EntryGFresh) ((growRow 770 s2Step278EntryFvFresh ++ (growRow 771 s2Step278EntryGvFresh ++ []))) s2Step278EntryG_Incoming s2Step278EntryG_checked h2 s2Step278EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step278EntryFBefore s2Step278EntryFAfter s2Step278EntryGvAfter
    s2Step278EntryFRow s2Step278EntryFOut 132 s2Step278EntryFFresh [(s2Step278EntryGRow,132),(s2Step278EntryFvRow,154),(s2Step278EntryGvRow,154)] [s2Step278EntryGFresh,s2Step278EntryFvFresh,s2Step278EntryGvFresh] [s2Step278EntryGOut,s2Step278EntryFvOut,s2Step278EntryGvOut]
    (growRow 768 s2Step278EntryFFresh) ((growRow 769 s2Step278EntryGFresh ++ (growRow 770 s2Step278EntryFvFresh ++ (growRow 771 s2Step278EntryGvFresh ++ [])))) s2Step278EntryF_Incoming s2Step278EntryF_checked h1 s2Step278EntryF_Outgoing
  exact h0

private theorem s2Step278EntryBank_checked : compileHmrBankResizeLog .entry s2Step278EntryFBefore ⟨s2Step278EntryFRow,s2Step278EntryGRow,s2Step278EntryFvRow,s2Step278EntryGvRow⟩ ⟨132,132,154,154⟩ [s2Step278EntryFFresh,s2Step278EntryGFresh,s2Step278EntryFvFresh,s2Step278EntryGvFresh]=
    some (s2Step278EntryGvAfter,⟨s2Step278EntryFOut,s2Step278EntryGOut,s2Step278EntryFvOut,s2Step278EntryGvOut⟩,(growRow 768 s2Step278EntryFFresh ++ (growRow 769 s2Step278EntryGFresh ++ (growRow 770 s2Step278EntryFvFresh ++ (growRow 771 s2Step278EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step278EntryBank_rows]
  rfl

private def s2Step278ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<131) ∨ (132≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<131) ∨ (132≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278ExitFBefore : Arena := s2Step278ExitGAfter

private def s2Step278ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 788],768⟩

private def s2Step278ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩

private def s2Step278ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 839],769⟩

private def s2Step278ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 791],771⟩

private theorem s2Step278ExitBank_incomingDistinct : ([s2Step278ExitGRow,s2Step278ExitFRow,s2Step278ExitFvRow,s2Step278ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278ExitF_Incoming : rowsOwned s2Step278ExitFBefore [s2Step278ExitFRow,s2Step278ExitFvRow,s2Step278ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step278ExitGRow,s2Step278ExitFRow,s2Step278ExitFvRow,s2Step278ExitGvRow] 1 s2Step278ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step278ExitFBefore (fun q => (0≤q ∧ q<131) ∨ (132≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step278ExitBank_outgoingOwned : rowsOwned s2Step278ExitGvAfter [s2Step278ExitGOut,s2Step278ExitFOut,s2Step278ExitFvOut,s2Step278ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step278ExitGvAfter (fun q => (0≤q ∧ q<131) ∨ (132≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step278ExitF_Outgoing : rowsOwned s2Step278ExitGvAfter [s2Step278ExitFOut,s2Step278ExitFvOut,s2Step278ExitGvOut] :=
  hmrRows_owned_drop s2Step278ExitGvAfter [s2Step278ExitGOut,s2Step278ExitFOut,s2Step278ExitFvOut,s2Step278ExitGvOut] 1 s2Step278ExitBank_outgoingOwned

private theorem s2Step278ExitF_distinct : (s2Step278ExitFRow.sign::s2Step278ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278ExitF_owned : (s2Step278ExitFRow.sign::s2Step278ExitFRow.payload).toFinset⊆s2Step278ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step278ExitFBefore (fun q => (0≤q ∧ q<131) ∨ (132≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278ExitF_retired : s2Step278ExitFBefore.retireSet s2Step278ExitFExtra.toFinset=s2Step278ExitFAfter := by
  unfold Arena.retireSet s2Step278ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step278ExitFBefore,s2Step278ExitGAfter,s2Step278ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step278ExitF_checked : planRowResizeLog s2Step278ExitFBefore s2Step278ExitFRow 132 []=
    some (s2Step278ExitFAfter,s2Step278ExitFOut,shrinkRow 768 s2Step278ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step278ExitFBefore s2Step278ExitFRow 132 s2Step278ExitF_distinct s2Step278ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step278ExitFRow.payload.take 132) s2Step278ExitFRow.sign=s2Step278ExitFOut := by decide +kernel
  have hi : s2Step278ExitFRow.payload.drop 132=s2Step278ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step278ExitF_retired] at result
  exact result

private def s2Step278ExitFvAfter : Arena := s2Step278ExitFAfter

private def s2Step278ExitFvBefore : Arena := s2Step278ExitFAfter

private theorem s2Step278ExitFv_Incoming : rowsOwned s2Step278ExitFvBefore [s2Step278ExitFvRow,s2Step278ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step278ExitGRow,s2Step278ExitFRow,s2Step278ExitFvRow,s2Step278ExitGvRow] 2 s2Step278ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step278ExitFvBefore (fun q => (0≤q ∧ q<131) ∨ (132≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step278ExitFv_Outgoing : rowsOwned s2Step278ExitGvAfter [s2Step278ExitFvOut,s2Step278ExitGvOut] :=
  hmrRows_owned_drop s2Step278ExitGvAfter [s2Step278ExitGOut,s2Step278ExitFOut,s2Step278ExitFvOut,s2Step278ExitGvOut] 2 s2Step278ExitBank_outgoingOwned

private theorem s2Step278ExitFv_distinct : (s2Step278ExitFvRow.sign::s2Step278ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278ExitFv_owned : (s2Step278ExitFvRow.sign::s2Step278ExitFvRow.payload).toFinset⊆s2Step278ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step278ExitFvBefore (fun q => (0≤q ∧ q<131) ∨ (132≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278ExitFv_reserved : s2Step278ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step278ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step278ExitFv_checked : planRowResizeLog s2Step278ExitFvBefore s2Step278ExitFvRow 155 []=
    some (s2Step278ExitFvAfter,s2Step278ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step278ExitFvBefore s2Step278ExitFvAfter s2Step278ExitFvRow 155 []
    s2Step278ExitFv_distinct s2Step278ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step278ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step278ExitFvRow.payload++[]) s2Step278ExitFvRow.sign=s2Step278ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step278ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step278ExitG_Incoming : rowsOwned s2Step278ExitGBefore [s2Step278ExitGRow,s2Step278ExitFRow,s2Step278ExitFvRow,s2Step278ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step278ExitGRow,s2Step278ExitFRow,s2Step278ExitFvRow,s2Step278ExitGvRow] 0 s2Step278ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step278ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step278ExitG_Outgoing : rowsOwned s2Step278ExitGvAfter [s2Step278ExitGOut,s2Step278ExitFOut,s2Step278ExitFvOut,s2Step278ExitGvOut] :=
  hmrRows_owned_drop s2Step278ExitGvAfter [s2Step278ExitGOut,s2Step278ExitFOut,s2Step278ExitFvOut,s2Step278ExitGvOut] 0 s2Step278ExitBank_outgoingOwned

private theorem s2Step278ExitG_distinct : (s2Step278ExitGRow.sign::s2Step278ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278ExitG_owned : (s2Step278ExitGRow.sign::s2Step278ExitGRow.payload).toFinset⊆s2Step278ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step278ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278ExitG_retired : s2Step278ExitGBefore.retireSet s2Step278ExitGExtra.toFinset=s2Step278ExitGAfter := by
  unfold Arena.retireSet s2Step278ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step278ExitGBefore,s2Step278ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step278ExitG_checked : planRowResizeLog s2Step278ExitGBefore s2Step278ExitGRow 131 []=
    some (s2Step278ExitGAfter,s2Step278ExitGOut,shrinkRow 769 s2Step278ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step278ExitGBefore s2Step278ExitGRow 131 s2Step278ExitG_distinct s2Step278ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step278ExitGRow.payload.take 131) s2Step278ExitGRow.sign=s2Step278ExitGOut := by decide +kernel
  have hi : s2Step278ExitGRow.payload.drop 131=s2Step278ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step278ExitG_retired] at result
  exact result

private def s2Step278ExitGvBefore : Arena := s2Step278ExitFAfter

private theorem s2Step278ExitGv_Incoming : rowsOwned s2Step278ExitGvBefore [s2Step278ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step278ExitGRow,s2Step278ExitFRow,s2Step278ExitFvRow,s2Step278ExitGvRow] 3 s2Step278ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step278ExitGvBefore (fun q => (0≤q ∧ q<131) ∨ (132≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step278ExitGv_Outgoing : rowsOwned s2Step278ExitGvAfter [s2Step278ExitGvOut] :=
  hmrRows_owned_drop s2Step278ExitGvAfter [s2Step278ExitGOut,s2Step278ExitFOut,s2Step278ExitFvOut,s2Step278ExitGvOut] 3 s2Step278ExitBank_outgoingOwned

private theorem s2Step278ExitGv_distinct : (s2Step278ExitGvRow.sign::s2Step278ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278ExitGv_owned : (s2Step278ExitGvRow.sign::s2Step278ExitGvRow.payload).toFinset⊆s2Step278ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step278ExitGvBefore (fun q => (0≤q ∧ q<131) ∨ (132≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278ExitGv_retired : s2Step278ExitGvBefore.retireSet s2Step278ExitGvExtra.toFinset=s2Step278ExitGvAfter := by
  unfold Arena.retireSet s2Step278ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step278ExitGvBefore,s2Step278ExitFAfter,s2Step278ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step278ExitGv_checked : planRowResizeLog s2Step278ExitGvBefore s2Step278ExitGvRow 154 []=
    some (s2Step278ExitGvAfter,s2Step278ExitGvOut,shrinkRow 771 s2Step278ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step278ExitGvBefore s2Step278ExitGvRow 154 s2Step278ExitGv_distinct s2Step278ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step278ExitGvRow.payload.take 154) s2Step278ExitGvRow.sign=s2Step278ExitGvOut := by decide +kernel
  have hi : s2Step278ExitGvRow.payload.drop 154=s2Step278ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step278ExitGv_retired] at result
  exact result

private theorem s2Step278ExitBank_rows : planWindowRowsLog s2Step278ExitGBefore [(s2Step278ExitGRow,131),(s2Step278ExitFRow,132),(s2Step278ExitFvRow,155),(s2Step278ExitGvRow,154)] [[],[],[],[]]=
    some (s2Step278ExitGvAfter,[s2Step278ExitGOut,s2Step278ExitFOut,s2Step278ExitFvOut,s2Step278ExitGvOut],(shrinkRow 769 s2Step278ExitGExtra ++ (shrinkRow 768 s2Step278ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step278ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step278ExitGvAfter [] []=some (s2Step278ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step278ExitGvBefore s2Step278ExitGvAfter s2Step278ExitGvAfter
    s2Step278ExitGvRow s2Step278ExitGvOut 154 [] [] [] []
    (shrinkRow 771 s2Step278ExitGvExtra) ([]) s2Step278ExitGv_Incoming s2Step278ExitGv_checked h4 s2Step278ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step278ExitFvBefore s2Step278ExitFvAfter s2Step278ExitGvAfter
    s2Step278ExitFvRow s2Step278ExitFvOut 155 [] [(s2Step278ExitGvRow,154)] [[]] [s2Step278ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step278ExitGvExtra ++ [])) s2Step278ExitFv_Incoming s2Step278ExitFv_checked h3 s2Step278ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step278ExitFBefore s2Step278ExitFAfter s2Step278ExitGvAfter
    s2Step278ExitFRow s2Step278ExitFOut 132 [] [(s2Step278ExitFvRow,155),(s2Step278ExitGvRow,154)] [[],[]] [s2Step278ExitFvOut,s2Step278ExitGvOut]
    (shrinkRow 768 s2Step278ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step278ExitGvExtra ++ []))) s2Step278ExitF_Incoming s2Step278ExitF_checked h2 s2Step278ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step278ExitGBefore s2Step278ExitGAfter s2Step278ExitGvAfter
    s2Step278ExitGRow s2Step278ExitGOut 131 [] [(s2Step278ExitFRow,132),(s2Step278ExitFvRow,155),(s2Step278ExitGvRow,154)] [[],[],[]] [s2Step278ExitFOut,s2Step278ExitFvOut,s2Step278ExitGvOut]
    (shrinkRow 769 s2Step278ExitGExtra) ((shrinkRow 768 s2Step278ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step278ExitGvExtra ++ [])))) s2Step278ExitG_Incoming s2Step278ExitG_checked h1 s2Step278ExitG_Outgoing
  exact h0

private theorem s2Step278ExitBank_checked : compileHmrBankResizeLog .exit s2Step278ExitGBefore ⟨s2Step278ExitFRow,s2Step278ExitGRow,s2Step278ExitFvRow,s2Step278ExitGvRow⟩ ⟨132,131,155,154⟩ [[],[],[],[]]=
    some (s2Step278ExitGvAfter,⟨s2Step278ExitFOut,s2Step278ExitGOut,s2Step278ExitFvOut,s2Step278ExitGvOut⟩,(shrinkRow 769 s2Step278ExitGExtra ++ (shrinkRow 768 s2Step278ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step278ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step278ExitBank_rows]
  rfl

private theorem s2Step278Add0_apart : Disjoint s2Step278Add0Arena.live s2Step278Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step278Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278Add0_card : s2Step278Add0Arena.live.card=899 := by
  decide +kernel

private theorem s2Step278Add0_borrowed : s2Step278Add0Arena.checkBorrow (hmrHybridCount s2Step278Add0Arena s2Step278Add0B.length) s2Step278Add0Work=some s2Step278Add0During := by
  have len : s2Step278Add0Work.length=hmrHybridCount s2Step278Add0Arena s2Step278Add0B.length := by
    rw [hmrHybridCount,s2Step278Add0_card]
    decide +kernel
  have nd : s2Step278Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step278Add0Arena s2Step278Add0During s2Step278Add0Work.toFinset s2Step278Add0_bounded s2Step278Add0_apart rfl

private theorem s2Step278Add0_distinct : (781::815::891::(s2Step278Add0A++s2Step278Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278Add0_owned : (781::815::891::(s2Step278Add0A++s2Step278Add0B)).toFinset⊆s2Step278Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step278Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278Add0_checked : compileHmrHybridCinLog s2Step278Add0Arena 815 781 891 s2Step278Add0A s2Step278Add0B s2Step278Add0Work=some s2Step278Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step278Add0Arena s2Step278Add0During 815 781 891 s2Step278Add0A s2Step278Add0B s2Step278Add0Work
    (by decide +kernel) (by decide +kernel) s2Step278Add0_distinct
    (fun q hq => s2Step278Add0_owned (List.mem_toFinset.mpr hq)) s2Step278Add0_borrowed

private theorem s2Step278Add1_apart : Disjoint s2Step278Add1Arena.live s2Step278Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step278Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278Add1_card : s2Step278Add1Arena.live.card=899 := by
  decide +kernel

private theorem s2Step278Add1_borrowed : s2Step278Add1Arena.checkBorrow (hmrHybridCount s2Step278Add1Arena s2Step278Add1B.length) s2Step278Add1Work=some s2Step278Add1During := by
  have len : s2Step278Add1Work.length=hmrHybridCount s2Step278Add1Arena s2Step278Add1B.length := by
    rw [hmrHybridCount,s2Step278Add1_card]
    decide +kernel
  have nd : s2Step278Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step278Add1Arena s2Step278Add1During s2Step278Add1Work.toFinset s2Step278Add1_bounded s2Step278Add1_apart rfl

private theorem s2Step278Add1_distinct : (781::815::891::(s2Step278Add1A++s2Step278Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278Add1_owned : (781::815::891::(s2Step278Add1A++s2Step278Add1B)).toFinset⊆s2Step278Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step278Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278Add1_checked : compileHmrHybridCinLog s2Step278Add1Arena 815 781 891 s2Step278Add1A s2Step278Add1B s2Step278Add1Work=some s2Step278Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step278Add1Arena s2Step278Add1During 815 781 891 s2Step278Add1A s2Step278Add1B s2Step278Add1Work
    (by decide +kernel) (by decide +kernel) s2Step278Add1_distinct
    (fun q hq => s2Step278Add1_owned (List.mem_toFinset.mpr hq)) s2Step278Add1_borrowed

private theorem s2Step278F4_apart : Disjoint (s2Step278Add0A++s2Step278Add0B).toFinset (s2Step278Add1A++s2Step278Add1B).toFinset := by
  have nd : ((s2Step278Add0A++s2Step278Add0B)++(s2Step278Add1A++s2Step278Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step278F4_carry : s2Step278F4FlagArena.checkBorrow 1 [891]=some s2Step278Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step278F4FlagArena,s2Step278HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step278F4FlagArena,s2Step278HeadFvAfter,s2Step278Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step278F4_distinct : (844::815::781::891::((s2Step278Add0A++s2Step278Add1A)++(s2Step278Add0B++s2Step278Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278F4_flag : s2Step278HeadFvAfter.checkBorrow 1 [781]=some s2Step278F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step278HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step278F4_owned : (844::815::((s2Step278Add0A++s2Step278Add1A)++(s2Step278Add0B++s2Step278Add1B))).toFinset⊆s2Step278HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step278HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278F4_checked : compileHmrHybridF4Log s2Step278HeadFvAfter 844 815 s2Step278Add0A s2Step278Add0B s2Step278Add1A s2Step278Add1B [781] [891] s2Step278Add0Work s2Step278Add1Work=some s2Step278F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step278HeadFvAfter s2Step278F4FlagArena s2Step278Add0Arena s2Step278Add0During s2Step278Add1During 844 815
    s2Step278Add0A s2Step278Add0B s2Step278Add1A s2Step278Add1B [781] [891] s2Step278Add0Work s2Step278Add1Work
    (fun q hq => s2Step278F4_owned (List.mem_toFinset.mpr hq)) s2Step278F4_flag s2Step278F4_carry
    s2Step278F4_distinct s2Step278F4_apart s2Step278Add0_checked s2Step278Add1_checked

private theorem s2Step278Front_branch : s2Step278FrontSigmaArena.checkBorrow 1 [815]=some s2Step278HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step278FrontSigmaArena,s2Step278EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step278FrontSigmaArena,s2Step278EntryGvAfter,s2Step278HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step278Front_entry : HmrFrontEntryValid s2Step278EntryFBefore s2Step278FrontBank 132 154 ⟨132,131,155,154⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step278FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step278EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step278EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step278FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step278Front_sigma : s2Step278EntryGvAfter.checkBorrow 1 [844]=some s2Step278FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step278EntryGvAfter,arenaWires]
  · rfl

private def s2Step278HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278HeadFBefore : Arena := s2Step278HeadGAfter

private def s2Step278HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩

private def s2Step278HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789],770⟩

private def s2Step278HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131],769⟩

private def s2Step278HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778],771⟩

private theorem s2Step278HeadBank_incomingDistinct : ([s2Step278HeadGRow,s2Step278HeadFRow,s2Step278HeadGvRow,s2Step278HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278HeadF_Incoming : rowsOwned s2Step278HeadFBefore [s2Step278HeadFRow,s2Step278HeadGvRow,s2Step278HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step278HeadGRow,s2Step278HeadFRow,s2Step278HeadGvRow,s2Step278HeadFvRow] 1 s2Step278HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step278HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step278HeadBank_outgoingOwned : rowsOwned s2Step278HeadFvAfter [s2Step278HeadGOut,s2Step278HeadFOut,s2Step278HeadGvOut,s2Step278HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step278HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step278HeadF_Outgoing : rowsOwned s2Step278HeadFvAfter [s2Step278HeadFOut,s2Step278HeadGvOut,s2Step278HeadFvOut] :=
  hmrRows_owned_drop s2Step278HeadFvAfter [s2Step278HeadGOut,s2Step278HeadFOut,s2Step278HeadGvOut,s2Step278HeadFvOut] 1 s2Step278HeadBank_outgoingOwned

private theorem s2Step278HeadF_distinct : (s2Step278HeadFRow.sign::s2Step278HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278HeadF_owned : (s2Step278HeadFRow.sign::s2Step278HeadFRow.payload).toFinset⊆s2Step278HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step278HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278HeadF_reserved : s2Step278HeadFBefore.reserve s2Step278HeadFFresh.toFinset=some s2Step278HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step278HeadFFresh,arenaWires]
  · norm_num [s2Step278HeadFBefore,s2Step278HeadGAfter,s2Step278HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step278HeadFAfter,s2Step278HeadFBefore,s2Step278HeadGAfter,s2Step278HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step278HeadF_checked : planRowResizeLog s2Step278HeadFBefore s2Step278HeadFRow 133 s2Step278HeadFFresh=
    some (s2Step278HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 788],768⟩,growRow 768 s2Step278HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step278HeadFBefore s2Step278HeadFAfter s2Step278HeadFRow 133 s2Step278HeadFFresh
    s2Step278HeadF_distinct s2Step278HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step278HeadF_reserved
  have rowEq : WindowRow.mk (s2Step278HeadFRow.payload++s2Step278HeadFFresh) s2Step278HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 788],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step278HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step278HeadFvBefore : Arena := s2Step278HeadGvAfter

private theorem s2Step278HeadFv_Incoming : rowsOwned s2Step278HeadFvBefore [s2Step278HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step278HeadGRow,s2Step278HeadFRow,s2Step278HeadGvRow,s2Step278HeadFvRow] 3 s2Step278HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step278HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step278HeadFv_Outgoing : rowsOwned s2Step278HeadFvAfter [s2Step278HeadFvOut] :=
  hmrRows_owned_drop s2Step278HeadFvAfter [s2Step278HeadGOut,s2Step278HeadFOut,s2Step278HeadGvOut,s2Step278HeadFvOut] 3 s2Step278HeadBank_outgoingOwned

private theorem s2Step278HeadFv_distinct : (s2Step278HeadFvRow.sign::s2Step278HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278HeadFv_owned : (s2Step278HeadFvRow.sign::s2Step278HeadFvRow.payload).toFinset⊆s2Step278HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step278HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278HeadFv_reserved : s2Step278HeadFvBefore.reserve s2Step278HeadFvFresh.toFinset=some s2Step278HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step278HeadFvFresh,arenaWires]
  · norm_num [s2Step278HeadFvBefore,s2Step278HeadGvAfter,s2Step278HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step278HeadFvAfter,s2Step278HeadFvBefore,s2Step278HeadGvAfter,s2Step278HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step278HeadFv_checked : planRowResizeLog s2Step278HeadFvBefore s2Step278HeadFvRow 155 s2Step278HeadFvFresh=
    some (s2Step278HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩,growRow 770 s2Step278HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step278HeadFvBefore s2Step278HeadFvAfter s2Step278HeadFvRow 155 s2Step278HeadFvFresh
    s2Step278HeadFv_distinct s2Step278HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step278HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step278HeadFvRow.payload++s2Step278HeadFvFresh) s2Step278HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step278HeadG_Incoming : rowsOwned s2Step278HeadGBefore [s2Step278HeadGRow,s2Step278HeadFRow,s2Step278HeadGvRow,s2Step278HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step278HeadGRow,s2Step278HeadFRow,s2Step278HeadGvRow,s2Step278HeadFvRow] 0 s2Step278HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step278HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step278HeadG_Outgoing : rowsOwned s2Step278HeadFvAfter [s2Step278HeadGOut,s2Step278HeadFOut,s2Step278HeadGvOut,s2Step278HeadFvOut] :=
  hmrRows_owned_drop s2Step278HeadFvAfter [s2Step278HeadGOut,s2Step278HeadFOut,s2Step278HeadGvOut,s2Step278HeadFvOut] 0 s2Step278HeadBank_outgoingOwned

private theorem s2Step278HeadG_distinct : (s2Step278HeadGRow.sign::s2Step278HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278HeadG_owned : (s2Step278HeadGRow.sign::s2Step278HeadGRow.payload).toFinset⊆s2Step278HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step278HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278HeadG_reserved : s2Step278HeadGBefore.reserve s2Step278HeadGFresh.toFinset=some s2Step278HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step278HeadGFresh,arenaWires]
  · norm_num [s2Step278HeadGBefore,s2Step278HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step278HeadGAfter,s2Step278HeadGBefore,s2Step278HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step278HeadG_checked : planRowResizeLog s2Step278HeadGBefore s2Step278HeadGRow 133 s2Step278HeadGFresh=
    some (s2Step278HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 839],769⟩,growRow 769 s2Step278HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step278HeadGBefore s2Step278HeadGAfter s2Step278HeadGRow 133 s2Step278HeadGFresh
    s2Step278HeadG_distinct s2Step278HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step278HeadG_reserved
  have rowEq : WindowRow.mk (s2Step278HeadGRow.payload++s2Step278HeadGFresh) s2Step278HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 839],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step278HeadGvBefore : Arena := s2Step278HeadFAfter

private theorem s2Step278HeadGv_Incoming : rowsOwned s2Step278HeadGvBefore [s2Step278HeadGvRow,s2Step278HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step278HeadGRow,s2Step278HeadFRow,s2Step278HeadGvRow,s2Step278HeadFvRow] 2 s2Step278HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step278HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step278HeadGv_Outgoing : rowsOwned s2Step278HeadFvAfter [s2Step278HeadGvOut,s2Step278HeadFvOut] :=
  hmrRows_owned_drop s2Step278HeadFvAfter [s2Step278HeadGOut,s2Step278HeadFOut,s2Step278HeadGvOut,s2Step278HeadFvOut] 2 s2Step278HeadBank_outgoingOwned

private theorem s2Step278HeadGv_distinct : (s2Step278HeadGvRow.sign::s2Step278HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step278HeadGv_owned : (s2Step278HeadGvRow.sign::s2Step278HeadGvRow.payload).toFinset⊆s2Step278HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step278HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step278HeadGv_reserved : s2Step278HeadGvBefore.reserve s2Step278HeadGvFresh.toFinset=some s2Step278HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step278HeadGvFresh,arenaWires]
  · norm_num [s2Step278HeadGvBefore,s2Step278HeadFAfter,s2Step278HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step278HeadGvAfter,s2Step278HeadGvBefore,s2Step278HeadFAfter,s2Step278HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step278HeadGv_checked : planRowResizeLog s2Step278HeadGvBefore s2Step278HeadGvRow 155 s2Step278HeadGvFresh=
    some (s2Step278HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 791],771⟩,growRow 771 s2Step278HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step278HeadGvBefore s2Step278HeadGvAfter s2Step278HeadGvRow 155 s2Step278HeadGvFresh
    s2Step278HeadGv_distinct s2Step278HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step278HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step278HeadGvRow.payload++s2Step278HeadGvFresh) s2Step278HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 791],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step278HeadBank_rows : planWindowRowsLog s2Step278HeadGBefore [(s2Step278HeadGRow,133),(s2Step278HeadFRow,133),(s2Step278HeadGvRow,155),(s2Step278HeadFvRow,155)] [s2Step278HeadGFresh,s2Step278HeadFFresh,s2Step278HeadGvFresh,s2Step278HeadFvFresh]=
    some (s2Step278HeadFvAfter,[s2Step278HeadGOut,s2Step278HeadFOut,s2Step278HeadGvOut,s2Step278HeadFvOut],(growRow 769 s2Step278HeadGFresh ++ (growRow 768 s2Step278HeadFFresh ++ (growRow 771 s2Step278HeadGvFresh ++ (growRow 770 s2Step278HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step278HeadFvAfter [] []=some (s2Step278HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step278HeadFvBefore s2Step278HeadFvAfter s2Step278HeadFvAfter
    s2Step278HeadFvRow s2Step278HeadFvOut 155 s2Step278HeadFvFresh [] [] []
    (growRow 770 s2Step278HeadFvFresh) ([]) s2Step278HeadFv_Incoming s2Step278HeadFv_checked h4 s2Step278HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step278HeadGvBefore s2Step278HeadGvAfter s2Step278HeadFvAfter
    s2Step278HeadGvRow s2Step278HeadGvOut 155 s2Step278HeadGvFresh [(s2Step278HeadFvRow,155)] [s2Step278HeadFvFresh] [s2Step278HeadFvOut]
    (growRow 771 s2Step278HeadGvFresh) ((growRow 770 s2Step278HeadFvFresh ++ [])) s2Step278HeadGv_Incoming s2Step278HeadGv_checked h3 s2Step278HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step278HeadFBefore s2Step278HeadFAfter s2Step278HeadFvAfter
    s2Step278HeadFRow s2Step278HeadFOut 133 s2Step278HeadFFresh [(s2Step278HeadGvRow,155),(s2Step278HeadFvRow,155)] [s2Step278HeadGvFresh,s2Step278HeadFvFresh] [s2Step278HeadGvOut,s2Step278HeadFvOut]
    (growRow 768 s2Step278HeadFFresh) ((growRow 771 s2Step278HeadGvFresh ++ (growRow 770 s2Step278HeadFvFresh ++ []))) s2Step278HeadF_Incoming s2Step278HeadF_checked h2 s2Step278HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step278HeadGBefore s2Step278HeadGAfter s2Step278HeadFvAfter
    s2Step278HeadGRow s2Step278HeadGOut 133 s2Step278HeadGFresh [(s2Step278HeadFRow,133),(s2Step278HeadGvRow,155),(s2Step278HeadFvRow,155)] [s2Step278HeadFFresh,s2Step278HeadGvFresh,s2Step278HeadFvFresh] [s2Step278HeadFOut,s2Step278HeadGvOut,s2Step278HeadFvOut]
    (growRow 769 s2Step278HeadGFresh) ((growRow 768 s2Step278HeadFFresh ++ (growRow 771 s2Step278HeadGvFresh ++ (growRow 770 s2Step278HeadFvFresh ++ [])))) s2Step278HeadG_Incoming s2Step278HeadG_checked h1 s2Step278HeadG_Outgoing
  exact h0

private theorem s2Step278HeadBank_checked : compileHmrBankResizeLog .headroom s2Step278HeadGBefore ⟨s2Step278HeadFRow,s2Step278HeadGRow,s2Step278HeadFvRow,s2Step278HeadGvRow⟩ ⟨133,133,155,155⟩ [s2Step278HeadGFresh,s2Step278HeadFFresh,s2Step278HeadGvFresh,s2Step278HeadFvFresh]=
    some (s2Step278HeadFvAfter,⟨s2Step278HeadFOut,s2Step278HeadGOut,s2Step278HeadFvOut,s2Step278HeadGvOut⟩,(growRow 769 s2Step278HeadGFresh ++ (growRow 768 s2Step278HeadFFresh ++ (growRow 771 s2Step278HeadGvFresh ++ (growRow 770 s2Step278HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step278HeadBank_rows]
  rfl

private theorem s2Step278Front_checked : compileHmrSourceFrontLog s2Step278EntryFBefore s2Step278FrontBank 132 154 ⟨132,131,155,154⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step278FrontLog=some s2Step278FrontPlan := by
  have pairEq : s2Step278FrontPair=⟨s2Step278HeadFRow,s2Step278HeadGRow,s2Step278HeadFvRow,s2Step278HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step278FrontHead=⟨s2Step278ExitFRow,s2Step278ExitGRow,s2Step278ExitFvRow,s2Step278ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step278Add0A=s2Step278FrontHead.f.wires := by decide +kernel
  have gEq : s2Step278Add0B=s2Step278FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step278Add1A=s2Step278FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step278Add1B=s2Step278FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step278EntryFBefore s2Step278FrontBank 132 154 ⟨132,131,155,154⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step278FrontLog s2Step278FrontPlan
  · exact s2Step278Front_entry
  · exact s2Step278EntryBank_checked
  · exact s2Step278Front_sigma
  · rfl
  · exact s2Step278Front_branch
  · rfl
  · simpa only [s2Step278FrontPlan,pairEq] using s2Step278HeadBank_checked
  · simpa only [s2Step278FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step278F4_checked
  · exact s2Step278Counter_checked
  · rfl
  · simpa only [s2Step278FrontPlan,headEq] using s2Step278ExitBank_checked

private theorem s2Step278Complete_explicit_checked : compileHmrEarlyStepLog s2Step278EntryFBefore s2Step278FrontBank 132 154 ⟨132,131,155,154⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step278CompleteLog=some s2Step278CompletePlan := by
  let Q := s2Step278EarlyControlPlan
  have hq := s2Step278EarlyControl_plan_checked
  have fv1 : s2Step278CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step278CompleteOut.fv.payload[2]?.getD s2Step278CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step278CompleteOut.fv.payload[3]?.getD s2Step278CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step278CompleteOut.fv.payload[4]?.getD s2Step278CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step278EntryFBefore s2Step278EarlyControlArena s2Step278FrontBank 132 154 ⟨132,131,155,154⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step278CompleteLog s2Step278FrontPlan Q
    s2Step278Front_checked s2Step278Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step278Complete_owned s2Step278Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step278EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 844 s2Step278CompleteOut.fv.second (s2Step278CompleteOut.fv.payload[2]?.getD s2Step278CompleteOut.fv.sign) (s2Step278CompleteOut.fv.payload[3]?.getD s2Step278CompleteOut.fv.sign) (s2Step278CompleteOut.fv.payload[4]?.getD s2Step278CompleteOut.fv.sign) 815 53 s2Step278EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep278Arena : Arena := s2Step278EntryFBefore
def s2PrivateStep278Bank : WindowBank := s2Step278FrontBank
def s2PrivateStep278Spec : HmrSourceWalkStepLog := ⟨132,154,⟨132,131,155,154⟩,53,.early s2Step278CompleteLog⟩
def s2PrivateStep278Plan : HmrSourceStepPlan := .early s2Step278CompletePlan
theorem s2PrivateStep278_source : s2PrivateStep278Spec=s2ObservedLogs272[6] := rfl
theorem s2PrivateStep278_checked : compileHmrSourceStepLog s2PrivateStep278Arena s2PrivateStep278Bank
    s2PrivateStep278Spec.fgWidth s2PrivateStep278Spec.vWidth s2PrivateStep278Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]
    6 498 278 s2PrivateStep278Spec.need none s2PrivateStep278Spec.log=some s2PrivateStep278Plan := by
  change compileHmrSourceStepLog s2Step278EntryFBefore s2Step278FrontBank 132 154 ⟨132,131,155,154⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 6 498 278 53 none (.early s2Step278CompleteLog)=some (.early s2Step278CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 278<498)]
  rw [s2Step278Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
