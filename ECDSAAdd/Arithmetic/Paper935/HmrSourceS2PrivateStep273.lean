import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep271
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

private def s2Step273CompleteMoves : List (Wire × Wire) := [(791,134)]

private def s2Step273EarlyControlLog : HmrEarlyControlLog := ⟨[791, 788, 841, 816, 781],[891],[830],[800, 894, 896, 901, 903, 904],[]⟩

private def s2Step273FrontLog : HmrFrontAllocationLog := ⟨⟨[[816], [], [], [822]],[[891], [781], [788], [841]],[[], [], [], []]⟩,[851],[844],[830],[800],[894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step273CompleteLog : HmrEarlyStepLog := ⟨s2Step273FrontLog,s2Step273CompleteMoves,s2Step273EarlyControlLog⟩

private def s2Step273ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645],768⟩

private def s2Step273ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786],770⟩

private def s2Step273ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133],769⟩

private def s2Step273ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822],771⟩

private def s2Step273FrontOut : WindowBank := ⟨s2Step273ExitFOut,s2Step273ExitGOut,s2Step273ExitFvOut,s2Step273ExitGvOut⟩

private def s2Step273CompleteOut : WindowBank := s2Step273FrontOut.repacked s2Step273CompleteMoves

private def s2Step273EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step273EarlyControlPositiveArena,[891],s2Step273EarlyControlEqualityArena,[830],⟨⟨851,false⟩,[⟨⟨891,false⟩,830⟩]⟩⟩

private def s2Step273EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,791⟩,⟨⟨774,false⟩,788⟩,⟨⟨775,false⟩,841⟩,⟨⟨776,false⟩,816⟩,⟨⟨777,false⟩,781⟩]⟩

private def s2Step273EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step273EarlyControlZeroArena,s2Step273EarlyControlZeroPlan,s2Step273EarlyControlClassPlan,s2Step273EarlyControlFlagArena,s2Step273EarlyControlFittedArena,s2Step273EarlyControlHistoryArena,s2Step273EarlyControlSigmaArena,s2Step273EarlyControlOutputArena,s2Step273EarlyControlLog⟩

private def s2Step273CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step273Counter_bounded : s2Step273CounterWork.toFinset⊆arenaWires := by norm_num [s2Step273CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step273HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273CounterDuring : Arena := ⟨s2Step273HeadFvAfter.live∪s2Step273CounterWork.toFinset,Finset.union_subset s2Step273HeadFvAfter.bounded s2Step273Counter_bounded⟩

private def s2Step273EntryFFresh : List Wire := [816]

private def s2Step273EntryFvFresh : List Wire := []

private def s2Step273EntryGFresh : List Wire := []

private def s2Step273EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273EntryGvFresh : List Wire := [822]

private def s2Step273ExitFExtra : List Wire := [816, 781]

private def s2Step273ExitFvExtra : List Wire := [841]

private def s2Step273ExitGExtra : List Wire := [134, 891]

private def s2Step273ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273ExitGvExtra : List Wire := [788]

private def s2Step273Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273Add0Work : List Wire := [894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step273Add0_bounded : s2Step273Add0Work.toFinset⊆arenaWires := by
  have h : s2Step273Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step273Add0During : Arena := ⟨s2Step273Add0Arena.live∪s2Step273Add0Work.toFinset,Finset.union_subset s2Step273Add0Arena.bounded s2Step273Add0_bounded⟩

private def s2Step273Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273Add1Work : List Wire := [894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step273Add1_bounded : s2Step273Add1Work.toFinset⊆arenaWires := by
  have h : s2Step273Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step273Add1During : Arena := ⟨s2Step273Add1Arena.live∪s2Step273Add1Work.toFinset,Finset.union_subset s2Step273Add1Arena.bounded s2Step273Add1_bounded⟩

private def s2Step273F4FlagArena : Arena := ⟨s2Step273HeadFvAfter.live∪{830},Finset.union_subset s2Step273HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step273F4Plan : HmrHybridF4Plan := ⟨s2Step273F4FlagArena,[830],s2Step273Add0Arena,[800],s2Step273Add0During,s2Step273Add0Work,s2Step273Add1During,s2Step273Add1Work⟩

private def s2Step273HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 816, 781],768⟩

private def s2Step273HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 841],770⟩

private def s2Step273HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 891],769⟩

private def s2Step273HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 788],771⟩

private def s2Step273FrontHead : WindowBank := ⟨s2Step273HeadFOut,s2Step273HeadGOut,s2Step273HeadFvOut,s2Step273HeadGvOut⟩

private def s2Step273EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 816],768⟩

private def s2Step273EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786],770⟩

private def s2Step273EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],769⟩

private def s2Step273EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822],771⟩

private def s2Step273FrontPair : WindowBank := ⟨s2Step273EntryFOut,s2Step273EntryGOut,s2Step273EntryFvOut,s2Step273EntryGvOut⟩

private def s2Step273FrontSigmaArena : Arena := ⟨s2Step273EntryGvAfter.live∪{851},Finset.union_subset s2Step273EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step273HeadFFresh : List Wire := [781]

private def s2Step273HeadFvFresh : List Wire := [841]

private def s2Step273HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273HeadGFresh : List Wire := [891]

private def s2Step273HeadGvFresh : List Wire := [788]

private def s2Step273FrontPlan : HmrSourceFront := ⟨s2Step273EntryGvAfter,s2Step273FrontPair,(growRow 768 s2Step273EntryFFresh ++ (growRow 769 s2Step273EntryGFresh ++ (growRow 770 s2Step273EntryFvFresh ++ (growRow 771 s2Step273EntryGvFresh ++ [])))),s2Step273FrontSigmaArena,[851],s2Step273HeadGBefore,[844],
  s2Step273HeadFvAfter,s2Step273FrontHead,(growRow 769 s2Step273HeadGFresh ++ (growRow 768 s2Step273HeadFFresh ++ (growRow 771 s2Step273HeadGvFresh ++ (growRow 770 s2Step273HeadFvFresh ++ [])))),s2Step273F4Plan,s2Step273CounterDuring,s2Step273CounterWork,s2Step273ExitGvAfter,s2Step273FrontOut,(shrinkRow 769 s2Step273ExitGExtra ++ (shrinkRow 768 s2Step273ExitFExtra ++ (shrinkRow 770 s2Step273ExitFvExtra ++ (shrinkRow 771 s2Step273ExitGvExtra ++ []))))⟩

private def s2Step273CompletePlan : HmrEarlyStepPlan := ⟨s2Step273FrontPlan,s2Step273EarlyControlArena,s2Step273EarlyControlPlan,s2Step273CompleteMoves⟩

private theorem s2Step273Complete_apart : List.Disjoint (s2Step273CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [851, 844, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] := by
  have nd : ((s2Step273CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[851, 844, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step273Complete_owned : (s2Step273CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step273EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step273EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step273CompleteMoveArena : Arena := ⟨s2Step273ExitGvAfter.live∪{134},Finset.union_subset s2Step273ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step273Complete_repack : s2Step273ExitGvAfter.checkRepack s2Step273CompleteMoves=some s2Step273EarlyControlArena := by
  have owned : 791∈s2Step273ExitGvAfter.live := by norm_num [s2Step273ExitGvAfter,arenaWires]
  have reserve : s2Step273ExitGvAfter.reserve {134}=some s2Step273CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step273ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step273CompleteMoveArena.retireSet {791}=s2Step273EarlyControlArena := by
    unfold Arena.retireSet s2Step273EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step273CompleteMoveArena,s2Step273ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step273CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step273CompleteMoveArena.retireSet {791}).checkRepack []=some s2Step273EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step273EarlyControl_branchOwned : ([844] : List Wire).toFinset⊆s2Step273EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step273EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273EarlyControl_branch : compileHmrBranchRetirement s2Step273EarlyControlSigmaArena 844=some s2Step273EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step273EarlyControl_branchOwned
  · ext q
    simp [s2Step273EarlyControlOutputArena,s2Step273EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step273EarlyControl_classEqualityBorrow : s2Step273EarlyControlPositiveArena.checkBorrow (([851, 891] : List Wire).length-1) s2Step273EarlyControlLog.classWork=some s2Step273EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step273EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step273EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step273EarlyControlEqualityArena,s2Step273EarlyControlPositiveArena,s2Step273EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step273EarlyControl_classEqualityOwned : ([851, 891] : List Wire).toFinset⊆s2Step273EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step273EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273EarlyControl_classEquality : compileHmrEqualityLog s2Step273EarlyControlPositiveArena [851, 891] 0 s2Step273EarlyControlLog.classWork=some (s2Step273EarlyControlEqualityArena,s2Step273EarlyControlLog.classWork,s2Step273EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step273EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step273EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step273EarlyControl_classOwned : ([777, 781, 851] : List Wire).toFinset⊆s2Step273EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step273EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273EarlyControl_positiveBorrow : s2Step273EarlyControlZeroArena.checkBorrow (1) s2Step273EarlyControlLog.positiveWork=some s2Step273EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step273EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step273EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step273EarlyControlPositiveArena,s2Step273EarlyControlZeroArena,s2Step273EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step273EarlyControl_class : compileHmrSourceClassLog s2Step273EarlyControlZeroArena false 777 s2Step273EarlyControlZeroPlan.top 0 851 s2Step273EarlyControlLog.positiveWork s2Step273EarlyControlLog.classWork=some s2Step273EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step273EarlyControlClassPlan s2Step273EarlyControlZeroArena false 777 s2Step273EarlyControlZeroPlan.top 0 851
  constructor
  · decide +kernel
  · exact s2Step273EarlyControl_classOwned
  · exact s2Step273EarlyControl_positiveBorrow
  · exact s2Step273EarlyControl_classEquality

private theorem s2Step273EarlyControl_entryRecordOwned : ([844, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step273EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step273EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273EarlyControl_entrySigmaOwned : ([851, 254] : List Wire).toFinset⊆s2Step273EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step273EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273EarlyControl_fitBorrow : s2Step273EarlyControlFlagArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step273EarlyControlLog.recordFresh=some s2Step273EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step273EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step273EarlyControlFlagArena (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step273EarlyControlFittedArena,s2Step273EarlyControlFlagArena,s2Step273EarlyControlLog,arenaWires]

private theorem s2Step273EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step273EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step273EarlyControlFlagArena (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273EarlyControl_fit : compileHmrRecordGrowLog s2Step273EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step273EarlyControlLog.recordFresh=some s2Step273EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step273EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step273EarlyControl_fitBorrow

private theorem s2Step273EarlyControl_flagsBorrow : s2Step273EarlyControlEqualityArena.checkBorrow (6) s2Step273EarlyControlLog.flagWork=some s2Step273EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step273EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step273EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step273EarlyControlFlagArena,s2Step273EarlyControlEqualityArena,s2Step273EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step273EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s2Step273EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step273EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273EarlyControl_flags : compileHmrFlagsLog s2Step273EarlyControlClassPlan.equalityArena s2Step273EarlyControlClassPlan.equality.top 253 252 251 s2Step273EarlyControlLog.flagWork=some s2Step273EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step273EarlyControl_flagsOwned⟩
  · exact s2Step273EarlyControl_flagsBorrow

private theorem s2Step273EarlyControl_historyBorrow : s2Step273EarlyControlArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step273EarlyControlLog.recordFresh=some s2Step273EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step273EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step273EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step273EarlyControlHistoryArena,s2Step273EarlyControlArena,s2Step273EarlyControlLog,arenaWires]

private theorem s2Step273EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step273EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step273EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273EarlyControl_history : compileHmrRecordGrowLog s2Step273EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step273EarlyControlLog.recordFresh=some s2Step273EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step273EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step273EarlyControl_historyBorrow

private theorem s2Step273EarlyControl_sigmaOwned : ([254, 851] : List Wire).toFinset⊆s2Step273EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step273EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273EarlyControl_sigmaReleaseOwned : ([851] : List Wire).toFinset⊆s2Step273EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step273EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273EarlyControl_sigmaRelease : s2Step273EarlyControlHistoryArena.release {851} (fun _ => false)=some s2Step273EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step273EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step273EarlyControlSigmaArena,s2Step273EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step273EarlyControl_sigma : compileHmrSigmaDropLog s2Step273EarlyControlHistoryArena false 0 0 254 851 []=some s2Step273EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step273EarlyControl_sigmaOwned⟩
  · exact s2Step273EarlyControl_sigmaRelease

private theorem s2Step273EarlyControl_zeroBorrow : s2Step273EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step273EarlyControlLog.zeroWork=some s2Step273EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step273EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step273EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step273EarlyControlZeroArena,s2Step273EarlyControlArena,s2Step273EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step273EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step273EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step273EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273EarlyControl_zero : compileHmrEqualityLog s2Step273EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step273EarlyControlLog.zeroWork=some (s2Step273EarlyControlZeroArena,s2Step273EarlyControlLog.zeroWork,s2Step273EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step273EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step273EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step273EarlyControl_logged : s2Step273EarlyControlPlan.Logged s2Step273EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 851 254 253 252 251 844 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step273EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step273EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step273EarlyControl_zero
  · exact s2Step273EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step273EarlyControl_flags
  · exact s2Step273EarlyControl_fit
  · exact s2Step273EarlyControl_history
  · exact s2Step273EarlyControl_sigma
  · exact s2Step273EarlyControl_branch

private theorem s2Step273EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step273EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 851 254 253 252 251 844 53 s2Step273EarlyControlLog=some s2Step273EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step273EarlyControlPlan s2Step273EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 851 254 253 252 251 844 53 s2Step273EarlyControl_logged

private def s2Step273EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645],768⟩

private def s2Step273EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786],770⟩

private def s2Step273EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],769⟩

private def s2Step273EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩

private def s2Step273FrontBank : WindowBank := ⟨s2Step273EntryFRow,s2Step273EntryGRow,s2Step273EntryFvRow,s2Step273EntryGvRow⟩

private def s2Step273Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 816, 781, 768]

private def s2Step273Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 891, 769]

private def s2Step273Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 841, 770]

private def s2Step273Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 788, 771]

private theorem s2Step273Counter_apart : Disjoint s2Step273HeadFvAfter.live s2Step273CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step273HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273Counter_borrowed : s2Step273HeadFvAfter.checkBorrow 4 s2Step273CounterWork=some s2Step273CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step273HeadFvAfter s2Step273CounterDuring s2Step273CounterWork.toFinset s2Step273Counter_bounded s2Step273Counter_apart rfl

private theorem s2Step273Counter_owned : (851::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step273HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step273HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273Counter_checked : compileHmrCounterStepLog s2Step273HeadFvAfter true 851 [772, 773, 774, 775, 776, 777] s2Step273CounterWork=some s2Step273CounterDuring := by
  have owned : ∀q∈851::[772, 773, 774, 775, 776, 777],q∈s2Step273HeadFvAfter.live := fun q hq => s2Step273Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step273Counter_borrowed

private def s2Step273EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step273EntryBank_incomingDistinct : ([s2Step273EntryFRow,s2Step273EntryGRow,s2Step273EntryFvRow,s2Step273EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273EntryF_Incoming : rowsOwned s2Step273EntryFBefore [s2Step273EntryFRow,s2Step273EntryGRow,s2Step273EntryFvRow,s2Step273EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step273EntryFRow,s2Step273EntryGRow,s2Step273EntryFvRow,s2Step273EntryGvRow] 0 s2Step273EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step273EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step273EntryBank_outgoingOwned : rowsOwned s2Step273EntryGvAfter [s2Step273EntryFOut,s2Step273EntryGOut,s2Step273EntryFvOut,s2Step273EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step273EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step273EntryF_Outgoing : rowsOwned s2Step273EntryGvAfter [s2Step273EntryFOut,s2Step273EntryGOut,s2Step273EntryFvOut,s2Step273EntryGvOut] :=
  hmrRows_owned_drop s2Step273EntryGvAfter [s2Step273EntryFOut,s2Step273EntryGOut,s2Step273EntryFvOut,s2Step273EntryGvOut] 0 s2Step273EntryBank_outgoingOwned

private theorem s2Step273EntryF_distinct : (s2Step273EntryFRow.sign::s2Step273EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273EntryF_owned : (s2Step273EntryFRow.sign::s2Step273EntryFRow.payload).toFinset⊆s2Step273EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step273EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273EntryF_reserved : s2Step273EntryFBefore.reserve s2Step273EntryFFresh.toFinset=some s2Step273EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step273EntryFFresh,arenaWires]
  · norm_num [s2Step273EntryFBefore,s2Step273EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step273EntryFAfter,s2Step273EntryFBefore,s2Step273EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step273EntryF_checked : planRowResizeLog s2Step273EntryFBefore s2Step273EntryFRow 135 s2Step273EntryFFresh=
    some (s2Step273EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 816],768⟩,growRow 768 s2Step273EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step273EntryFBefore s2Step273EntryFAfter s2Step273EntryFRow 135 s2Step273EntryFFresh
    s2Step273EntryF_distinct s2Step273EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step273EntryF_reserved
  have rowEq : WindowRow.mk (s2Step273EntryFRow.payload++s2Step273EntryFFresh) s2Step273EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 816],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step273EntryFvAfter : Arena := s2Step273EntryFAfter

private def s2Step273EntryFvBefore : Arena := s2Step273EntryFAfter

private theorem s2Step273EntryFv_Incoming : rowsOwned s2Step273EntryFvBefore [s2Step273EntryFvRow,s2Step273EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step273EntryFRow,s2Step273EntryGRow,s2Step273EntryFvRow,s2Step273EntryGvRow] 2 s2Step273EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step273EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step273EntryFv_Outgoing : rowsOwned s2Step273EntryGvAfter [s2Step273EntryFvOut,s2Step273EntryGvOut] :=
  hmrRows_owned_drop s2Step273EntryGvAfter [s2Step273EntryFOut,s2Step273EntryGOut,s2Step273EntryFvOut,s2Step273EntryGvOut] 2 s2Step273EntryBank_outgoingOwned

private theorem s2Step273EntryFv_distinct : (s2Step273EntryFvRow.sign::s2Step273EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273EntryFv_owned : (s2Step273EntryFvRow.sign::s2Step273EntryFvRow.payload).toFinset⊆s2Step273EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step273EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273EntryFv_reserved : s2Step273EntryFvBefore.reserve s2Step273EntryFvFresh.toFinset=some s2Step273EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step273EntryFvFresh,arenaWires]
  · norm_num [s2Step273EntryFvBefore,s2Step273EntryFAfter,s2Step273EntryFvFresh,arenaWires]
  · simp only [s2Step273EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step273EntryFv_checked : planRowResizeLog s2Step273EntryFvBefore s2Step273EntryFvRow 152 s2Step273EntryFvFresh=
    some (s2Step273EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786],770⟩,growRow 770 s2Step273EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step273EntryFvBefore s2Step273EntryFvAfter s2Step273EntryFvRow 152 s2Step273EntryFvFresh
    s2Step273EntryFv_distinct s2Step273EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step273EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step273EntryFvRow.payload++s2Step273EntryFvFresh) s2Step273EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step273EntryGAfter : Arena := s2Step273EntryFAfter

private def s2Step273EntryGBefore : Arena := s2Step273EntryFAfter

private theorem s2Step273EntryG_Incoming : rowsOwned s2Step273EntryGBefore [s2Step273EntryGRow,s2Step273EntryFvRow,s2Step273EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step273EntryFRow,s2Step273EntryGRow,s2Step273EntryFvRow,s2Step273EntryGvRow] 1 s2Step273EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step273EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step273EntryG_Outgoing : rowsOwned s2Step273EntryGvAfter [s2Step273EntryGOut,s2Step273EntryFvOut,s2Step273EntryGvOut] :=
  hmrRows_owned_drop s2Step273EntryGvAfter [s2Step273EntryFOut,s2Step273EntryGOut,s2Step273EntryFvOut,s2Step273EntryGvOut] 1 s2Step273EntryBank_outgoingOwned

private theorem s2Step273EntryG_distinct : (s2Step273EntryGRow.sign::s2Step273EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273EntryG_owned : (s2Step273EntryGRow.sign::s2Step273EntryGRow.payload).toFinset⊆s2Step273EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step273EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273EntryG_reserved : s2Step273EntryGBefore.reserve s2Step273EntryGFresh.toFinset=some s2Step273EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step273EntryGFresh,arenaWires]
  · norm_num [s2Step273EntryGBefore,s2Step273EntryFAfter,s2Step273EntryGFresh,arenaWires]
  · simp only [s2Step273EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step273EntryG_checked : planRowResizeLog s2Step273EntryGBefore s2Step273EntryGRow 135 s2Step273EntryGFresh=
    some (s2Step273EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],769⟩,growRow 769 s2Step273EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step273EntryGBefore s2Step273EntryGAfter s2Step273EntryGRow 135 s2Step273EntryGFresh
    s2Step273EntryG_distinct s2Step273EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step273EntryG_reserved
  have rowEq : WindowRow.mk (s2Step273EntryGRow.payload++s2Step273EntryGFresh) s2Step273EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step273EntryGvBefore : Arena := s2Step273EntryFAfter

private theorem s2Step273EntryGv_Incoming : rowsOwned s2Step273EntryGvBefore [s2Step273EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step273EntryFRow,s2Step273EntryGRow,s2Step273EntryFvRow,s2Step273EntryGvRow] 3 s2Step273EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step273EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step273EntryGv_Outgoing : rowsOwned s2Step273EntryGvAfter [s2Step273EntryGvOut] :=
  hmrRows_owned_drop s2Step273EntryGvAfter [s2Step273EntryFOut,s2Step273EntryGOut,s2Step273EntryFvOut,s2Step273EntryGvOut] 3 s2Step273EntryBank_outgoingOwned

private theorem s2Step273EntryGv_distinct : (s2Step273EntryGvRow.sign::s2Step273EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273EntryGv_owned : (s2Step273EntryGvRow.sign::s2Step273EntryGvRow.payload).toFinset⊆s2Step273EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step273EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273EntryGv_reserved : s2Step273EntryGvBefore.reserve s2Step273EntryGvFresh.toFinset=some s2Step273EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step273EntryGvFresh,arenaWires]
  · norm_num [s2Step273EntryGvBefore,s2Step273EntryFAfter,s2Step273EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step273EntryGvAfter,s2Step273EntryGvBefore,s2Step273EntryFAfter,s2Step273EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step273EntryGv_checked : planRowResizeLog s2Step273EntryGvBefore s2Step273EntryGvRow 152 s2Step273EntryGvFresh=
    some (s2Step273EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822],771⟩,growRow 771 s2Step273EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step273EntryGvBefore s2Step273EntryGvAfter s2Step273EntryGvRow 152 s2Step273EntryGvFresh
    s2Step273EntryGv_distinct s2Step273EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step273EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step273EntryGvRow.payload++s2Step273EntryGvFresh) s2Step273EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step273EntryBank_rows : planWindowRowsLog s2Step273EntryFBefore [(s2Step273EntryFRow,135),(s2Step273EntryGRow,135),(s2Step273EntryFvRow,152),(s2Step273EntryGvRow,152)] [s2Step273EntryFFresh,s2Step273EntryGFresh,s2Step273EntryFvFresh,s2Step273EntryGvFresh]=
    some (s2Step273EntryGvAfter,[s2Step273EntryFOut,s2Step273EntryGOut,s2Step273EntryFvOut,s2Step273EntryGvOut],(growRow 768 s2Step273EntryFFresh ++ (growRow 769 s2Step273EntryGFresh ++ (growRow 770 s2Step273EntryFvFresh ++ (growRow 771 s2Step273EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step273EntryGvAfter [] []=some (s2Step273EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step273EntryGvBefore s2Step273EntryGvAfter s2Step273EntryGvAfter
    s2Step273EntryGvRow s2Step273EntryGvOut 152 s2Step273EntryGvFresh [] [] []
    (growRow 771 s2Step273EntryGvFresh) ([]) s2Step273EntryGv_Incoming s2Step273EntryGv_checked h4 s2Step273EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step273EntryFvBefore s2Step273EntryFvAfter s2Step273EntryGvAfter
    s2Step273EntryFvRow s2Step273EntryFvOut 152 s2Step273EntryFvFresh [(s2Step273EntryGvRow,152)] [s2Step273EntryGvFresh] [s2Step273EntryGvOut]
    (growRow 770 s2Step273EntryFvFresh) ((growRow 771 s2Step273EntryGvFresh ++ [])) s2Step273EntryFv_Incoming s2Step273EntryFv_checked h3 s2Step273EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step273EntryGBefore s2Step273EntryGAfter s2Step273EntryGvAfter
    s2Step273EntryGRow s2Step273EntryGOut 135 s2Step273EntryGFresh [(s2Step273EntryFvRow,152),(s2Step273EntryGvRow,152)] [s2Step273EntryFvFresh,s2Step273EntryGvFresh] [s2Step273EntryFvOut,s2Step273EntryGvOut]
    (growRow 769 s2Step273EntryGFresh) ((growRow 770 s2Step273EntryFvFresh ++ (growRow 771 s2Step273EntryGvFresh ++ []))) s2Step273EntryG_Incoming s2Step273EntryG_checked h2 s2Step273EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step273EntryFBefore s2Step273EntryFAfter s2Step273EntryGvAfter
    s2Step273EntryFRow s2Step273EntryFOut 135 s2Step273EntryFFresh [(s2Step273EntryGRow,135),(s2Step273EntryFvRow,152),(s2Step273EntryGvRow,152)] [s2Step273EntryGFresh,s2Step273EntryFvFresh,s2Step273EntryGvFresh] [s2Step273EntryGOut,s2Step273EntryFvOut,s2Step273EntryGvOut]
    (growRow 768 s2Step273EntryFFresh) ((growRow 769 s2Step273EntryGFresh ++ (growRow 770 s2Step273EntryFvFresh ++ (growRow 771 s2Step273EntryGvFresh ++ [])))) s2Step273EntryF_Incoming s2Step273EntryF_checked h1 s2Step273EntryF_Outgoing
  exact h0

private theorem s2Step273EntryBank_checked : compileHmrBankResizeLog .entry s2Step273EntryFBefore ⟨s2Step273EntryFRow,s2Step273EntryGRow,s2Step273EntryFvRow,s2Step273EntryGvRow⟩ ⟨135,135,152,152⟩ [s2Step273EntryFFresh,s2Step273EntryGFresh,s2Step273EntryFvFresh,s2Step273EntryGvFresh]=
    some (s2Step273EntryGvAfter,⟨s2Step273EntryFOut,s2Step273EntryGOut,s2Step273EntryFvOut,s2Step273EntryGvOut⟩,(growRow 768 s2Step273EntryFFresh ++ (growRow 769 s2Step273EntryGFresh ++ (growRow 770 s2Step273EntryFvFresh ++ (growRow 771 s2Step273EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step273EntryBank_rows]
  rfl

private def s2Step273ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273ExitFBefore : Arena := s2Step273ExitGAfter

private def s2Step273ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 816, 781],768⟩

private def s2Step273ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 841],770⟩

private def s2Step273ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 891],769⟩

private def s2Step273ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 788],771⟩

private theorem s2Step273ExitBank_incomingDistinct : ([s2Step273ExitGRow,s2Step273ExitFRow,s2Step273ExitFvRow,s2Step273ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273ExitF_Incoming : rowsOwned s2Step273ExitFBefore [s2Step273ExitFRow,s2Step273ExitFvRow,s2Step273ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step273ExitGRow,s2Step273ExitFRow,s2Step273ExitFvRow,s2Step273ExitGvRow] 1 s2Step273ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step273ExitFBefore (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step273ExitBank_outgoingOwned : rowsOwned s2Step273ExitGvAfter [s2Step273ExitGOut,s2Step273ExitFOut,s2Step273ExitFvOut,s2Step273ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step273ExitGvAfter (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step273ExitF_Outgoing : rowsOwned s2Step273ExitGvAfter [s2Step273ExitFOut,s2Step273ExitFvOut,s2Step273ExitGvOut] :=
  hmrRows_owned_drop s2Step273ExitGvAfter [s2Step273ExitGOut,s2Step273ExitFOut,s2Step273ExitFvOut,s2Step273ExitGvOut] 1 s2Step273ExitBank_outgoingOwned

private theorem s2Step273ExitF_distinct : (s2Step273ExitFRow.sign::s2Step273ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273ExitF_owned : (s2Step273ExitFRow.sign::s2Step273ExitFRow.payload).toFinset⊆s2Step273ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step273ExitFBefore (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273ExitF_retired : s2Step273ExitFBefore.retireSet s2Step273ExitFExtra.toFinset=s2Step273ExitFAfter := by
  unfold Arena.retireSet s2Step273ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step273ExitFBefore,s2Step273ExitGAfter,s2Step273ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step273ExitF_checked : planRowResizeLog s2Step273ExitFBefore s2Step273ExitFRow 134 []=
    some (s2Step273ExitFAfter,s2Step273ExitFOut,shrinkRow 768 s2Step273ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step273ExitFBefore s2Step273ExitFRow 134 s2Step273ExitF_distinct s2Step273ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step273ExitFRow.payload.take 134) s2Step273ExitFRow.sign=s2Step273ExitFOut := by decide +kernel
  have hi : s2Step273ExitFRow.payload.drop 134=s2Step273ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step273ExitF_retired] at result
  exact result

private def s2Step273ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273ExitFvBefore : Arena := s2Step273ExitFAfter

private theorem s2Step273ExitFv_Incoming : rowsOwned s2Step273ExitFvBefore [s2Step273ExitFvRow,s2Step273ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step273ExitGRow,s2Step273ExitFRow,s2Step273ExitFvRow,s2Step273ExitGvRow] 2 s2Step273ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step273ExitFvBefore (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step273ExitFv_Outgoing : rowsOwned s2Step273ExitGvAfter [s2Step273ExitFvOut,s2Step273ExitGvOut] :=
  hmrRows_owned_drop s2Step273ExitGvAfter [s2Step273ExitGOut,s2Step273ExitFOut,s2Step273ExitFvOut,s2Step273ExitGvOut] 2 s2Step273ExitBank_outgoingOwned

private theorem s2Step273ExitFv_distinct : (s2Step273ExitFvRow.sign::s2Step273ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273ExitFv_owned : (s2Step273ExitFvRow.sign::s2Step273ExitFvRow.payload).toFinset⊆s2Step273ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step273ExitFvBefore (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273ExitFv_retired : s2Step273ExitFvBefore.retireSet s2Step273ExitFvExtra.toFinset=s2Step273ExitFvAfter := by
  unfold Arena.retireSet s2Step273ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step273ExitFvBefore,s2Step273ExitFAfter,s2Step273ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step273ExitFv_checked : planRowResizeLog s2Step273ExitFvBefore s2Step273ExitFvRow 152 []=
    some (s2Step273ExitFvAfter,s2Step273ExitFvOut,shrinkRow 770 s2Step273ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step273ExitFvBefore s2Step273ExitFvRow 152 s2Step273ExitFv_distinct s2Step273ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step273ExitFvRow.payload.take 152) s2Step273ExitFvRow.sign=s2Step273ExitFvOut := by decide +kernel
  have hi : s2Step273ExitFvRow.payload.drop 152=s2Step273ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step273ExitFv_retired] at result
  exact result

private def s2Step273ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step273ExitG_Incoming : rowsOwned s2Step273ExitGBefore [s2Step273ExitGRow,s2Step273ExitFRow,s2Step273ExitFvRow,s2Step273ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step273ExitGRow,s2Step273ExitFRow,s2Step273ExitFvRow,s2Step273ExitGvRow] 0 s2Step273ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step273ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step273ExitG_Outgoing : rowsOwned s2Step273ExitGvAfter [s2Step273ExitGOut,s2Step273ExitFOut,s2Step273ExitFvOut,s2Step273ExitGvOut] :=
  hmrRows_owned_drop s2Step273ExitGvAfter [s2Step273ExitGOut,s2Step273ExitFOut,s2Step273ExitFvOut,s2Step273ExitGvOut] 0 s2Step273ExitBank_outgoingOwned

private theorem s2Step273ExitG_distinct : (s2Step273ExitGRow.sign::s2Step273ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273ExitG_owned : (s2Step273ExitGRow.sign::s2Step273ExitGRow.payload).toFinset⊆s2Step273ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step273ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273ExitG_retired : s2Step273ExitGBefore.retireSet s2Step273ExitGExtra.toFinset=s2Step273ExitGAfter := by
  unfold Arena.retireSet s2Step273ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step273ExitGBefore,s2Step273ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step273ExitG_checked : planRowResizeLog s2Step273ExitGBefore s2Step273ExitGRow 134 []=
    some (s2Step273ExitGAfter,s2Step273ExitGOut,shrinkRow 769 s2Step273ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step273ExitGBefore s2Step273ExitGRow 134 s2Step273ExitG_distinct s2Step273ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step273ExitGRow.payload.take 134) s2Step273ExitGRow.sign=s2Step273ExitGOut := by decide +kernel
  have hi : s2Step273ExitGRow.payload.drop 134=s2Step273ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step273ExitG_retired] at result
  exact result

private def s2Step273ExitGvBefore : Arena := s2Step273ExitFvAfter

private theorem s2Step273ExitGv_Incoming : rowsOwned s2Step273ExitGvBefore [s2Step273ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step273ExitGRow,s2Step273ExitFRow,s2Step273ExitFvRow,s2Step273ExitGvRow] 3 s2Step273ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step273ExitGvBefore (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step273ExitGv_Outgoing : rowsOwned s2Step273ExitGvAfter [s2Step273ExitGvOut] :=
  hmrRows_owned_drop s2Step273ExitGvAfter [s2Step273ExitGOut,s2Step273ExitFOut,s2Step273ExitFvOut,s2Step273ExitGvOut] 3 s2Step273ExitBank_outgoingOwned

private theorem s2Step273ExitGv_distinct : (s2Step273ExitGvRow.sign::s2Step273ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273ExitGv_owned : (s2Step273ExitGvRow.sign::s2Step273ExitGvRow.payload).toFinset⊆s2Step273ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step273ExitGvBefore (fun q => (0≤q ∧ q<134) ∨ (135≤q ∧ q<781) ∨ (782≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273ExitGv_retired : s2Step273ExitGvBefore.retireSet s2Step273ExitGvExtra.toFinset=s2Step273ExitGvAfter := by
  unfold Arena.retireSet s2Step273ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step273ExitGvBefore,s2Step273ExitFvAfter,s2Step273ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step273ExitGv_checked : planRowResizeLog s2Step273ExitGvBefore s2Step273ExitGvRow 152 []=
    some (s2Step273ExitGvAfter,s2Step273ExitGvOut,shrinkRow 771 s2Step273ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step273ExitGvBefore s2Step273ExitGvRow 152 s2Step273ExitGv_distinct s2Step273ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step273ExitGvRow.payload.take 152) s2Step273ExitGvRow.sign=s2Step273ExitGvOut := by decide +kernel
  have hi : s2Step273ExitGvRow.payload.drop 152=s2Step273ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step273ExitGv_retired] at result
  exact result

private theorem s2Step273ExitBank_rows : planWindowRowsLog s2Step273ExitGBefore [(s2Step273ExitGRow,134),(s2Step273ExitFRow,134),(s2Step273ExitFvRow,152),(s2Step273ExitGvRow,152)] [[],[],[],[]]=
    some (s2Step273ExitGvAfter,[s2Step273ExitGOut,s2Step273ExitFOut,s2Step273ExitFvOut,s2Step273ExitGvOut],(shrinkRow 769 s2Step273ExitGExtra ++ (shrinkRow 768 s2Step273ExitFExtra ++ (shrinkRow 770 s2Step273ExitFvExtra ++ (shrinkRow 771 s2Step273ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step273ExitGvAfter [] []=some (s2Step273ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step273ExitGvBefore s2Step273ExitGvAfter s2Step273ExitGvAfter
    s2Step273ExitGvRow s2Step273ExitGvOut 152 [] [] [] []
    (shrinkRow 771 s2Step273ExitGvExtra) ([]) s2Step273ExitGv_Incoming s2Step273ExitGv_checked h4 s2Step273ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step273ExitFvBefore s2Step273ExitFvAfter s2Step273ExitGvAfter
    s2Step273ExitFvRow s2Step273ExitFvOut 152 [] [(s2Step273ExitGvRow,152)] [[]] [s2Step273ExitGvOut]
    (shrinkRow 770 s2Step273ExitFvExtra) ((shrinkRow 771 s2Step273ExitGvExtra ++ [])) s2Step273ExitFv_Incoming s2Step273ExitFv_checked h3 s2Step273ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step273ExitFBefore s2Step273ExitFAfter s2Step273ExitGvAfter
    s2Step273ExitFRow s2Step273ExitFOut 134 [] [(s2Step273ExitFvRow,152),(s2Step273ExitGvRow,152)] [[],[]] [s2Step273ExitFvOut,s2Step273ExitGvOut]
    (shrinkRow 768 s2Step273ExitFExtra) ((shrinkRow 770 s2Step273ExitFvExtra ++ (shrinkRow 771 s2Step273ExitGvExtra ++ []))) s2Step273ExitF_Incoming s2Step273ExitF_checked h2 s2Step273ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step273ExitGBefore s2Step273ExitGAfter s2Step273ExitGvAfter
    s2Step273ExitGRow s2Step273ExitGOut 134 [] [(s2Step273ExitFRow,134),(s2Step273ExitFvRow,152),(s2Step273ExitGvRow,152)] [[],[],[]] [s2Step273ExitFOut,s2Step273ExitFvOut,s2Step273ExitGvOut]
    (shrinkRow 769 s2Step273ExitGExtra) ((shrinkRow 768 s2Step273ExitFExtra ++ (shrinkRow 770 s2Step273ExitFvExtra ++ (shrinkRow 771 s2Step273ExitGvExtra ++ [])))) s2Step273ExitG_Incoming s2Step273ExitG_checked h1 s2Step273ExitG_Outgoing
  exact h0

private theorem s2Step273ExitBank_checked : compileHmrBankResizeLog .exit s2Step273ExitGBefore ⟨s2Step273ExitFRow,s2Step273ExitGRow,s2Step273ExitFvRow,s2Step273ExitGvRow⟩ ⟨134,134,152,152⟩ [[],[],[],[]]=
    some (s2Step273ExitGvAfter,⟨s2Step273ExitFOut,s2Step273ExitGOut,s2Step273ExitFvOut,s2Step273ExitGvOut⟩,(shrinkRow 769 s2Step273ExitGExtra ++ (shrinkRow 768 s2Step273ExitFExtra ++ (shrinkRow 770 s2Step273ExitFvExtra ++ (shrinkRow 771 s2Step273ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step273ExitBank_rows]
  rfl

private theorem s2Step273Add0_apart : Disjoint s2Step273Add0Arena.live s2Step273Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step273Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273Add0_card : s2Step273Add0Arena.live.card=901 := by
  decide +kernel

private theorem s2Step273Add0_borrowed : s2Step273Add0Arena.checkBorrow (hmrHybridCount s2Step273Add0Arena s2Step273Add0B.length) s2Step273Add0Work=some s2Step273Add0During := by
  have len : s2Step273Add0Work.length=hmrHybridCount s2Step273Add0Arena s2Step273Add0B.length := by
    rw [hmrHybridCount,s2Step273Add0_card]
    decide +kernel
  have nd : s2Step273Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step273Add0Arena s2Step273Add0During s2Step273Add0Work.toFinset s2Step273Add0_bounded s2Step273Add0_apart rfl

private theorem s2Step273Add0_distinct : (830::844::800::(s2Step273Add0A++s2Step273Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273Add0_owned : (830::844::800::(s2Step273Add0A++s2Step273Add0B)).toFinset⊆s2Step273Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step273Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273Add0_checked : compileHmrHybridCinLog s2Step273Add0Arena 844 830 800 s2Step273Add0A s2Step273Add0B s2Step273Add0Work=some s2Step273Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step273Add0Arena s2Step273Add0During 844 830 800 s2Step273Add0A s2Step273Add0B s2Step273Add0Work
    (by decide +kernel) (by decide +kernel) s2Step273Add0_distinct
    (fun q hq => s2Step273Add0_owned (List.mem_toFinset.mpr hq)) s2Step273Add0_borrowed

private theorem s2Step273Add1_apart : Disjoint s2Step273Add1Arena.live s2Step273Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step273Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273Add1_card : s2Step273Add1Arena.live.card=901 := by
  decide +kernel

private theorem s2Step273Add1_borrowed : s2Step273Add1Arena.checkBorrow (hmrHybridCount s2Step273Add1Arena s2Step273Add1B.length) s2Step273Add1Work=some s2Step273Add1During := by
  have len : s2Step273Add1Work.length=hmrHybridCount s2Step273Add1Arena s2Step273Add1B.length := by
    rw [hmrHybridCount,s2Step273Add1_card]
    decide +kernel
  have nd : s2Step273Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step273Add1Arena s2Step273Add1During s2Step273Add1Work.toFinset s2Step273Add1_bounded s2Step273Add1_apart rfl

private theorem s2Step273Add1_distinct : (830::844::800::(s2Step273Add1A++s2Step273Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273Add1_owned : (830::844::800::(s2Step273Add1A++s2Step273Add1B)).toFinset⊆s2Step273Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step273Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273Add1_checked : compileHmrHybridCinLog s2Step273Add1Arena 844 830 800 s2Step273Add1A s2Step273Add1B s2Step273Add1Work=some s2Step273Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step273Add1Arena s2Step273Add1During 844 830 800 s2Step273Add1A s2Step273Add1B s2Step273Add1Work
    (by decide +kernel) (by decide +kernel) s2Step273Add1_distinct
    (fun q hq => s2Step273Add1_owned (List.mem_toFinset.mpr hq)) s2Step273Add1_borrowed

private theorem s2Step273F4_apart : Disjoint (s2Step273Add0A++s2Step273Add0B).toFinset (s2Step273Add1A++s2Step273Add1B).toFinset := by
  have nd : ((s2Step273Add0A++s2Step273Add0B)++(s2Step273Add1A++s2Step273Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step273F4_carry : s2Step273F4FlagArena.checkBorrow 1 [800]=some s2Step273Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step273F4FlagArena,s2Step273HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step273F4FlagArena,s2Step273HeadFvAfter,s2Step273Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step273F4_distinct : (851::844::830::800::((s2Step273Add0A++s2Step273Add1A)++(s2Step273Add0B++s2Step273Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273F4_flag : s2Step273HeadFvAfter.checkBorrow 1 [830]=some s2Step273F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step273HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step273F4_owned : (851::844::((s2Step273Add0A++s2Step273Add1A)++(s2Step273Add0B++s2Step273Add1B))).toFinset⊆s2Step273HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step273HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273F4_checked : compileHmrHybridF4Log s2Step273HeadFvAfter 851 844 s2Step273Add0A s2Step273Add0B s2Step273Add1A s2Step273Add1B [830] [800] s2Step273Add0Work s2Step273Add1Work=some s2Step273F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step273HeadFvAfter s2Step273F4FlagArena s2Step273Add0Arena s2Step273Add0During s2Step273Add1During 851 844
    s2Step273Add0A s2Step273Add0B s2Step273Add1A s2Step273Add1B [830] [800] s2Step273Add0Work s2Step273Add1Work
    (fun q hq => s2Step273F4_owned (List.mem_toFinset.mpr hq)) s2Step273F4_flag s2Step273F4_carry
    s2Step273F4_distinct s2Step273F4_apart s2Step273Add0_checked s2Step273Add1_checked

private theorem s2Step273Front_branch : s2Step273FrontSigmaArena.checkBorrow 1 [844]=some s2Step273HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step273FrontSigmaArena,s2Step273EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step273FrontSigmaArena,s2Step273EntryGvAfter,s2Step273HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step273Front_entry : HmrFrontEntryValid s2Step273EntryFBefore s2Step273FrontBank 135 152 ⟨134,134,152,152⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step273FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step273EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step273EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step273FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step273Front_sigma : s2Step273EntryGvAfter.checkBorrow 1 [851]=some s2Step273FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step273EntryGvAfter,arenaWires]
  · rfl

private def s2Step273HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273HeadFBefore : Arena := s2Step273HeadGAfter

private def s2Step273HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 816],768⟩

private def s2Step273HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786],770⟩

private def s2Step273HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],769⟩

private def s2Step273HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822],771⟩

private theorem s2Step273HeadBank_incomingDistinct : ([s2Step273HeadGRow,s2Step273HeadFRow,s2Step273HeadGvRow,s2Step273HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273HeadF_Incoming : rowsOwned s2Step273HeadFBefore [s2Step273HeadFRow,s2Step273HeadGvRow,s2Step273HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step273HeadGRow,s2Step273HeadFRow,s2Step273HeadGvRow,s2Step273HeadFvRow] 1 s2Step273HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step273HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step273HeadBank_outgoingOwned : rowsOwned s2Step273HeadFvAfter [s2Step273HeadGOut,s2Step273HeadFOut,s2Step273HeadGvOut,s2Step273HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step273HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step273HeadF_Outgoing : rowsOwned s2Step273HeadFvAfter [s2Step273HeadFOut,s2Step273HeadGvOut,s2Step273HeadFvOut] :=
  hmrRows_owned_drop s2Step273HeadFvAfter [s2Step273HeadGOut,s2Step273HeadFOut,s2Step273HeadGvOut,s2Step273HeadFvOut] 1 s2Step273HeadBank_outgoingOwned

private theorem s2Step273HeadF_distinct : (s2Step273HeadFRow.sign::s2Step273HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273HeadF_owned : (s2Step273HeadFRow.sign::s2Step273HeadFRow.payload).toFinset⊆s2Step273HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step273HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273HeadF_reserved : s2Step273HeadFBefore.reserve s2Step273HeadFFresh.toFinset=some s2Step273HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step273HeadFFresh,arenaWires]
  · norm_num [s2Step273HeadFBefore,s2Step273HeadGAfter,s2Step273HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step273HeadFAfter,s2Step273HeadFBefore,s2Step273HeadGAfter,s2Step273HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step273HeadF_checked : planRowResizeLog s2Step273HeadFBefore s2Step273HeadFRow 136 s2Step273HeadFFresh=
    some (s2Step273HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 816, 781],768⟩,growRow 768 s2Step273HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step273HeadFBefore s2Step273HeadFAfter s2Step273HeadFRow 136 s2Step273HeadFFresh
    s2Step273HeadF_distinct s2Step273HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step273HeadF_reserved
  have rowEq : WindowRow.mk (s2Step273HeadFRow.payload++s2Step273HeadFFresh) s2Step273HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 816, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step273HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step273HeadFvBefore : Arena := s2Step273HeadGvAfter

private theorem s2Step273HeadFv_Incoming : rowsOwned s2Step273HeadFvBefore [s2Step273HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step273HeadGRow,s2Step273HeadFRow,s2Step273HeadGvRow,s2Step273HeadFvRow] 3 s2Step273HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step273HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step273HeadFv_Outgoing : rowsOwned s2Step273HeadFvAfter [s2Step273HeadFvOut] :=
  hmrRows_owned_drop s2Step273HeadFvAfter [s2Step273HeadGOut,s2Step273HeadFOut,s2Step273HeadGvOut,s2Step273HeadFvOut] 3 s2Step273HeadBank_outgoingOwned

private theorem s2Step273HeadFv_distinct : (s2Step273HeadFvRow.sign::s2Step273HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273HeadFv_owned : (s2Step273HeadFvRow.sign::s2Step273HeadFvRow.payload).toFinset⊆s2Step273HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step273HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273HeadFv_reserved : s2Step273HeadFvBefore.reserve s2Step273HeadFvFresh.toFinset=some s2Step273HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step273HeadFvFresh,arenaWires]
  · norm_num [s2Step273HeadFvBefore,s2Step273HeadGvAfter,s2Step273HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step273HeadFvAfter,s2Step273HeadFvBefore,s2Step273HeadGvAfter,s2Step273HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step273HeadFv_checked : planRowResizeLog s2Step273HeadFvBefore s2Step273HeadFvRow 153 s2Step273HeadFvFresh=
    some (s2Step273HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 841],770⟩,growRow 770 s2Step273HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step273HeadFvBefore s2Step273HeadFvAfter s2Step273HeadFvRow 153 s2Step273HeadFvFresh
    s2Step273HeadFv_distinct s2Step273HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step273HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step273HeadFvRow.payload++s2Step273HeadFvFresh) s2Step273HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 841],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step273HeadG_Incoming : rowsOwned s2Step273HeadGBefore [s2Step273HeadGRow,s2Step273HeadFRow,s2Step273HeadGvRow,s2Step273HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step273HeadGRow,s2Step273HeadFRow,s2Step273HeadGvRow,s2Step273HeadFvRow] 0 s2Step273HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step273HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step273HeadG_Outgoing : rowsOwned s2Step273HeadFvAfter [s2Step273HeadGOut,s2Step273HeadFOut,s2Step273HeadGvOut,s2Step273HeadFvOut] :=
  hmrRows_owned_drop s2Step273HeadFvAfter [s2Step273HeadGOut,s2Step273HeadFOut,s2Step273HeadGvOut,s2Step273HeadFvOut] 0 s2Step273HeadBank_outgoingOwned

private theorem s2Step273HeadG_distinct : (s2Step273HeadGRow.sign::s2Step273HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273HeadG_owned : (s2Step273HeadGRow.sign::s2Step273HeadGRow.payload).toFinset⊆s2Step273HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step273HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273HeadG_reserved : s2Step273HeadGBefore.reserve s2Step273HeadGFresh.toFinset=some s2Step273HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step273HeadGFresh,arenaWires]
  · norm_num [s2Step273HeadGBefore,s2Step273HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step273HeadGAfter,s2Step273HeadGBefore,s2Step273HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step273HeadG_checked : planRowResizeLog s2Step273HeadGBefore s2Step273HeadGRow 136 s2Step273HeadGFresh=
    some (s2Step273HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 891],769⟩,growRow 769 s2Step273HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step273HeadGBefore s2Step273HeadGAfter s2Step273HeadGRow 136 s2Step273HeadGFresh
    s2Step273HeadG_distinct s2Step273HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step273HeadG_reserved
  have rowEq : WindowRow.mk (s2Step273HeadGRow.payload++s2Step273HeadGFresh) s2Step273HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 891],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step273HeadGvBefore : Arena := s2Step273HeadFAfter

private theorem s2Step273HeadGv_Incoming : rowsOwned s2Step273HeadGvBefore [s2Step273HeadGvRow,s2Step273HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step273HeadGRow,s2Step273HeadFRow,s2Step273HeadGvRow,s2Step273HeadFvRow] 2 s2Step273HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step273HeadGvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step273HeadGv_Outgoing : rowsOwned s2Step273HeadFvAfter [s2Step273HeadGvOut,s2Step273HeadFvOut] :=
  hmrRows_owned_drop s2Step273HeadFvAfter [s2Step273HeadGOut,s2Step273HeadFOut,s2Step273HeadGvOut,s2Step273HeadFvOut] 2 s2Step273HeadBank_outgoingOwned

private theorem s2Step273HeadGv_distinct : (s2Step273HeadGvRow.sign::s2Step273HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step273HeadGv_owned : (s2Step273HeadGvRow.sign::s2Step273HeadGvRow.payload).toFinset⊆s2Step273HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step273HeadGvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step273HeadGv_reserved : s2Step273HeadGvBefore.reserve s2Step273HeadGvFresh.toFinset=some s2Step273HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step273HeadGvFresh,arenaWires]
  · norm_num [s2Step273HeadGvBefore,s2Step273HeadFAfter,s2Step273HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step273HeadGvAfter,s2Step273HeadGvBefore,s2Step273HeadFAfter,s2Step273HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step273HeadGv_checked : planRowResizeLog s2Step273HeadGvBefore s2Step273HeadGvRow 153 s2Step273HeadGvFresh=
    some (s2Step273HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 788],771⟩,growRow 771 s2Step273HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step273HeadGvBefore s2Step273HeadGvAfter s2Step273HeadGvRow 153 s2Step273HeadGvFresh
    s2Step273HeadGv_distinct s2Step273HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step273HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step273HeadGvRow.payload++s2Step273HeadGvFresh) s2Step273HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 788],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step273HeadBank_rows : planWindowRowsLog s2Step273HeadGBefore [(s2Step273HeadGRow,136),(s2Step273HeadFRow,136),(s2Step273HeadGvRow,153),(s2Step273HeadFvRow,153)] [s2Step273HeadGFresh,s2Step273HeadFFresh,s2Step273HeadGvFresh,s2Step273HeadFvFresh]=
    some (s2Step273HeadFvAfter,[s2Step273HeadGOut,s2Step273HeadFOut,s2Step273HeadGvOut,s2Step273HeadFvOut],(growRow 769 s2Step273HeadGFresh ++ (growRow 768 s2Step273HeadFFresh ++ (growRow 771 s2Step273HeadGvFresh ++ (growRow 770 s2Step273HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step273HeadFvAfter [] []=some (s2Step273HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step273HeadFvBefore s2Step273HeadFvAfter s2Step273HeadFvAfter
    s2Step273HeadFvRow s2Step273HeadFvOut 153 s2Step273HeadFvFresh [] [] []
    (growRow 770 s2Step273HeadFvFresh) ([]) s2Step273HeadFv_Incoming s2Step273HeadFv_checked h4 s2Step273HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step273HeadGvBefore s2Step273HeadGvAfter s2Step273HeadFvAfter
    s2Step273HeadGvRow s2Step273HeadGvOut 153 s2Step273HeadGvFresh [(s2Step273HeadFvRow,153)] [s2Step273HeadFvFresh] [s2Step273HeadFvOut]
    (growRow 771 s2Step273HeadGvFresh) ((growRow 770 s2Step273HeadFvFresh ++ [])) s2Step273HeadGv_Incoming s2Step273HeadGv_checked h3 s2Step273HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step273HeadFBefore s2Step273HeadFAfter s2Step273HeadFvAfter
    s2Step273HeadFRow s2Step273HeadFOut 136 s2Step273HeadFFresh [(s2Step273HeadGvRow,153),(s2Step273HeadFvRow,153)] [s2Step273HeadGvFresh,s2Step273HeadFvFresh] [s2Step273HeadGvOut,s2Step273HeadFvOut]
    (growRow 768 s2Step273HeadFFresh) ((growRow 771 s2Step273HeadGvFresh ++ (growRow 770 s2Step273HeadFvFresh ++ []))) s2Step273HeadF_Incoming s2Step273HeadF_checked h2 s2Step273HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step273HeadGBefore s2Step273HeadGAfter s2Step273HeadFvAfter
    s2Step273HeadGRow s2Step273HeadGOut 136 s2Step273HeadGFresh [(s2Step273HeadFRow,136),(s2Step273HeadGvRow,153),(s2Step273HeadFvRow,153)] [s2Step273HeadFFresh,s2Step273HeadGvFresh,s2Step273HeadFvFresh] [s2Step273HeadFOut,s2Step273HeadGvOut,s2Step273HeadFvOut]
    (growRow 769 s2Step273HeadGFresh) ((growRow 768 s2Step273HeadFFresh ++ (growRow 771 s2Step273HeadGvFresh ++ (growRow 770 s2Step273HeadFvFresh ++ [])))) s2Step273HeadG_Incoming s2Step273HeadG_checked h1 s2Step273HeadG_Outgoing
  exact h0

private theorem s2Step273HeadBank_checked : compileHmrBankResizeLog .headroom s2Step273HeadGBefore ⟨s2Step273HeadFRow,s2Step273HeadGRow,s2Step273HeadFvRow,s2Step273HeadGvRow⟩ ⟨136,136,153,153⟩ [s2Step273HeadGFresh,s2Step273HeadFFresh,s2Step273HeadGvFresh,s2Step273HeadFvFresh]=
    some (s2Step273HeadFvAfter,⟨s2Step273HeadFOut,s2Step273HeadGOut,s2Step273HeadFvOut,s2Step273HeadGvOut⟩,(growRow 769 s2Step273HeadGFresh ++ (growRow 768 s2Step273HeadFFresh ++ (growRow 771 s2Step273HeadGvFresh ++ (growRow 770 s2Step273HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step273HeadBank_rows]
  rfl

private theorem s2Step273Front_checked : compileHmrSourceFrontLog s2Step273EntryFBefore s2Step273FrontBank 135 152 ⟨134,134,152,152⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step273FrontLog=some s2Step273FrontPlan := by
  have pairEq : s2Step273FrontPair=⟨s2Step273HeadFRow,s2Step273HeadGRow,s2Step273HeadFvRow,s2Step273HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step273FrontHead=⟨s2Step273ExitFRow,s2Step273ExitGRow,s2Step273ExitFvRow,s2Step273ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step273Add0A=s2Step273FrontHead.f.wires := by decide +kernel
  have gEq : s2Step273Add0B=s2Step273FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step273Add1A=s2Step273FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step273Add1B=s2Step273FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step273EntryFBefore s2Step273FrontBank 135 152 ⟨134,134,152,152⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step273FrontLog s2Step273FrontPlan
  · exact s2Step273Front_entry
  · exact s2Step273EntryBank_checked
  · exact s2Step273Front_sigma
  · rfl
  · exact s2Step273Front_branch
  · rfl
  · simpa only [s2Step273FrontPlan,pairEq] using s2Step273HeadBank_checked
  · simpa only [s2Step273FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step273F4_checked
  · exact s2Step273Counter_checked
  · rfl
  · simpa only [s2Step273FrontPlan,headEq] using s2Step273ExitBank_checked

private theorem s2Step273Complete_explicit_checked : compileHmrEarlyStepLog s2Step273EntryFBefore s2Step273FrontBank 135 152 ⟨134,134,152,152⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step273CompleteLog=some s2Step273CompletePlan := by
  let Q := s2Step273EarlyControlPlan
  have hq := s2Step273EarlyControl_plan_checked
  have fv1 : s2Step273CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step273CompleteOut.fv.payload[2]?.getD s2Step273CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step273CompleteOut.fv.payload[3]?.getD s2Step273CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step273CompleteOut.fv.payload[4]?.getD s2Step273CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step273EntryFBefore s2Step273EarlyControlArena s2Step273FrontBank 135 152 ⟨134,134,152,152⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step273CompleteLog s2Step273FrontPlan Q
    s2Step273Front_checked s2Step273Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step273Complete_owned s2Step273Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step273EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 851 s2Step273CompleteOut.fv.second (s2Step273CompleteOut.fv.payload[2]?.getD s2Step273CompleteOut.fv.sign) (s2Step273CompleteOut.fv.payload[3]?.getD s2Step273CompleteOut.fv.sign) (s2Step273CompleteOut.fv.payload[4]?.getD s2Step273CompleteOut.fv.sign) 844 53 s2Step273EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep273Arena : Arena := s2Step273EntryFBefore
def s2PrivateStep273Bank : WindowBank := s2Step273FrontBank
def s2PrivateStep273Spec : HmrSourceWalkStepLog := ⟨135,152,⟨134,134,152,152⟩,53,.early s2Step273CompleteLog⟩
def s2PrivateStep273Plan : HmrSourceStepPlan := .early s2Step273CompletePlan
theorem s2PrivateStep273_source : s2PrivateStep273Spec=s2ObservedLogs272[1] := rfl
theorem s2PrivateStep273_checked : compileHmrSourceStepLog s2PrivateStep273Arena s2PrivateStep273Bank
    s2PrivateStep273Spec.fgWidth s2PrivateStep273Spec.vWidth s2PrivateStep273Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]
    6 498 273 s2PrivateStep273Spec.need none s2PrivateStep273Spec.log=some s2PrivateStep273Plan := by
  change compileHmrSourceStepLog s2Step273EntryFBefore s2Step273FrontBank 135 152 ⟨134,134,152,152⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 6 498 273 53 none (.early s2Step273CompleteLog)=some (.early s2Step273CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 273<498)]
  rw [s2Step273Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
