import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep269
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

private def s2Step271CompleteMoves : List (Wire × Wire) := [(781,135)]

private def s2Step271EarlyControlLog : HmrEarlyControlLog := ⟨[781, 891, 844, 786, 788],[841],[830],[800, 894, 896, 901, 903, 904],[]⟩

private def s2Step271FrontLog : HmrFrontAllocationLog := ⟨⟨[[786], [], [], []],[[841], [788], [891], [844]],[[], [], [], []]⟩,[816],[822],[830],[800],[894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step271CompleteLog : HmrEarlyStepLog := ⟨s2Step271FrontLog,s2Step271CompleteMoves,s2Step271EarlyControlLog⟩

private def s2Step271ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646],768⟩

private def s2Step271ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836],770⟩

private def s2Step271ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],769⟩

private def s2Step271ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩

private def s2Step271FrontOut : WindowBank := ⟨s2Step271ExitFOut,s2Step271ExitGOut,s2Step271ExitFvOut,s2Step271ExitGvOut⟩

private def s2Step271CompleteOut : WindowBank := s2Step271FrontOut.repacked s2Step271CompleteMoves

private def s2Step271EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step271EarlyControlPositiveArena,[841],s2Step271EarlyControlEqualityArena,[830],⟨⟨816,false⟩,[⟨⟨841,false⟩,830⟩]⟩⟩

private def s2Step271EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,781⟩,⟨⟨774,false⟩,891⟩,⟨⟨775,false⟩,844⟩,⟨⟨776,false⟩,786⟩,⟨⟨777,false⟩,788⟩]⟩

private def s2Step271EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step271EarlyControlZeroArena,s2Step271EarlyControlZeroPlan,s2Step271EarlyControlClassPlan,s2Step271EarlyControlFlagArena,s2Step271EarlyControlFittedArena,s2Step271EarlyControlHistoryArena,s2Step271EarlyControlSigmaArena,s2Step271EarlyControlOutputArena,s2Step271EarlyControlLog⟩

private def s2Step271CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step271Counter_bounded : s2Step271CounterWork.toFinset⊆arenaWires := by norm_num [s2Step271CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step271HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271CounterDuring : Arena := ⟨s2Step271HeadFvAfter.live∪s2Step271CounterWork.toFinset,Finset.union_subset s2Step271HeadFvAfter.bounded s2Step271Counter_bounded⟩

private def s2Step271EntryFFresh : List Wire := [786]

private def s2Step271EntryFvFresh : List Wire := []

private def s2Step271EntryGFresh : List Wire := []

private def s2Step271EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271EntryGvAfter : Arena := s2Step271EntryFAfter

private def s2Step271EntryGvFresh : List Wire := []

private def s2Step271ExitFExtra : List Wire := [786, 788]

private def s2Step271ExitFvExtra : List Wire := [844]

private def s2Step271ExitGExtra : List Wire := [135, 841]

private def s2Step271ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271ExitGvExtra : List Wire := [891]

private def s2Step271Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271Add0Work : List Wire := [894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step271Add0_bounded : s2Step271Add0Work.toFinset⊆arenaWires := by
  have h : s2Step271Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step271Add0During : Arena := ⟨s2Step271Add0Arena.live∪s2Step271Add0Work.toFinset,Finset.union_subset s2Step271Add0Arena.bounded s2Step271Add0_bounded⟩

private def s2Step271Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271Add1Work : List Wire := [894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step271Add1_bounded : s2Step271Add1Work.toFinset⊆arenaWires := by
  have h : s2Step271Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step271Add1During : Arena := ⟨s2Step271Add1Arena.live∪s2Step271Add1Work.toFinset,Finset.union_subset s2Step271Add1Arena.bounded s2Step271Add1_bounded⟩

private def s2Step271F4FlagArena : Arena := ⟨s2Step271HeadFvAfter.live∪{830},Finset.union_subset s2Step271HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step271F4Plan : HmrHybridF4Plan := ⟨s2Step271F4FlagArena,[830],s2Step271Add0Arena,[800],s2Step271Add0During,s2Step271Add0Work,s2Step271Add1During,s2Step271Add1Work⟩

private def s2Step271HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 786, 788],768⟩

private def s2Step271HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 844],770⟩

private def s2Step271HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 841],769⟩

private def s2Step271HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 891],771⟩

private def s2Step271FrontHead : WindowBank := ⟨s2Step271HeadFOut,s2Step271HeadGOut,s2Step271HeadFvOut,s2Step271HeadGvOut⟩

private def s2Step271EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 786],768⟩

private def s2Step271EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836],770⟩

private def s2Step271EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],769⟩

private def s2Step271EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩

private def s2Step271FrontPair : WindowBank := ⟨s2Step271EntryFOut,s2Step271EntryGOut,s2Step271EntryFvOut,s2Step271EntryGvOut⟩

private def s2Step271FrontSigmaArena : Arena := ⟨s2Step271EntryGvAfter.live∪{816},Finset.union_subset s2Step271EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step271HeadFFresh : List Wire := [788]

private def s2Step271HeadFvFresh : List Wire := [844]

private def s2Step271HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271HeadGFresh : List Wire := [841]

private def s2Step271HeadGvFresh : List Wire := [891]

private def s2Step271FrontPlan : HmrSourceFront := ⟨s2Step271EntryGvAfter,s2Step271FrontPair,(growRow 768 s2Step271EntryFFresh ++ (growRow 769 s2Step271EntryGFresh ++ (growRow 770 s2Step271EntryFvFresh ++ (growRow 771 s2Step271EntryGvFresh ++ [])))),s2Step271FrontSigmaArena,[816],s2Step271HeadGBefore,[822],
  s2Step271HeadFvAfter,s2Step271FrontHead,(growRow 769 s2Step271HeadGFresh ++ (growRow 768 s2Step271HeadFFresh ++ (growRow 771 s2Step271HeadGvFresh ++ (growRow 770 s2Step271HeadFvFresh ++ [])))),s2Step271F4Plan,s2Step271CounterDuring,s2Step271CounterWork,s2Step271ExitGvAfter,s2Step271FrontOut,(shrinkRow 769 s2Step271ExitGExtra ++ (shrinkRow 768 s2Step271ExitFExtra ++ (shrinkRow 770 s2Step271ExitFvExtra ++ (shrinkRow 771 s2Step271ExitGvExtra ++ []))))⟩

private def s2Step271CompletePlan : HmrEarlyStepPlan := ⟨s2Step271FrontPlan,s2Step271EarlyControlArena,s2Step271EarlyControlPlan,s2Step271CompleteMoves⟩

private theorem s2Step271Complete_apart : List.Disjoint (s2Step271CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [816, 822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] := by
  have nd : ((s2Step271CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[816, 822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step271Complete_owned : (s2Step271CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step271EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step271EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step271CompleteMoveArena : Arena := ⟨s2Step271ExitGvAfter.live∪{135},Finset.union_subset s2Step271ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step271Complete_repack : s2Step271ExitGvAfter.checkRepack s2Step271CompleteMoves=some s2Step271EarlyControlArena := by
  have owned : 781∈s2Step271ExitGvAfter.live := by norm_num [s2Step271ExitGvAfter,arenaWires]
  have reserve : s2Step271ExitGvAfter.reserve {135}=some s2Step271CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step271ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step271CompleteMoveArena.retireSet {781}=s2Step271EarlyControlArena := by
    unfold Arena.retireSet s2Step271EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step271CompleteMoveArena,s2Step271ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step271CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step271CompleteMoveArena.retireSet {781}).checkRepack []=some s2Step271EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step271EarlyControl_branchOwned : ([822] : List Wire).toFinset⊆s2Step271EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step271EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271EarlyControl_branch : compileHmrBranchRetirement s2Step271EarlyControlSigmaArena 822=some s2Step271EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step271EarlyControl_branchOwned
  · ext q
    simp [s2Step271EarlyControlOutputArena,s2Step271EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step271EarlyControl_classEqualityBorrow : s2Step271EarlyControlPositiveArena.checkBorrow (([816, 841] : List Wire).length-1) s2Step271EarlyControlLog.classWork=some s2Step271EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step271EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step271EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step271EarlyControlEqualityArena,s2Step271EarlyControlPositiveArena,s2Step271EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step271EarlyControl_classEqualityOwned : ([816, 841] : List Wire).toFinset⊆s2Step271EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step271EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271EarlyControl_classEquality : compileHmrEqualityLog s2Step271EarlyControlPositiveArena [816, 841] 0 s2Step271EarlyControlLog.classWork=some (s2Step271EarlyControlEqualityArena,s2Step271EarlyControlLog.classWork,s2Step271EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step271EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step271EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step271EarlyControl_classOwned : ([777, 788, 816] : List Wire).toFinset⊆s2Step271EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step271EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271EarlyControl_positiveBorrow : s2Step271EarlyControlZeroArena.checkBorrow (1) s2Step271EarlyControlLog.positiveWork=some s2Step271EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step271EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step271EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step271EarlyControlPositiveArena,s2Step271EarlyControlZeroArena,s2Step271EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step271EarlyControl_class : compileHmrSourceClassLog s2Step271EarlyControlZeroArena false 777 s2Step271EarlyControlZeroPlan.top 0 816 s2Step271EarlyControlLog.positiveWork s2Step271EarlyControlLog.classWork=some s2Step271EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step271EarlyControlClassPlan s2Step271EarlyControlZeroArena false 777 s2Step271EarlyControlZeroPlan.top 0 816
  constructor
  · decide +kernel
  · exact s2Step271EarlyControl_classOwned
  · exact s2Step271EarlyControl_positiveBorrow
  · exact s2Step271EarlyControl_classEquality

private theorem s2Step271EarlyControl_entryRecordOwned : ([822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step271EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step271EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271EarlyControl_entrySigmaOwned : ([816, 254] : List Wire).toFinset⊆s2Step271EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step271EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271EarlyControl_fitBorrow : s2Step271EarlyControlFlagArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step271EarlyControlLog.recordFresh=some s2Step271EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step271EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step271EarlyControlFlagArena (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step271EarlyControlFittedArena,s2Step271EarlyControlFlagArena,s2Step271EarlyControlLog,arenaWires]

private theorem s2Step271EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step271EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step271EarlyControlFlagArena (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271EarlyControl_fit : compileHmrRecordGrowLog s2Step271EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step271EarlyControlLog.recordFresh=some s2Step271EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step271EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step271EarlyControl_fitBorrow

private theorem s2Step271EarlyControl_flagsBorrow : s2Step271EarlyControlEqualityArena.checkBorrow (6) s2Step271EarlyControlLog.flagWork=some s2Step271EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step271EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step271EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step271EarlyControlFlagArena,s2Step271EarlyControlEqualityArena,s2Step271EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step271EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s2Step271EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step271EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271EarlyControl_flags : compileHmrFlagsLog s2Step271EarlyControlClassPlan.equalityArena s2Step271EarlyControlClassPlan.equality.top 253 252 251 s2Step271EarlyControlLog.flagWork=some s2Step271EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step271EarlyControl_flagsOwned⟩
  · exact s2Step271EarlyControl_flagsBorrow

private theorem s2Step271EarlyControl_historyBorrow : s2Step271EarlyControlArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step271EarlyControlLog.recordFresh=some s2Step271EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step271EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step271EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step271EarlyControlHistoryArena,s2Step271EarlyControlArena,s2Step271EarlyControlLog,arenaWires]

private theorem s2Step271EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step271EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step271EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271EarlyControl_history : compileHmrRecordGrowLog s2Step271EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step271EarlyControlLog.recordFresh=some s2Step271EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step271EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step271EarlyControl_historyBorrow

private theorem s2Step271EarlyControl_sigmaOwned : ([254, 816] : List Wire).toFinset⊆s2Step271EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step271EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271EarlyControl_sigmaReleaseOwned : ([816] : List Wire).toFinset⊆s2Step271EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step271EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271EarlyControl_sigmaRelease : s2Step271EarlyControlHistoryArena.release {816} (fun _ => false)=some s2Step271EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step271EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step271EarlyControlSigmaArena,s2Step271EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step271EarlyControl_sigma : compileHmrSigmaDropLog s2Step271EarlyControlHistoryArena false 0 0 254 816 []=some s2Step271EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step271EarlyControl_sigmaOwned⟩
  · exact s2Step271EarlyControl_sigmaRelease

private theorem s2Step271EarlyControl_zeroBorrow : s2Step271EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step271EarlyControlLog.zeroWork=some s2Step271EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step271EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step271EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step271EarlyControlZeroArena,s2Step271EarlyControlArena,s2Step271EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step271EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step271EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step271EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271EarlyControl_zero : compileHmrEqualityLog s2Step271EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step271EarlyControlLog.zeroWork=some (s2Step271EarlyControlZeroArena,s2Step271EarlyControlLog.zeroWork,s2Step271EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step271EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step271EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step271EarlyControl_logged : s2Step271EarlyControlPlan.Logged s2Step271EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 816 254 253 252 251 822 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step271EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step271EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step271EarlyControl_zero
  · exact s2Step271EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step271EarlyControl_flags
  · exact s2Step271EarlyControl_fit
  · exact s2Step271EarlyControl_history
  · exact s2Step271EarlyControl_sigma
  · exact s2Step271EarlyControl_branch

private theorem s2Step271EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step271EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 816 254 253 252 251 822 53 s2Step271EarlyControlLog=some s2Step271EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step271EarlyControlPlan s2Step271EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 816 254 253 252 251 822 53 s2Step271EarlyControl_logged

private def s2Step271EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646],768⟩

private def s2Step271EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836],770⟩

private def s2Step271EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],769⟩

private def s2Step271EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩

private def s2Step271FrontBank : WindowBank := ⟨s2Step271EntryFRow,s2Step271EntryGRow,s2Step271EntryFvRow,s2Step271EntryGvRow⟩

private def s2Step271Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 786, 788, 768]

private def s2Step271Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 841, 769]

private def s2Step271Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 844, 770]

private def s2Step271Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 891, 771]

private theorem s2Step271Counter_apart : Disjoint s2Step271HeadFvAfter.live s2Step271CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step271HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271Counter_borrowed : s2Step271HeadFvAfter.checkBorrow 4 s2Step271CounterWork=some s2Step271CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step271HeadFvAfter s2Step271CounterDuring s2Step271CounterWork.toFinset s2Step271Counter_bounded s2Step271Counter_apart rfl

private theorem s2Step271Counter_owned : (816::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step271HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step271HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271Counter_checked : compileHmrCounterStepLog s2Step271HeadFvAfter true 816 [772, 773, 774, 775, 776, 777] s2Step271CounterWork=some s2Step271CounterDuring := by
  have owned : ∀q∈816::[772, 773, 774, 775, 776, 777],q∈s2Step271HeadFvAfter.live := fun q hq => s2Step271Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step271Counter_borrowed

private theorem s2Step271EntryBank_incomingDistinct : ([s2Step271EntryFRow,s2Step271EntryGRow,s2Step271EntryFvRow,s2Step271EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271EntryF_Incoming : rowsOwned s2Step271EntryFBefore [s2Step271EntryFRow,s2Step271EntryGRow,s2Step271EntryFvRow,s2Step271EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step271EntryFRow,s2Step271EntryGRow,s2Step271EntryFvRow,s2Step271EntryGvRow] 0 s2Step271EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step271EntryFBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step271EntryBank_outgoingOwned : rowsOwned s2Step271EntryGvAfter [s2Step271EntryFOut,s2Step271EntryGOut,s2Step271EntryFvOut,s2Step271EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step271EntryGvAfter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step271EntryF_Outgoing : rowsOwned s2Step271EntryGvAfter [s2Step271EntryFOut,s2Step271EntryGOut,s2Step271EntryFvOut,s2Step271EntryGvOut] :=
  hmrRows_owned_drop s2Step271EntryGvAfter [s2Step271EntryFOut,s2Step271EntryGOut,s2Step271EntryFvOut,s2Step271EntryGvOut] 0 s2Step271EntryBank_outgoingOwned

private theorem s2Step271EntryF_distinct : (s2Step271EntryFRow.sign::s2Step271EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271EntryF_owned : (s2Step271EntryFRow.sign::s2Step271EntryFRow.payload).toFinset⊆s2Step271EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step271EntryFBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271EntryF_reserved : s2Step271EntryFBefore.reserve s2Step271EntryFFresh.toFinset=some s2Step271EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step271EntryFFresh,arenaWires]
  · norm_num [s2Step271EntryFBefore,s2Step271EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step271EntryFAfter,s2Step271EntryFBefore,s2Step271EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step271EntryF_checked : planRowResizeLog s2Step271EntryFBefore s2Step271EntryFRow 136 s2Step271EntryFFresh=
    some (s2Step271EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 786],768⟩,growRow 768 s2Step271EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step271EntryFBefore s2Step271EntryFAfter s2Step271EntryFRow 136 s2Step271EntryFFresh
    s2Step271EntryF_distinct s2Step271EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step271EntryF_reserved
  have rowEq : WindowRow.mk (s2Step271EntryFRow.payload++s2Step271EntryFFresh) s2Step271EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 786],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step271EntryFvAfter : Arena := s2Step271EntryFAfter

private def s2Step271EntryFvBefore : Arena := s2Step271EntryFAfter

private theorem s2Step271EntryFv_Incoming : rowsOwned s2Step271EntryFvBefore [s2Step271EntryFvRow,s2Step271EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step271EntryFRow,s2Step271EntryGRow,s2Step271EntryFvRow,s2Step271EntryGvRow] 2 s2Step271EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step271EntryFvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step271EntryFv_Outgoing : rowsOwned s2Step271EntryGvAfter [s2Step271EntryFvOut,s2Step271EntryGvOut] :=
  hmrRows_owned_drop s2Step271EntryGvAfter [s2Step271EntryFOut,s2Step271EntryGOut,s2Step271EntryFvOut,s2Step271EntryGvOut] 2 s2Step271EntryBank_outgoingOwned

private theorem s2Step271EntryFv_distinct : (s2Step271EntryFvRow.sign::s2Step271EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271EntryFv_owned : (s2Step271EntryFvRow.sign::s2Step271EntryFvRow.payload).toFinset⊆s2Step271EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step271EntryFvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271EntryFv_reserved : s2Step271EntryFvBefore.reserve s2Step271EntryFvFresh.toFinset=some s2Step271EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step271EntryFvFresh,arenaWires]
  · norm_num [s2Step271EntryFvBefore,s2Step271EntryFAfter,s2Step271EntryFvFresh,arenaWires]
  · simp only [s2Step271EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step271EntryFv_checked : planRowResizeLog s2Step271EntryFvBefore s2Step271EntryFvRow 151 s2Step271EntryFvFresh=
    some (s2Step271EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836],770⟩,growRow 770 s2Step271EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step271EntryFvBefore s2Step271EntryFvAfter s2Step271EntryFvRow 151 s2Step271EntryFvFresh
    s2Step271EntryFv_distinct s2Step271EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step271EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step271EntryFvRow.payload++s2Step271EntryFvFresh) s2Step271EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step271EntryGAfter : Arena := s2Step271EntryFAfter

private def s2Step271EntryGBefore : Arena := s2Step271EntryFAfter

private theorem s2Step271EntryG_Incoming : rowsOwned s2Step271EntryGBefore [s2Step271EntryGRow,s2Step271EntryFvRow,s2Step271EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step271EntryFRow,s2Step271EntryGRow,s2Step271EntryFvRow,s2Step271EntryGvRow] 1 s2Step271EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step271EntryGBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step271EntryG_Outgoing : rowsOwned s2Step271EntryGvAfter [s2Step271EntryGOut,s2Step271EntryFvOut,s2Step271EntryGvOut] :=
  hmrRows_owned_drop s2Step271EntryGvAfter [s2Step271EntryFOut,s2Step271EntryGOut,s2Step271EntryFvOut,s2Step271EntryGvOut] 1 s2Step271EntryBank_outgoingOwned

private theorem s2Step271EntryG_distinct : (s2Step271EntryGRow.sign::s2Step271EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271EntryG_owned : (s2Step271EntryGRow.sign::s2Step271EntryGRow.payload).toFinset⊆s2Step271EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step271EntryGBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271EntryG_reserved : s2Step271EntryGBefore.reserve s2Step271EntryGFresh.toFinset=some s2Step271EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step271EntryGFresh,arenaWires]
  · norm_num [s2Step271EntryGBefore,s2Step271EntryFAfter,s2Step271EntryGFresh,arenaWires]
  · simp only [s2Step271EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step271EntryG_checked : planRowResizeLog s2Step271EntryGBefore s2Step271EntryGRow 136 s2Step271EntryGFresh=
    some (s2Step271EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],769⟩,growRow 769 s2Step271EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step271EntryGBefore s2Step271EntryGAfter s2Step271EntryGRow 136 s2Step271EntryGFresh
    s2Step271EntryG_distinct s2Step271EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step271EntryG_reserved
  have rowEq : WindowRow.mk (s2Step271EntryGRow.payload++s2Step271EntryGFresh) s2Step271EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step271EntryGvBefore : Arena := s2Step271EntryFAfter

private theorem s2Step271EntryGv_Incoming : rowsOwned s2Step271EntryGvBefore [s2Step271EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step271EntryFRow,s2Step271EntryGRow,s2Step271EntryFvRow,s2Step271EntryGvRow] 3 s2Step271EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step271EntryGvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step271EntryGv_Outgoing : rowsOwned s2Step271EntryGvAfter [s2Step271EntryGvOut] :=
  hmrRows_owned_drop s2Step271EntryGvAfter [s2Step271EntryFOut,s2Step271EntryGOut,s2Step271EntryFvOut,s2Step271EntryGvOut] 3 s2Step271EntryBank_outgoingOwned

private theorem s2Step271EntryGv_distinct : (s2Step271EntryGvRow.sign::s2Step271EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271EntryGv_owned : (s2Step271EntryGvRow.sign::s2Step271EntryGvRow.payload).toFinset⊆s2Step271EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step271EntryGvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271EntryGv_reserved : s2Step271EntryGvBefore.reserve s2Step271EntryGvFresh.toFinset=some s2Step271EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step271EntryGvFresh,arenaWires]
  · norm_num [s2Step271EntryGvBefore,s2Step271EntryFAfter,s2Step271EntryGvFresh,arenaWires]
  · simp only [s2Step271EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step271EntryGv_checked : planRowResizeLog s2Step271EntryGvBefore s2Step271EntryGvRow 151 s2Step271EntryGvFresh=
    some (s2Step271EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩,growRow 771 s2Step271EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step271EntryGvBefore s2Step271EntryGvAfter s2Step271EntryGvRow 151 s2Step271EntryGvFresh
    s2Step271EntryGv_distinct s2Step271EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step271EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step271EntryGvRow.payload++s2Step271EntryGvFresh) s2Step271EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step271EntryBank_rows : planWindowRowsLog s2Step271EntryFBefore [(s2Step271EntryFRow,136),(s2Step271EntryGRow,136),(s2Step271EntryFvRow,151),(s2Step271EntryGvRow,151)] [s2Step271EntryFFresh,s2Step271EntryGFresh,s2Step271EntryFvFresh,s2Step271EntryGvFresh]=
    some (s2Step271EntryGvAfter,[s2Step271EntryFOut,s2Step271EntryGOut,s2Step271EntryFvOut,s2Step271EntryGvOut],(growRow 768 s2Step271EntryFFresh ++ (growRow 769 s2Step271EntryGFresh ++ (growRow 770 s2Step271EntryFvFresh ++ (growRow 771 s2Step271EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step271EntryGvAfter [] []=some (s2Step271EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step271EntryGvBefore s2Step271EntryGvAfter s2Step271EntryGvAfter
    s2Step271EntryGvRow s2Step271EntryGvOut 151 s2Step271EntryGvFresh [] [] []
    (growRow 771 s2Step271EntryGvFresh) ([]) s2Step271EntryGv_Incoming s2Step271EntryGv_checked h4 s2Step271EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step271EntryFvBefore s2Step271EntryFvAfter s2Step271EntryGvAfter
    s2Step271EntryFvRow s2Step271EntryFvOut 151 s2Step271EntryFvFresh [(s2Step271EntryGvRow,151)] [s2Step271EntryGvFresh] [s2Step271EntryGvOut]
    (growRow 770 s2Step271EntryFvFresh) ((growRow 771 s2Step271EntryGvFresh ++ [])) s2Step271EntryFv_Incoming s2Step271EntryFv_checked h3 s2Step271EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step271EntryGBefore s2Step271EntryGAfter s2Step271EntryGvAfter
    s2Step271EntryGRow s2Step271EntryGOut 136 s2Step271EntryGFresh [(s2Step271EntryFvRow,151),(s2Step271EntryGvRow,151)] [s2Step271EntryFvFresh,s2Step271EntryGvFresh] [s2Step271EntryFvOut,s2Step271EntryGvOut]
    (growRow 769 s2Step271EntryGFresh) ((growRow 770 s2Step271EntryFvFresh ++ (growRow 771 s2Step271EntryGvFresh ++ []))) s2Step271EntryG_Incoming s2Step271EntryG_checked h2 s2Step271EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step271EntryFBefore s2Step271EntryFAfter s2Step271EntryGvAfter
    s2Step271EntryFRow s2Step271EntryFOut 136 s2Step271EntryFFresh [(s2Step271EntryGRow,136),(s2Step271EntryFvRow,151),(s2Step271EntryGvRow,151)] [s2Step271EntryGFresh,s2Step271EntryFvFresh,s2Step271EntryGvFresh] [s2Step271EntryGOut,s2Step271EntryFvOut,s2Step271EntryGvOut]
    (growRow 768 s2Step271EntryFFresh) ((growRow 769 s2Step271EntryGFresh ++ (growRow 770 s2Step271EntryFvFresh ++ (growRow 771 s2Step271EntryGvFresh ++ [])))) s2Step271EntryF_Incoming s2Step271EntryF_checked h1 s2Step271EntryF_Outgoing
  exact h0

private theorem s2Step271EntryBank_checked : compileHmrBankResizeLog .entry s2Step271EntryFBefore ⟨s2Step271EntryFRow,s2Step271EntryGRow,s2Step271EntryFvRow,s2Step271EntryGvRow⟩ ⟨136,136,151,151⟩ [s2Step271EntryFFresh,s2Step271EntryGFresh,s2Step271EntryFvFresh,s2Step271EntryGvFresh]=
    some (s2Step271EntryGvAfter,⟨s2Step271EntryFOut,s2Step271EntryGOut,s2Step271EntryFvOut,s2Step271EntryGvOut⟩,(growRow 768 s2Step271EntryFFresh ++ (growRow 769 s2Step271EntryGFresh ++ (growRow 770 s2Step271EntryFvFresh ++ (growRow 771 s2Step271EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step271EntryBank_rows]
  rfl

private def s2Step271ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271ExitFBefore : Arena := s2Step271ExitGAfter

private def s2Step271ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 786, 788],768⟩

private def s2Step271ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 844],770⟩

private def s2Step271ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 841],769⟩

private def s2Step271ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 891],771⟩

private theorem s2Step271ExitBank_incomingDistinct : ([s2Step271ExitGRow,s2Step271ExitFRow,s2Step271ExitFvRow,s2Step271ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271ExitF_Incoming : rowsOwned s2Step271ExitFBefore [s2Step271ExitFRow,s2Step271ExitFvRow,s2Step271ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step271ExitGRow,s2Step271ExitFRow,s2Step271ExitFvRow,s2Step271ExitGvRow] 1 s2Step271ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step271ExitFBefore (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step271ExitBank_outgoingOwned : rowsOwned s2Step271ExitGvAfter [s2Step271ExitGOut,s2Step271ExitFOut,s2Step271ExitFvOut,s2Step271ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step271ExitGvAfter (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step271ExitF_Outgoing : rowsOwned s2Step271ExitGvAfter [s2Step271ExitFOut,s2Step271ExitFvOut,s2Step271ExitGvOut] :=
  hmrRows_owned_drop s2Step271ExitGvAfter [s2Step271ExitGOut,s2Step271ExitFOut,s2Step271ExitFvOut,s2Step271ExitGvOut] 1 s2Step271ExitBank_outgoingOwned

private theorem s2Step271ExitF_distinct : (s2Step271ExitFRow.sign::s2Step271ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271ExitF_owned : (s2Step271ExitFRow.sign::s2Step271ExitFRow.payload).toFinset⊆s2Step271ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step271ExitFBefore (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271ExitF_retired : s2Step271ExitFBefore.retireSet s2Step271ExitFExtra.toFinset=s2Step271ExitFAfter := by
  unfold Arena.retireSet s2Step271ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step271ExitFBefore,s2Step271ExitGAfter,s2Step271ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step271ExitF_checked : planRowResizeLog s2Step271ExitFBefore s2Step271ExitFRow 135 []=
    some (s2Step271ExitFAfter,s2Step271ExitFOut,shrinkRow 768 s2Step271ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step271ExitFBefore s2Step271ExitFRow 135 s2Step271ExitF_distinct s2Step271ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step271ExitFRow.payload.take 135) s2Step271ExitFRow.sign=s2Step271ExitFOut := by decide +kernel
  have hi : s2Step271ExitFRow.payload.drop 135=s2Step271ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step271ExitF_retired] at result
  exact result

private def s2Step271ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271ExitFvBefore : Arena := s2Step271ExitFAfter

private theorem s2Step271ExitFv_Incoming : rowsOwned s2Step271ExitFvBefore [s2Step271ExitFvRow,s2Step271ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step271ExitGRow,s2Step271ExitFRow,s2Step271ExitFvRow,s2Step271ExitGvRow] 2 s2Step271ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step271ExitFvBefore (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step271ExitFv_Outgoing : rowsOwned s2Step271ExitGvAfter [s2Step271ExitFvOut,s2Step271ExitGvOut] :=
  hmrRows_owned_drop s2Step271ExitGvAfter [s2Step271ExitGOut,s2Step271ExitFOut,s2Step271ExitFvOut,s2Step271ExitGvOut] 2 s2Step271ExitBank_outgoingOwned

private theorem s2Step271ExitFv_distinct : (s2Step271ExitFvRow.sign::s2Step271ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271ExitFv_owned : (s2Step271ExitFvRow.sign::s2Step271ExitFvRow.payload).toFinset⊆s2Step271ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step271ExitFvBefore (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271ExitFv_retired : s2Step271ExitFvBefore.retireSet s2Step271ExitFvExtra.toFinset=s2Step271ExitFvAfter := by
  unfold Arena.retireSet s2Step271ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step271ExitFvBefore,s2Step271ExitFAfter,s2Step271ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step271ExitFv_checked : planRowResizeLog s2Step271ExitFvBefore s2Step271ExitFvRow 151 []=
    some (s2Step271ExitFvAfter,s2Step271ExitFvOut,shrinkRow 770 s2Step271ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step271ExitFvBefore s2Step271ExitFvRow 151 s2Step271ExitFv_distinct s2Step271ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step271ExitFvRow.payload.take 151) s2Step271ExitFvRow.sign=s2Step271ExitFvOut := by decide +kernel
  have hi : s2Step271ExitFvRow.payload.drop 151=s2Step271ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step271ExitFv_retired] at result
  exact result

private def s2Step271ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step271ExitG_Incoming : rowsOwned s2Step271ExitGBefore [s2Step271ExitGRow,s2Step271ExitFRow,s2Step271ExitFvRow,s2Step271ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step271ExitGRow,s2Step271ExitFRow,s2Step271ExitFvRow,s2Step271ExitGvRow] 0 s2Step271ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step271ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step271ExitG_Outgoing : rowsOwned s2Step271ExitGvAfter [s2Step271ExitGOut,s2Step271ExitFOut,s2Step271ExitFvOut,s2Step271ExitGvOut] :=
  hmrRows_owned_drop s2Step271ExitGvAfter [s2Step271ExitGOut,s2Step271ExitFOut,s2Step271ExitFvOut,s2Step271ExitGvOut] 0 s2Step271ExitBank_outgoingOwned

private theorem s2Step271ExitG_distinct : (s2Step271ExitGRow.sign::s2Step271ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271ExitG_owned : (s2Step271ExitGRow.sign::s2Step271ExitGRow.payload).toFinset⊆s2Step271ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step271ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271ExitG_retired : s2Step271ExitGBefore.retireSet s2Step271ExitGExtra.toFinset=s2Step271ExitGAfter := by
  unfold Arena.retireSet s2Step271ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step271ExitGBefore,s2Step271ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step271ExitG_checked : planRowResizeLog s2Step271ExitGBefore s2Step271ExitGRow 135 []=
    some (s2Step271ExitGAfter,s2Step271ExitGOut,shrinkRow 769 s2Step271ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step271ExitGBefore s2Step271ExitGRow 135 s2Step271ExitG_distinct s2Step271ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step271ExitGRow.payload.take 135) s2Step271ExitGRow.sign=s2Step271ExitGOut := by decide +kernel
  have hi : s2Step271ExitGRow.payload.drop 135=s2Step271ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step271ExitG_retired] at result
  exact result

private def s2Step271ExitGvBefore : Arena := s2Step271ExitFvAfter

private theorem s2Step271ExitGv_Incoming : rowsOwned s2Step271ExitGvBefore [s2Step271ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step271ExitGRow,s2Step271ExitFRow,s2Step271ExitFvRow,s2Step271ExitGvRow] 3 s2Step271ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step271ExitGvBefore (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step271ExitGv_Outgoing : rowsOwned s2Step271ExitGvAfter [s2Step271ExitGvOut] :=
  hmrRows_owned_drop s2Step271ExitGvAfter [s2Step271ExitGOut,s2Step271ExitFOut,s2Step271ExitFvOut,s2Step271ExitGvOut] 3 s2Step271ExitBank_outgoingOwned

private theorem s2Step271ExitGv_distinct : (s2Step271ExitGvRow.sign::s2Step271ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271ExitGv_owned : (s2Step271ExitGvRow.sign::s2Step271ExitGvRow.payload).toFinset⊆s2Step271ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step271ExitGvBefore (fun q => (0≤q ∧ q<135) ∨ (136≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271ExitGv_retired : s2Step271ExitGvBefore.retireSet s2Step271ExitGvExtra.toFinset=s2Step271ExitGvAfter := by
  unfold Arena.retireSet s2Step271ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step271ExitGvBefore,s2Step271ExitFvAfter,s2Step271ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step271ExitGv_checked : planRowResizeLog s2Step271ExitGvBefore s2Step271ExitGvRow 151 []=
    some (s2Step271ExitGvAfter,s2Step271ExitGvOut,shrinkRow 771 s2Step271ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step271ExitGvBefore s2Step271ExitGvRow 151 s2Step271ExitGv_distinct s2Step271ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step271ExitGvRow.payload.take 151) s2Step271ExitGvRow.sign=s2Step271ExitGvOut := by decide +kernel
  have hi : s2Step271ExitGvRow.payload.drop 151=s2Step271ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step271ExitGv_retired] at result
  exact result

private theorem s2Step271ExitBank_rows : planWindowRowsLog s2Step271ExitGBefore [(s2Step271ExitGRow,135),(s2Step271ExitFRow,135),(s2Step271ExitFvRow,151),(s2Step271ExitGvRow,151)] [[],[],[],[]]=
    some (s2Step271ExitGvAfter,[s2Step271ExitGOut,s2Step271ExitFOut,s2Step271ExitFvOut,s2Step271ExitGvOut],(shrinkRow 769 s2Step271ExitGExtra ++ (shrinkRow 768 s2Step271ExitFExtra ++ (shrinkRow 770 s2Step271ExitFvExtra ++ (shrinkRow 771 s2Step271ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step271ExitGvAfter [] []=some (s2Step271ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step271ExitGvBefore s2Step271ExitGvAfter s2Step271ExitGvAfter
    s2Step271ExitGvRow s2Step271ExitGvOut 151 [] [] [] []
    (shrinkRow 771 s2Step271ExitGvExtra) ([]) s2Step271ExitGv_Incoming s2Step271ExitGv_checked h4 s2Step271ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step271ExitFvBefore s2Step271ExitFvAfter s2Step271ExitGvAfter
    s2Step271ExitFvRow s2Step271ExitFvOut 151 [] [(s2Step271ExitGvRow,151)] [[]] [s2Step271ExitGvOut]
    (shrinkRow 770 s2Step271ExitFvExtra) ((shrinkRow 771 s2Step271ExitGvExtra ++ [])) s2Step271ExitFv_Incoming s2Step271ExitFv_checked h3 s2Step271ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step271ExitFBefore s2Step271ExitFAfter s2Step271ExitGvAfter
    s2Step271ExitFRow s2Step271ExitFOut 135 [] [(s2Step271ExitFvRow,151),(s2Step271ExitGvRow,151)] [[],[]] [s2Step271ExitFvOut,s2Step271ExitGvOut]
    (shrinkRow 768 s2Step271ExitFExtra) ((shrinkRow 770 s2Step271ExitFvExtra ++ (shrinkRow 771 s2Step271ExitGvExtra ++ []))) s2Step271ExitF_Incoming s2Step271ExitF_checked h2 s2Step271ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step271ExitGBefore s2Step271ExitGAfter s2Step271ExitGvAfter
    s2Step271ExitGRow s2Step271ExitGOut 135 [] [(s2Step271ExitFRow,135),(s2Step271ExitFvRow,151),(s2Step271ExitGvRow,151)] [[],[],[]] [s2Step271ExitFOut,s2Step271ExitFvOut,s2Step271ExitGvOut]
    (shrinkRow 769 s2Step271ExitGExtra) ((shrinkRow 768 s2Step271ExitFExtra ++ (shrinkRow 770 s2Step271ExitFvExtra ++ (shrinkRow 771 s2Step271ExitGvExtra ++ [])))) s2Step271ExitG_Incoming s2Step271ExitG_checked h1 s2Step271ExitG_Outgoing
  exact h0

private theorem s2Step271ExitBank_checked : compileHmrBankResizeLog .exit s2Step271ExitGBefore ⟨s2Step271ExitFRow,s2Step271ExitGRow,s2Step271ExitFvRow,s2Step271ExitGvRow⟩ ⟨135,135,151,151⟩ [[],[],[],[]]=
    some (s2Step271ExitGvAfter,⟨s2Step271ExitFOut,s2Step271ExitGOut,s2Step271ExitFvOut,s2Step271ExitGvOut⟩,(shrinkRow 769 s2Step271ExitGExtra ++ (shrinkRow 768 s2Step271ExitFExtra ++ (shrinkRow 770 s2Step271ExitFvExtra ++ (shrinkRow 771 s2Step271ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step271ExitBank_rows]
  rfl

private theorem s2Step271Add0_apart : Disjoint s2Step271Add0Arena.live s2Step271Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step271Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271Add0_card : s2Step271Add0Arena.live.card=901 := by
  decide +kernel

private theorem s2Step271Add0_borrowed : s2Step271Add0Arena.checkBorrow (hmrHybridCount s2Step271Add0Arena s2Step271Add0B.length) s2Step271Add0Work=some s2Step271Add0During := by
  have len : s2Step271Add0Work.length=hmrHybridCount s2Step271Add0Arena s2Step271Add0B.length := by
    rw [hmrHybridCount,s2Step271Add0_card]
    decide +kernel
  have nd : s2Step271Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step271Add0Arena s2Step271Add0During s2Step271Add0Work.toFinset s2Step271Add0_bounded s2Step271Add0_apart rfl

private theorem s2Step271Add0_distinct : (830::822::800::(s2Step271Add0A++s2Step271Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271Add0_owned : (830::822::800::(s2Step271Add0A++s2Step271Add0B)).toFinset⊆s2Step271Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step271Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271Add0_checked : compileHmrHybridCinLog s2Step271Add0Arena 822 830 800 s2Step271Add0A s2Step271Add0B s2Step271Add0Work=some s2Step271Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step271Add0Arena s2Step271Add0During 822 830 800 s2Step271Add0A s2Step271Add0B s2Step271Add0Work
    (by decide +kernel) (by decide +kernel) s2Step271Add0_distinct
    (fun q hq => s2Step271Add0_owned (List.mem_toFinset.mpr hq)) s2Step271Add0_borrowed

private theorem s2Step271Add1_apart : Disjoint s2Step271Add1Arena.live s2Step271Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step271Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271Add1_card : s2Step271Add1Arena.live.card=901 := by
  decide +kernel

private theorem s2Step271Add1_borrowed : s2Step271Add1Arena.checkBorrow (hmrHybridCount s2Step271Add1Arena s2Step271Add1B.length) s2Step271Add1Work=some s2Step271Add1During := by
  have len : s2Step271Add1Work.length=hmrHybridCount s2Step271Add1Arena s2Step271Add1B.length := by
    rw [hmrHybridCount,s2Step271Add1_card]
    decide +kernel
  have nd : s2Step271Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step271Add1Arena s2Step271Add1During s2Step271Add1Work.toFinset s2Step271Add1_bounded s2Step271Add1_apart rfl

private theorem s2Step271Add1_distinct : (830::822::800::(s2Step271Add1A++s2Step271Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271Add1_owned : (830::822::800::(s2Step271Add1A++s2Step271Add1B)).toFinset⊆s2Step271Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step271Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271Add1_checked : compileHmrHybridCinLog s2Step271Add1Arena 822 830 800 s2Step271Add1A s2Step271Add1B s2Step271Add1Work=some s2Step271Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step271Add1Arena s2Step271Add1During 822 830 800 s2Step271Add1A s2Step271Add1B s2Step271Add1Work
    (by decide +kernel) (by decide +kernel) s2Step271Add1_distinct
    (fun q hq => s2Step271Add1_owned (List.mem_toFinset.mpr hq)) s2Step271Add1_borrowed

private theorem s2Step271F4_apart : Disjoint (s2Step271Add0A++s2Step271Add0B).toFinset (s2Step271Add1A++s2Step271Add1B).toFinset := by
  have nd : ((s2Step271Add0A++s2Step271Add0B)++(s2Step271Add1A++s2Step271Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step271F4_carry : s2Step271F4FlagArena.checkBorrow 1 [800]=some s2Step271Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step271F4FlagArena,s2Step271HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step271F4FlagArena,s2Step271HeadFvAfter,s2Step271Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step271F4_distinct : (816::822::830::800::((s2Step271Add0A++s2Step271Add1A)++(s2Step271Add0B++s2Step271Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271F4_flag : s2Step271HeadFvAfter.checkBorrow 1 [830]=some s2Step271F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step271HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step271F4_owned : (816::822::((s2Step271Add0A++s2Step271Add1A)++(s2Step271Add0B++s2Step271Add1B))).toFinset⊆s2Step271HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step271HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271F4_checked : compileHmrHybridF4Log s2Step271HeadFvAfter 816 822 s2Step271Add0A s2Step271Add0B s2Step271Add1A s2Step271Add1B [830] [800] s2Step271Add0Work s2Step271Add1Work=some s2Step271F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step271HeadFvAfter s2Step271F4FlagArena s2Step271Add0Arena s2Step271Add0During s2Step271Add1During 816 822
    s2Step271Add0A s2Step271Add0B s2Step271Add1A s2Step271Add1B [830] [800] s2Step271Add0Work s2Step271Add1Work
    (fun q hq => s2Step271F4_owned (List.mem_toFinset.mpr hq)) s2Step271F4_flag s2Step271F4_carry
    s2Step271F4_distinct s2Step271F4_apart s2Step271Add0_checked s2Step271Add1_checked

private theorem s2Step271Front_branch : s2Step271FrontSigmaArena.checkBorrow 1 [822]=some s2Step271HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step271FrontSigmaArena,s2Step271EntryGvAfter,s2Step271EntryFAfter,arenaWires]
  · ext q
    simp only [s2Step271FrontSigmaArena,s2Step271EntryGvAfter,s2Step271EntryFAfter,s2Step271HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step271Front_entry : HmrFrontEntryValid s2Step271EntryFBefore s2Step271FrontBank 136 151 ⟨135,135,151,151⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step271FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step271EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step271EntryFBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step271FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step271Front_sigma : s2Step271EntryGvAfter.checkBorrow 1 [816]=some s2Step271FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step271EntryGvAfter,s2Step271EntryFAfter,arenaWires]
  · rfl

private def s2Step271HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271HeadFBefore : Arena := s2Step271HeadGAfter

private def s2Step271HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 786],768⟩

private def s2Step271HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836],770⟩

private def s2Step271HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],769⟩

private def s2Step271HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩

private theorem s2Step271HeadBank_incomingDistinct : ([s2Step271HeadGRow,s2Step271HeadFRow,s2Step271HeadGvRow,s2Step271HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271HeadF_Incoming : rowsOwned s2Step271HeadFBefore [s2Step271HeadFRow,s2Step271HeadGvRow,s2Step271HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step271HeadGRow,s2Step271HeadFRow,s2Step271HeadGvRow,s2Step271HeadFvRow] 1 s2Step271HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step271HeadFBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step271HeadBank_outgoingOwned : rowsOwned s2Step271HeadFvAfter [s2Step271HeadGOut,s2Step271HeadFOut,s2Step271HeadGvOut,s2Step271HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step271HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step271HeadF_Outgoing : rowsOwned s2Step271HeadFvAfter [s2Step271HeadFOut,s2Step271HeadGvOut,s2Step271HeadFvOut] :=
  hmrRows_owned_drop s2Step271HeadFvAfter [s2Step271HeadGOut,s2Step271HeadFOut,s2Step271HeadGvOut,s2Step271HeadFvOut] 1 s2Step271HeadBank_outgoingOwned

private theorem s2Step271HeadF_distinct : (s2Step271HeadFRow.sign::s2Step271HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271HeadF_owned : (s2Step271HeadFRow.sign::s2Step271HeadFRow.payload).toFinset⊆s2Step271HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step271HeadFBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271HeadF_reserved : s2Step271HeadFBefore.reserve s2Step271HeadFFresh.toFinset=some s2Step271HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step271HeadFFresh,arenaWires]
  · norm_num [s2Step271HeadFBefore,s2Step271HeadGAfter,s2Step271HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step271HeadFAfter,s2Step271HeadFBefore,s2Step271HeadGAfter,s2Step271HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step271HeadF_checked : planRowResizeLog s2Step271HeadFBefore s2Step271HeadFRow 137 s2Step271HeadFFresh=
    some (s2Step271HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 786, 788],768⟩,growRow 768 s2Step271HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step271HeadFBefore s2Step271HeadFAfter s2Step271HeadFRow 137 s2Step271HeadFFresh
    s2Step271HeadF_distinct s2Step271HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step271HeadF_reserved
  have rowEq : WindowRow.mk (s2Step271HeadFRow.payload++s2Step271HeadFFresh) s2Step271HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 786, 788],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step271HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step271HeadFvBefore : Arena := s2Step271HeadGvAfter

private theorem s2Step271HeadFv_Incoming : rowsOwned s2Step271HeadFvBefore [s2Step271HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step271HeadGRow,s2Step271HeadFRow,s2Step271HeadGvRow,s2Step271HeadFvRow] 3 s2Step271HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step271HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step271HeadFv_Outgoing : rowsOwned s2Step271HeadFvAfter [s2Step271HeadFvOut] :=
  hmrRows_owned_drop s2Step271HeadFvAfter [s2Step271HeadGOut,s2Step271HeadFOut,s2Step271HeadGvOut,s2Step271HeadFvOut] 3 s2Step271HeadBank_outgoingOwned

private theorem s2Step271HeadFv_distinct : (s2Step271HeadFvRow.sign::s2Step271HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271HeadFv_owned : (s2Step271HeadFvRow.sign::s2Step271HeadFvRow.payload).toFinset⊆s2Step271HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step271HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271HeadFv_reserved : s2Step271HeadFvBefore.reserve s2Step271HeadFvFresh.toFinset=some s2Step271HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step271HeadFvFresh,arenaWires]
  · norm_num [s2Step271HeadFvBefore,s2Step271HeadGvAfter,s2Step271HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step271HeadFvAfter,s2Step271HeadFvBefore,s2Step271HeadGvAfter,s2Step271HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step271HeadFv_checked : planRowResizeLog s2Step271HeadFvBefore s2Step271HeadFvRow 152 s2Step271HeadFvFresh=
    some (s2Step271HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 844],770⟩,growRow 770 s2Step271HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step271HeadFvBefore s2Step271HeadFvAfter s2Step271HeadFvRow 152 s2Step271HeadFvFresh
    s2Step271HeadFv_distinct s2Step271HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step271HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step271HeadFvRow.payload++s2Step271HeadFvFresh) s2Step271HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 844],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step271HeadG_Incoming : rowsOwned s2Step271HeadGBefore [s2Step271HeadGRow,s2Step271HeadFRow,s2Step271HeadGvRow,s2Step271HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step271HeadGRow,s2Step271HeadFRow,s2Step271HeadGvRow,s2Step271HeadFvRow] 0 s2Step271HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step271HeadGBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step271HeadG_Outgoing : rowsOwned s2Step271HeadFvAfter [s2Step271HeadGOut,s2Step271HeadFOut,s2Step271HeadGvOut,s2Step271HeadFvOut] :=
  hmrRows_owned_drop s2Step271HeadFvAfter [s2Step271HeadGOut,s2Step271HeadFOut,s2Step271HeadGvOut,s2Step271HeadFvOut] 0 s2Step271HeadBank_outgoingOwned

private theorem s2Step271HeadG_distinct : (s2Step271HeadGRow.sign::s2Step271HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271HeadG_owned : (s2Step271HeadGRow.sign::s2Step271HeadGRow.payload).toFinset⊆s2Step271HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step271HeadGBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271HeadG_reserved : s2Step271HeadGBefore.reserve s2Step271HeadGFresh.toFinset=some s2Step271HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step271HeadGFresh,arenaWires]
  · norm_num [s2Step271HeadGBefore,s2Step271HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step271HeadGAfter,s2Step271HeadGBefore,s2Step271HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step271HeadG_checked : planRowResizeLog s2Step271HeadGBefore s2Step271HeadGRow 137 s2Step271HeadGFresh=
    some (s2Step271HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 841],769⟩,growRow 769 s2Step271HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step271HeadGBefore s2Step271HeadGAfter s2Step271HeadGRow 137 s2Step271HeadGFresh
    s2Step271HeadG_distinct s2Step271HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step271HeadG_reserved
  have rowEq : WindowRow.mk (s2Step271HeadGRow.payload++s2Step271HeadGFresh) s2Step271HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 841],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step271HeadGvBefore : Arena := s2Step271HeadFAfter

private theorem s2Step271HeadGv_Incoming : rowsOwned s2Step271HeadGvBefore [s2Step271HeadGvRow,s2Step271HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step271HeadGRow,s2Step271HeadFRow,s2Step271HeadGvRow,s2Step271HeadFvRow] 2 s2Step271HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step271HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step271HeadGv_Outgoing : rowsOwned s2Step271HeadFvAfter [s2Step271HeadGvOut,s2Step271HeadFvOut] :=
  hmrRows_owned_drop s2Step271HeadFvAfter [s2Step271HeadGOut,s2Step271HeadFOut,s2Step271HeadGvOut,s2Step271HeadFvOut] 2 s2Step271HeadBank_outgoingOwned

private theorem s2Step271HeadGv_distinct : (s2Step271HeadGvRow.sign::s2Step271HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step271HeadGv_owned : (s2Step271HeadGvRow.sign::s2Step271HeadGvRow.payload).toFinset⊆s2Step271HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step271HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step271HeadGv_reserved : s2Step271HeadGvBefore.reserve s2Step271HeadGvFresh.toFinset=some s2Step271HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step271HeadGvFresh,arenaWires]
  · norm_num [s2Step271HeadGvBefore,s2Step271HeadFAfter,s2Step271HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step271HeadGvAfter,s2Step271HeadGvBefore,s2Step271HeadFAfter,s2Step271HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step271HeadGv_checked : planRowResizeLog s2Step271HeadGvBefore s2Step271HeadGvRow 152 s2Step271HeadGvFresh=
    some (s2Step271HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 891],771⟩,growRow 771 s2Step271HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step271HeadGvBefore s2Step271HeadGvAfter s2Step271HeadGvRow 152 s2Step271HeadGvFresh
    s2Step271HeadGv_distinct s2Step271HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step271HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step271HeadGvRow.payload++s2Step271HeadGvFresh) s2Step271HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 891],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step271HeadBank_rows : planWindowRowsLog s2Step271HeadGBefore [(s2Step271HeadGRow,137),(s2Step271HeadFRow,137),(s2Step271HeadGvRow,152),(s2Step271HeadFvRow,152)] [s2Step271HeadGFresh,s2Step271HeadFFresh,s2Step271HeadGvFresh,s2Step271HeadFvFresh]=
    some (s2Step271HeadFvAfter,[s2Step271HeadGOut,s2Step271HeadFOut,s2Step271HeadGvOut,s2Step271HeadFvOut],(growRow 769 s2Step271HeadGFresh ++ (growRow 768 s2Step271HeadFFresh ++ (growRow 771 s2Step271HeadGvFresh ++ (growRow 770 s2Step271HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step271HeadFvAfter [] []=some (s2Step271HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step271HeadFvBefore s2Step271HeadFvAfter s2Step271HeadFvAfter
    s2Step271HeadFvRow s2Step271HeadFvOut 152 s2Step271HeadFvFresh [] [] []
    (growRow 770 s2Step271HeadFvFresh) ([]) s2Step271HeadFv_Incoming s2Step271HeadFv_checked h4 s2Step271HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step271HeadGvBefore s2Step271HeadGvAfter s2Step271HeadFvAfter
    s2Step271HeadGvRow s2Step271HeadGvOut 152 s2Step271HeadGvFresh [(s2Step271HeadFvRow,152)] [s2Step271HeadFvFresh] [s2Step271HeadFvOut]
    (growRow 771 s2Step271HeadGvFresh) ((growRow 770 s2Step271HeadFvFresh ++ [])) s2Step271HeadGv_Incoming s2Step271HeadGv_checked h3 s2Step271HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step271HeadFBefore s2Step271HeadFAfter s2Step271HeadFvAfter
    s2Step271HeadFRow s2Step271HeadFOut 137 s2Step271HeadFFresh [(s2Step271HeadGvRow,152),(s2Step271HeadFvRow,152)] [s2Step271HeadGvFresh,s2Step271HeadFvFresh] [s2Step271HeadGvOut,s2Step271HeadFvOut]
    (growRow 768 s2Step271HeadFFresh) ((growRow 771 s2Step271HeadGvFresh ++ (growRow 770 s2Step271HeadFvFresh ++ []))) s2Step271HeadF_Incoming s2Step271HeadF_checked h2 s2Step271HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step271HeadGBefore s2Step271HeadGAfter s2Step271HeadFvAfter
    s2Step271HeadGRow s2Step271HeadGOut 137 s2Step271HeadGFresh [(s2Step271HeadFRow,137),(s2Step271HeadGvRow,152),(s2Step271HeadFvRow,152)] [s2Step271HeadFFresh,s2Step271HeadGvFresh,s2Step271HeadFvFresh] [s2Step271HeadFOut,s2Step271HeadGvOut,s2Step271HeadFvOut]
    (growRow 769 s2Step271HeadGFresh) ((growRow 768 s2Step271HeadFFresh ++ (growRow 771 s2Step271HeadGvFresh ++ (growRow 770 s2Step271HeadFvFresh ++ [])))) s2Step271HeadG_Incoming s2Step271HeadG_checked h1 s2Step271HeadG_Outgoing
  exact h0

private theorem s2Step271HeadBank_checked : compileHmrBankResizeLog .headroom s2Step271HeadGBefore ⟨s2Step271HeadFRow,s2Step271HeadGRow,s2Step271HeadFvRow,s2Step271HeadGvRow⟩ ⟨137,137,152,152⟩ [s2Step271HeadGFresh,s2Step271HeadFFresh,s2Step271HeadGvFresh,s2Step271HeadFvFresh]=
    some (s2Step271HeadFvAfter,⟨s2Step271HeadFOut,s2Step271HeadGOut,s2Step271HeadFvOut,s2Step271HeadGvOut⟩,(growRow 769 s2Step271HeadGFresh ++ (growRow 768 s2Step271HeadFFresh ++ (growRow 771 s2Step271HeadGvFresh ++ (growRow 770 s2Step271HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step271HeadBank_rows]
  rfl

private theorem s2Step271Front_checked : compileHmrSourceFrontLog s2Step271EntryFBefore s2Step271FrontBank 136 151 ⟨135,135,151,151⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step271FrontLog=some s2Step271FrontPlan := by
  have pairEq : s2Step271FrontPair=⟨s2Step271HeadFRow,s2Step271HeadGRow,s2Step271HeadFvRow,s2Step271HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step271FrontHead=⟨s2Step271ExitFRow,s2Step271ExitGRow,s2Step271ExitFvRow,s2Step271ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step271Add0A=s2Step271FrontHead.f.wires := by decide +kernel
  have gEq : s2Step271Add0B=s2Step271FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step271Add1A=s2Step271FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step271Add1B=s2Step271FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step271EntryFBefore s2Step271FrontBank 136 151 ⟨135,135,151,151⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step271FrontLog s2Step271FrontPlan
  · exact s2Step271Front_entry
  · exact s2Step271EntryBank_checked
  · exact s2Step271Front_sigma
  · rfl
  · exact s2Step271Front_branch
  · rfl
  · simpa only [s2Step271FrontPlan,pairEq] using s2Step271HeadBank_checked
  · simpa only [s2Step271FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step271F4_checked
  · exact s2Step271Counter_checked
  · rfl
  · simpa only [s2Step271FrontPlan,headEq] using s2Step271ExitBank_checked

private theorem s2Step271Complete_explicit_checked : compileHmrEarlyStepLog s2Step271EntryFBefore s2Step271FrontBank 136 151 ⟨135,135,151,151⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step271CompleteLog=some s2Step271CompletePlan := by
  let Q := s2Step271EarlyControlPlan
  have hq := s2Step271EarlyControl_plan_checked
  have fv1 : s2Step271CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step271CompleteOut.fv.payload[2]?.getD s2Step271CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step271CompleteOut.fv.payload[3]?.getD s2Step271CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step271CompleteOut.fv.payload[4]?.getD s2Step271CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step271EntryFBefore s2Step271EarlyControlArena s2Step271FrontBank 136 151 ⟨135,135,151,151⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step271CompleteLog s2Step271FrontPlan Q
    s2Step271Front_checked s2Step271Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step271Complete_owned s2Step271Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step271EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 816 s2Step271CompleteOut.fv.second (s2Step271CompleteOut.fv.payload[2]?.getD s2Step271CompleteOut.fv.sign) (s2Step271CompleteOut.fv.payload[3]?.getD s2Step271CompleteOut.fv.sign) (s2Step271CompleteOut.fv.payload[4]?.getD s2Step271CompleteOut.fv.sign) 822 53 s2Step271EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep271Arena : Arena := s2Step271EntryFBefore
def s2PrivateStep271Bank : WindowBank := s2Step271FrontBank
def s2PrivateStep271Spec : HmrSourceWalkStepLog := ⟨136,151,⟨135,135,151,151⟩,53,.early s2Step271CompleteLog⟩
def s2PrivateStep271Plan : HmrSourceStepPlan := .early s2Step271CompletePlan
theorem s2PrivateStep271_source : s2PrivateStep271Spec=s2ObservedLogs256[15] := rfl
theorem s2PrivateStep271_checked : compileHmrSourceStepLog s2PrivateStep271Arena s2PrivateStep271Bank
    s2PrivateStep271Spec.fgWidth s2PrivateStep271Spec.vWidth s2PrivateStep271Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]
    6 498 271 s2PrivateStep271Spec.need none s2PrivateStep271Spec.log=some s2PrivateStep271Plan := by
  change compileHmrSourceStepLog s2Step271EntryFBefore s2Step271FrontBank 136 151 ⟨135,135,151,151⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 6 498 271 53 none (.early s2Step271CompleteLog)=some (.early s2Step271CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 271<498)]
  rw [s2Step271Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
