import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep270
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

private def s2Step272CompleteMoves : List (Wire × Wire) := [(851,646)]

private def s2Step272EarlyControlLog : HmrEarlyControlLog := ⟨[851, 844, 891, 781, 788],[841],[830],[800, 894, 896, 901, 903, 904],[]⟩

private def s2Step272FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[781], [891], [844], [786]],[[], [], [], []]⟩,[822],[816],[788],[841],[830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[788, 841, 830, 800]⟩

private def s2Step272CompleteLog : HmrEarlyStepLog := ⟨s2Step272FrontLog,s2Step272CompleteMoves,s2Step272EarlyControlLog⟩

private def s2Step272ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645],768⟩

private def s2Step272ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786],770⟩

private def s2Step272ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],769⟩

private def s2Step272ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩

private def s2Step272FrontOut : WindowBank := ⟨s2Step272ExitFOut,s2Step272ExitGOut,s2Step272ExitFvOut,s2Step272ExitGvOut⟩

private def s2Step272CompleteOut : WindowBank := s2Step272FrontOut.repacked s2Step272CompleteMoves

private def s2Step272EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step272EarlyControlPositiveArena,[841],s2Step272EarlyControlEqualityArena,[830],⟨⟨822,false⟩,[⟨⟨841,false⟩,830⟩]⟩⟩

private def s2Step272EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,851⟩,⟨⟨774,false⟩,844⟩,⟨⟨775,false⟩,891⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,788⟩]⟩

private def s2Step272EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step272EarlyControlZeroArena,s2Step272EarlyControlZeroPlan,s2Step272EarlyControlClassPlan,s2Step272EarlyControlFlagArena,s2Step272EarlyControlFittedArena,s2Step272EarlyControlHistoryArena,s2Step272EarlyControlSigmaArena,s2Step272EarlyControlOutputArena,s2Step272EarlyControlLog⟩

private def s2Step272CounterWork : List Wire := [788, 841, 830, 800]

private theorem s2Step272Counter_bounded : s2Step272CounterWork.toFinset⊆arenaWires := by norm_num [s2Step272CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step272HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272CounterDuring : Arena := ⟨s2Step272HeadFvAfter.live∪s2Step272CounterWork.toFinset,Finset.union_subset s2Step272HeadFvAfter.bounded s2Step272Counter_bounded⟩

private def s2Step272EntryFFresh : List Wire := []

private def s2Step272EntryFvFresh : List Wire := []

private def s2Step272EntryGFresh : List Wire := []

private def s2Step272EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272EntryGvAfter : Arena := s2Step272EntryFBefore

private def s2Step272EntryGvFresh : List Wire := []

private def s2Step272ExitFExtra : List Wire := [646, 891]

private def s2Step272ExitGExtra : List Wire := [781]

private def s2Step272ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<646) ∨ (647≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272ExitGvExtra : List Wire := [844]

private def s2Step272Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step272Add0_bounded : s2Step272Add0Work.toFinset⊆arenaWires := by
  have h : s2Step272Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step272Add0During : Arena := ⟨s2Step272Add0Arena.live∪s2Step272Add0Work.toFinset,Finset.union_subset s2Step272Add0Arena.bounded s2Step272Add0_bounded⟩

private def s2Step272Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step272Add1_bounded : s2Step272Add1Work.toFinset⊆arenaWires := by
  have h : s2Step272Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step272Add1During : Arena := ⟨s2Step272Add1Arena.live∪s2Step272Add1Work.toFinset,Finset.union_subset s2Step272Add1Arena.bounded s2Step272Add1_bounded⟩

private def s2Step272F4FlagArena : Arena := ⟨s2Step272HeadFvAfter.live∪{788},Finset.union_subset s2Step272HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step272F4Plan : HmrHybridF4Plan := ⟨s2Step272F4FlagArena,[788],s2Step272Add0Arena,[841],s2Step272Add0During,s2Step272Add0Work,s2Step272Add1During,s2Step272Add1Work⟩

private def s2Step272HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 891],768⟩

private def s2Step272HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786],770⟩

private def s2Step272HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 781],769⟩

private def s2Step272HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 844],771⟩

private def s2Step272FrontHead : WindowBank := ⟨s2Step272HeadFOut,s2Step272HeadGOut,s2Step272HeadFvOut,s2Step272HeadGvOut⟩

private def s2Step272EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646],768⟩

private def s2Step272EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836],770⟩

private def s2Step272EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],769⟩

private def s2Step272EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩

private def s2Step272FrontPair : WindowBank := ⟨s2Step272EntryFOut,s2Step272EntryGOut,s2Step272EntryFvOut,s2Step272EntryGvOut⟩

private def s2Step272FrontSigmaArena : Arena := ⟨s2Step272EntryGvAfter.live∪{822},Finset.union_subset s2Step272EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step272HeadFFresh : List Wire := [891]

private def s2Step272HeadFvFresh : List Wire := [786]

private def s2Step272HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272HeadGFresh : List Wire := [781]

private def s2Step272HeadGvFresh : List Wire := [844]

private def s2Step272FrontPlan : HmrSourceFront := ⟨s2Step272EntryGvAfter,s2Step272FrontPair,(growRow 768 s2Step272EntryFFresh ++ (growRow 769 s2Step272EntryGFresh ++ (growRow 770 s2Step272EntryFvFresh ++ (growRow 771 s2Step272EntryGvFresh ++ [])))),s2Step272FrontSigmaArena,[822],s2Step272HeadGBefore,[816],
  s2Step272HeadFvAfter,s2Step272FrontHead,(growRow 769 s2Step272HeadGFresh ++ (growRow 768 s2Step272HeadFFresh ++ (growRow 771 s2Step272HeadGvFresh ++ (growRow 770 s2Step272HeadFvFresh ++ [])))),s2Step272F4Plan,s2Step272CounterDuring,s2Step272CounterWork,s2Step272ExitGvAfter,s2Step272FrontOut,(shrinkRow 769 s2Step272ExitGExtra ++ (shrinkRow 768 s2Step272ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step272ExitGvExtra ++ []))))⟩

private def s2Step272CompletePlan : HmrEarlyStepPlan := ⟨s2Step272FrontPlan,s2Step272EarlyControlArena,s2Step272EarlyControlPlan,s2Step272CompleteMoves⟩

private theorem s2Step272Complete_apart : List.Disjoint (s2Step272CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [822, 816, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] := by
  have nd : ((s2Step272CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[822, 816, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step272Complete_owned : (s2Step272CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step272EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step272EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step272CompleteMoveArena : Arena := ⟨s2Step272ExitGvAfter.live∪{646},Finset.union_subset s2Step272ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step272Complete_repack : s2Step272ExitGvAfter.checkRepack s2Step272CompleteMoves=some s2Step272EarlyControlArena := by
  have owned : 851∈s2Step272ExitGvAfter.live := by norm_num [s2Step272ExitGvAfter,arenaWires]
  have reserve : s2Step272ExitGvAfter.reserve {646}=some s2Step272CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step272ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step272CompleteMoveArena.retireSet {851}=s2Step272EarlyControlArena := by
    unfold Arena.retireSet s2Step272EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step272CompleteMoveArena,s2Step272ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step272CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step272CompleteMoveArena.retireSet {851}).checkRepack []=some s2Step272EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step272EarlyControl_branchOwned : ([816] : List Wire).toFinset⊆s2Step272EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step272EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272EarlyControl_branch : compileHmrBranchRetirement s2Step272EarlyControlSigmaArena 816=some s2Step272EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step272EarlyControl_branchOwned
  · ext q
    simp [s2Step272EarlyControlOutputArena,s2Step272EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step272EarlyControl_classEqualityBorrow : s2Step272EarlyControlPositiveArena.checkBorrow (([822, 841] : List Wire).length-1) s2Step272EarlyControlLog.classWork=some s2Step272EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step272EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step272EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step272EarlyControlEqualityArena,s2Step272EarlyControlPositiveArena,s2Step272EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step272EarlyControl_classEqualityOwned : ([822, 841] : List Wire).toFinset⊆s2Step272EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step272EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272EarlyControl_classEquality : compileHmrEqualityLog s2Step272EarlyControlPositiveArena [822, 841] 0 s2Step272EarlyControlLog.classWork=some (s2Step272EarlyControlEqualityArena,s2Step272EarlyControlLog.classWork,s2Step272EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step272EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step272EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step272EarlyControl_classOwned : ([777, 788, 822] : List Wire).toFinset⊆s2Step272EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step272EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272EarlyControl_positiveBorrow : s2Step272EarlyControlZeroArena.checkBorrow (1) s2Step272EarlyControlLog.positiveWork=some s2Step272EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step272EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step272EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step272EarlyControlPositiveArena,s2Step272EarlyControlZeroArena,s2Step272EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step272EarlyControl_class : compileHmrSourceClassLog s2Step272EarlyControlZeroArena false 777 s2Step272EarlyControlZeroPlan.top 0 822 s2Step272EarlyControlLog.positiveWork s2Step272EarlyControlLog.classWork=some s2Step272EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step272EarlyControlClassPlan s2Step272EarlyControlZeroArena false 777 s2Step272EarlyControlZeroPlan.top 0 822
  constructor
  · decide +kernel
  · exact s2Step272EarlyControl_classOwned
  · exact s2Step272EarlyControl_positiveBorrow
  · exact s2Step272EarlyControl_classEquality

private theorem s2Step272EarlyControl_entryRecordOwned : ([816, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step272EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step272EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272EarlyControl_entrySigmaOwned : ([822, 254] : List Wire).toFinset⊆s2Step272EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step272EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272EarlyControl_fitBorrow : s2Step272EarlyControlFlagArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step272EarlyControlLog.recordFresh=some s2Step272EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step272EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step272EarlyControlFlagArena (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step272EarlyControlFittedArena,s2Step272EarlyControlFlagArena,s2Step272EarlyControlLog,arenaWires]

private theorem s2Step272EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step272EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step272EarlyControlFlagArena (fun q => (0≤q ∧ q<905) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272EarlyControl_fit : compileHmrRecordGrowLog s2Step272EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step272EarlyControlLog.recordFresh=some s2Step272EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step272EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step272EarlyControl_fitBorrow

private theorem s2Step272EarlyControl_flagsBorrow : s2Step272EarlyControlEqualityArena.checkBorrow (6) s2Step272EarlyControlLog.flagWork=some s2Step272EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step272EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step272EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step272EarlyControlFlagArena,s2Step272EarlyControlEqualityArena,s2Step272EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step272EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s2Step272EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step272EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272EarlyControl_flags : compileHmrFlagsLog s2Step272EarlyControlClassPlan.equalityArena s2Step272EarlyControlClassPlan.equality.top 253 252 251 s2Step272EarlyControlLog.flagWork=some s2Step272EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step272EarlyControl_flagsOwned⟩
  · exact s2Step272EarlyControl_flagsBorrow

private theorem s2Step272EarlyControl_historyBorrow : s2Step272EarlyControlArena.checkBorrow ((53-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).length)) s2Step272EarlyControlLog.recordFresh=some s2Step272EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step272EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step272EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step272EarlyControlHistoryArena,s2Step272EarlyControlArena,s2Step272EarlyControlLog,arenaWires]

private theorem s2Step272EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] : List Wire).toFinset⊆s2Step272EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step272EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272EarlyControl_history : compileHmrRecordGrowLog s2Step272EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step272EarlyControlLog.recordFresh=some s2Step272EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step272EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step272EarlyControl_historyBorrow

private theorem s2Step272EarlyControl_sigmaOwned : ([254, 822] : List Wire).toFinset⊆s2Step272EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step272EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272EarlyControl_sigmaReleaseOwned : ([822] : List Wire).toFinset⊆s2Step272EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step272EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272EarlyControl_sigmaRelease : s2Step272EarlyControlHistoryArena.release {822} (fun _ => false)=some s2Step272EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step272EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step272EarlyControlSigmaArena,s2Step272EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step272EarlyControl_sigma : compileHmrSigmaDropLog s2Step272EarlyControlHistoryArena false 0 0 254 822 []=some s2Step272EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step272EarlyControl_sigmaOwned⟩
  · exact s2Step272EarlyControl_sigmaRelease

private theorem s2Step272EarlyControl_zeroBorrow : s2Step272EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step272EarlyControlLog.zeroWork=some s2Step272EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step272EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step272EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step272EarlyControlZeroArena,s2Step272EarlyControlArena,s2Step272EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step272EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step272EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step272EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<851) ∨ (852≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272EarlyControl_zero : compileHmrEqualityLog s2Step272EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step272EarlyControlLog.zeroWork=some (s2Step272EarlyControlZeroArena,s2Step272EarlyControlLog.zeroWork,s2Step272EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step272EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step272EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step272EarlyControl_logged : s2Step272EarlyControlPlan.Logged s2Step272EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 822 254 253 252 251 816 53 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step272EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step272EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step272EarlyControl_zero
  · exact s2Step272EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step272EarlyControl_flags
  · exact s2Step272EarlyControl_fit
  · exact s2Step272EarlyControl_history
  · exact s2Step272EarlyControl_sigma
  · exact s2Step272EarlyControl_branch

private theorem s2Step272EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step272EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 822 254 253 252 251 816 53 s2Step272EarlyControlLog=some s2Step272EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step272EarlyControlPlan s2Step272EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 822 254 253 252 251 816 53 s2Step272EarlyControl_logged

private def s2Step272EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646],768⟩

private def s2Step272EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836],770⟩

private def s2Step272EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],769⟩

private def s2Step272EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩

private def s2Step272FrontBank : WindowBank := ⟨s2Step272EntryFRow,s2Step272EntryGRow,s2Step272EntryFvRow,s2Step272EntryGvRow⟩

private def s2Step272Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 891, 768]

private def s2Step272Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 781, 769]

private def s2Step272Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 770]

private def s2Step272Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 844, 771]

private theorem s2Step272Counter_apart : Disjoint s2Step272HeadFvAfter.live s2Step272CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step272HeadFvAfter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272Counter_borrowed : s2Step272HeadFvAfter.checkBorrow 4 s2Step272CounterWork=some s2Step272CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step272HeadFvAfter s2Step272CounterDuring s2Step272CounterWork.toFinset s2Step272Counter_bounded s2Step272Counter_apart rfl

private theorem s2Step272Counter_owned : (822::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step272HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step272HeadFvAfter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272Counter_checked : compileHmrCounterStepLog s2Step272HeadFvAfter true 822 [772, 773, 774, 775, 776, 777] s2Step272CounterWork=some s2Step272CounterDuring := by
  have owned : ∀q∈822::[772, 773, 774, 775, 776, 777],q∈s2Step272HeadFvAfter.live := fun q hq => s2Step272Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step272Counter_borrowed

private def s2Step272EntryFAfter : Arena := s2Step272EntryFBefore

private theorem s2Step272EntryBank_incomingDistinct : ([s2Step272EntryFRow,s2Step272EntryGRow,s2Step272EntryFvRow,s2Step272EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272EntryF_Incoming : rowsOwned s2Step272EntryFBefore [s2Step272EntryFRow,s2Step272EntryGRow,s2Step272EntryFvRow,s2Step272EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step272EntryFRow,s2Step272EntryGRow,s2Step272EntryFvRow,s2Step272EntryGvRow] 0 s2Step272EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step272EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step272EntryBank_outgoingOwned : rowsOwned s2Step272EntryGvAfter [s2Step272EntryFOut,s2Step272EntryGOut,s2Step272EntryFvOut,s2Step272EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step272EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step272EntryF_Outgoing : rowsOwned s2Step272EntryGvAfter [s2Step272EntryFOut,s2Step272EntryGOut,s2Step272EntryFvOut,s2Step272EntryGvOut] :=
  hmrRows_owned_drop s2Step272EntryGvAfter [s2Step272EntryFOut,s2Step272EntryGOut,s2Step272EntryFvOut,s2Step272EntryGvOut] 0 s2Step272EntryBank_outgoingOwned

private theorem s2Step272EntryF_distinct : (s2Step272EntryFRow.sign::s2Step272EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272EntryF_owned : (s2Step272EntryFRow.sign::s2Step272EntryFRow.payload).toFinset⊆s2Step272EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step272EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272EntryF_reserved : s2Step272EntryFBefore.reserve s2Step272EntryFFresh.toFinset=some s2Step272EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step272EntryFFresh,arenaWires]
  · norm_num [s2Step272EntryFBefore,s2Step272EntryFFresh,arenaWires]
  · simp only [s2Step272EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step272EntryF_checked : planRowResizeLog s2Step272EntryFBefore s2Step272EntryFRow 135 s2Step272EntryFFresh=
    some (s2Step272EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646],768⟩,growRow 768 s2Step272EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step272EntryFBefore s2Step272EntryFAfter s2Step272EntryFRow 135 s2Step272EntryFFresh
    s2Step272EntryF_distinct s2Step272EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step272EntryF_reserved
  have rowEq : WindowRow.mk (s2Step272EntryFRow.payload++s2Step272EntryFFresh) s2Step272EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step272EntryFvAfter : Arena := s2Step272EntryFBefore

private def s2Step272EntryFvBefore : Arena := s2Step272EntryFBefore

private theorem s2Step272EntryFv_Incoming : rowsOwned s2Step272EntryFvBefore [s2Step272EntryFvRow,s2Step272EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step272EntryFRow,s2Step272EntryGRow,s2Step272EntryFvRow,s2Step272EntryGvRow] 2 s2Step272EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step272EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step272EntryFv_Outgoing : rowsOwned s2Step272EntryGvAfter [s2Step272EntryFvOut,s2Step272EntryGvOut] :=
  hmrRows_owned_drop s2Step272EntryGvAfter [s2Step272EntryFOut,s2Step272EntryGOut,s2Step272EntryFvOut,s2Step272EntryGvOut] 2 s2Step272EntryBank_outgoingOwned

private theorem s2Step272EntryFv_distinct : (s2Step272EntryFvRow.sign::s2Step272EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272EntryFv_owned : (s2Step272EntryFvRow.sign::s2Step272EntryFvRow.payload).toFinset⊆s2Step272EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step272EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272EntryFv_reserved : s2Step272EntryFvBefore.reserve s2Step272EntryFvFresh.toFinset=some s2Step272EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step272EntryFvFresh,arenaWires]
  · norm_num [s2Step272EntryFvBefore,s2Step272EntryFBefore,s2Step272EntryFvFresh,arenaWires]
  · simp only [s2Step272EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step272EntryFv_checked : planRowResizeLog s2Step272EntryFvBefore s2Step272EntryFvRow 151 s2Step272EntryFvFresh=
    some (s2Step272EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836],770⟩,growRow 770 s2Step272EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step272EntryFvBefore s2Step272EntryFvAfter s2Step272EntryFvRow 151 s2Step272EntryFvFresh
    s2Step272EntryFv_distinct s2Step272EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step272EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step272EntryFvRow.payload++s2Step272EntryFvFresh) s2Step272EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step272EntryGAfter : Arena := s2Step272EntryFBefore

private def s2Step272EntryGBefore : Arena := s2Step272EntryFBefore

private theorem s2Step272EntryG_Incoming : rowsOwned s2Step272EntryGBefore [s2Step272EntryGRow,s2Step272EntryFvRow,s2Step272EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step272EntryFRow,s2Step272EntryGRow,s2Step272EntryFvRow,s2Step272EntryGvRow] 1 s2Step272EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step272EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step272EntryG_Outgoing : rowsOwned s2Step272EntryGvAfter [s2Step272EntryGOut,s2Step272EntryFvOut,s2Step272EntryGvOut] :=
  hmrRows_owned_drop s2Step272EntryGvAfter [s2Step272EntryFOut,s2Step272EntryGOut,s2Step272EntryFvOut,s2Step272EntryGvOut] 1 s2Step272EntryBank_outgoingOwned

private theorem s2Step272EntryG_distinct : (s2Step272EntryGRow.sign::s2Step272EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272EntryG_owned : (s2Step272EntryGRow.sign::s2Step272EntryGRow.payload).toFinset⊆s2Step272EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step272EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272EntryG_reserved : s2Step272EntryGBefore.reserve s2Step272EntryGFresh.toFinset=some s2Step272EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step272EntryGFresh,arenaWires]
  · norm_num [s2Step272EntryGBefore,s2Step272EntryFBefore,s2Step272EntryGFresh,arenaWires]
  · simp only [s2Step272EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step272EntryG_checked : planRowResizeLog s2Step272EntryGBefore s2Step272EntryGRow 135 s2Step272EntryGFresh=
    some (s2Step272EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],769⟩,growRow 769 s2Step272EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step272EntryGBefore s2Step272EntryGAfter s2Step272EntryGRow 135 s2Step272EntryGFresh
    s2Step272EntryG_distinct s2Step272EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step272EntryG_reserved
  have rowEq : WindowRow.mk (s2Step272EntryGRow.payload++s2Step272EntryGFresh) s2Step272EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step272EntryGvBefore : Arena := s2Step272EntryFBefore

private theorem s2Step272EntryGv_Incoming : rowsOwned s2Step272EntryGvBefore [s2Step272EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step272EntryFRow,s2Step272EntryGRow,s2Step272EntryFvRow,s2Step272EntryGvRow] 3 s2Step272EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step272EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step272EntryGv_Outgoing : rowsOwned s2Step272EntryGvAfter [s2Step272EntryGvOut] :=
  hmrRows_owned_drop s2Step272EntryGvAfter [s2Step272EntryFOut,s2Step272EntryGOut,s2Step272EntryFvOut,s2Step272EntryGvOut] 3 s2Step272EntryBank_outgoingOwned

private theorem s2Step272EntryGv_distinct : (s2Step272EntryGvRow.sign::s2Step272EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272EntryGv_owned : (s2Step272EntryGvRow.sign::s2Step272EntryGvRow.payload).toFinset⊆s2Step272EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step272EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272EntryGv_reserved : s2Step272EntryGvBefore.reserve s2Step272EntryGvFresh.toFinset=some s2Step272EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step272EntryGvFresh,arenaWires]
  · norm_num [s2Step272EntryGvBefore,s2Step272EntryFBefore,s2Step272EntryGvFresh,arenaWires]
  · simp only [s2Step272EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step272EntryGv_checked : planRowResizeLog s2Step272EntryGvBefore s2Step272EntryGvRow 151 s2Step272EntryGvFresh=
    some (s2Step272EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩,growRow 771 s2Step272EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step272EntryGvBefore s2Step272EntryGvAfter s2Step272EntryGvRow 151 s2Step272EntryGvFresh
    s2Step272EntryGv_distinct s2Step272EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step272EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step272EntryGvRow.payload++s2Step272EntryGvFresh) s2Step272EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step272EntryBank_rows : planWindowRowsLog s2Step272EntryFBefore [(s2Step272EntryFRow,135),(s2Step272EntryGRow,135),(s2Step272EntryFvRow,151),(s2Step272EntryGvRow,151)] [s2Step272EntryFFresh,s2Step272EntryGFresh,s2Step272EntryFvFresh,s2Step272EntryGvFresh]=
    some (s2Step272EntryGvAfter,[s2Step272EntryFOut,s2Step272EntryGOut,s2Step272EntryFvOut,s2Step272EntryGvOut],(growRow 768 s2Step272EntryFFresh ++ (growRow 769 s2Step272EntryGFresh ++ (growRow 770 s2Step272EntryFvFresh ++ (growRow 771 s2Step272EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step272EntryGvAfter [] []=some (s2Step272EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step272EntryGvBefore s2Step272EntryGvAfter s2Step272EntryGvAfter
    s2Step272EntryGvRow s2Step272EntryGvOut 151 s2Step272EntryGvFresh [] [] []
    (growRow 771 s2Step272EntryGvFresh) ([]) s2Step272EntryGv_Incoming s2Step272EntryGv_checked h4 s2Step272EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step272EntryFvBefore s2Step272EntryFvAfter s2Step272EntryGvAfter
    s2Step272EntryFvRow s2Step272EntryFvOut 151 s2Step272EntryFvFresh [(s2Step272EntryGvRow,151)] [s2Step272EntryGvFresh] [s2Step272EntryGvOut]
    (growRow 770 s2Step272EntryFvFresh) ((growRow 771 s2Step272EntryGvFresh ++ [])) s2Step272EntryFv_Incoming s2Step272EntryFv_checked h3 s2Step272EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step272EntryGBefore s2Step272EntryGAfter s2Step272EntryGvAfter
    s2Step272EntryGRow s2Step272EntryGOut 135 s2Step272EntryGFresh [(s2Step272EntryFvRow,151),(s2Step272EntryGvRow,151)] [s2Step272EntryFvFresh,s2Step272EntryGvFresh] [s2Step272EntryFvOut,s2Step272EntryGvOut]
    (growRow 769 s2Step272EntryGFresh) ((growRow 770 s2Step272EntryFvFresh ++ (growRow 771 s2Step272EntryGvFresh ++ []))) s2Step272EntryG_Incoming s2Step272EntryG_checked h2 s2Step272EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step272EntryFBefore s2Step272EntryFAfter s2Step272EntryGvAfter
    s2Step272EntryFRow s2Step272EntryFOut 135 s2Step272EntryFFresh [(s2Step272EntryGRow,135),(s2Step272EntryFvRow,151),(s2Step272EntryGvRow,151)] [s2Step272EntryGFresh,s2Step272EntryFvFresh,s2Step272EntryGvFresh] [s2Step272EntryGOut,s2Step272EntryFvOut,s2Step272EntryGvOut]
    (growRow 768 s2Step272EntryFFresh) ((growRow 769 s2Step272EntryGFresh ++ (growRow 770 s2Step272EntryFvFresh ++ (growRow 771 s2Step272EntryGvFresh ++ [])))) s2Step272EntryF_Incoming s2Step272EntryF_checked h1 s2Step272EntryF_Outgoing
  exact h0

private theorem s2Step272EntryBank_checked : compileHmrBankResizeLog .entry s2Step272EntryFBefore ⟨s2Step272EntryFRow,s2Step272EntryGRow,s2Step272EntryFvRow,s2Step272EntryGvRow⟩ ⟨135,135,151,151⟩ [s2Step272EntryFFresh,s2Step272EntryGFresh,s2Step272EntryFvFresh,s2Step272EntryGvFresh]=
    some (s2Step272EntryGvAfter,⟨s2Step272EntryFOut,s2Step272EntryGOut,s2Step272EntryFvOut,s2Step272EntryGvOut⟩,(growRow 768 s2Step272EntryFFresh ++ (growRow 769 s2Step272EntryGFresh ++ (growRow 770 s2Step272EntryFvFresh ++ (growRow 771 s2Step272EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step272EntryBank_rows]
  rfl

private def s2Step272ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<646) ∨ (647≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272ExitFBefore : Arena := s2Step272ExitGAfter

private def s2Step272ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 891],768⟩

private def s2Step272ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786],770⟩

private def s2Step272ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 781],769⟩

private def s2Step272ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 844],771⟩

private theorem s2Step272ExitBank_incomingDistinct : ([s2Step272ExitGRow,s2Step272ExitFRow,s2Step272ExitFvRow,s2Step272ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272ExitF_Incoming : rowsOwned s2Step272ExitFBefore [s2Step272ExitFRow,s2Step272ExitFvRow,s2Step272ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step272ExitGRow,s2Step272ExitFRow,s2Step272ExitFvRow,s2Step272ExitGvRow] 1 s2Step272ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step272ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step272ExitBank_outgoingOwned : rowsOwned s2Step272ExitGvAfter [s2Step272ExitGOut,s2Step272ExitFOut,s2Step272ExitFvOut,s2Step272ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step272ExitGvAfter (fun q => (0≤q ∧ q<646) ∨ (647≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step272ExitF_Outgoing : rowsOwned s2Step272ExitGvAfter [s2Step272ExitFOut,s2Step272ExitFvOut,s2Step272ExitGvOut] :=
  hmrRows_owned_drop s2Step272ExitGvAfter [s2Step272ExitGOut,s2Step272ExitFOut,s2Step272ExitFvOut,s2Step272ExitGvOut] 1 s2Step272ExitBank_outgoingOwned

private theorem s2Step272ExitF_distinct : (s2Step272ExitFRow.sign::s2Step272ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272ExitF_owned : (s2Step272ExitFRow.sign::s2Step272ExitFRow.payload).toFinset⊆s2Step272ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step272ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272ExitF_retired : s2Step272ExitFBefore.retireSet s2Step272ExitFExtra.toFinset=s2Step272ExitFAfter := by
  unfold Arena.retireSet s2Step272ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step272ExitFBefore,s2Step272ExitGAfter,s2Step272ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step272ExitF_checked : planRowResizeLog s2Step272ExitFBefore s2Step272ExitFRow 134 []=
    some (s2Step272ExitFAfter,s2Step272ExitFOut,shrinkRow 768 s2Step272ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step272ExitFBefore s2Step272ExitFRow 134 s2Step272ExitF_distinct s2Step272ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step272ExitFRow.payload.take 134) s2Step272ExitFRow.sign=s2Step272ExitFOut := by decide +kernel
  have hi : s2Step272ExitFRow.payload.drop 134=s2Step272ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step272ExitF_retired] at result
  exact result

private def s2Step272ExitFvAfter : Arena := s2Step272ExitFAfter

private def s2Step272ExitFvBefore : Arena := s2Step272ExitFAfter

private theorem s2Step272ExitFv_Incoming : rowsOwned s2Step272ExitFvBefore [s2Step272ExitFvRow,s2Step272ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step272ExitGRow,s2Step272ExitFRow,s2Step272ExitFvRow,s2Step272ExitGvRow] 2 s2Step272ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step272ExitFvBefore (fun q => (0≤q ∧ q<646) ∨ (647≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step272ExitFv_Outgoing : rowsOwned s2Step272ExitGvAfter [s2Step272ExitFvOut,s2Step272ExitGvOut] :=
  hmrRows_owned_drop s2Step272ExitGvAfter [s2Step272ExitGOut,s2Step272ExitFOut,s2Step272ExitFvOut,s2Step272ExitGvOut] 2 s2Step272ExitBank_outgoingOwned

private theorem s2Step272ExitFv_distinct : (s2Step272ExitFvRow.sign::s2Step272ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272ExitFv_owned : (s2Step272ExitFvRow.sign::s2Step272ExitFvRow.payload).toFinset⊆s2Step272ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step272ExitFvBefore (fun q => (0≤q ∧ q<646) ∨ (647≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272ExitFv_reserved : s2Step272ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step272ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step272ExitFv_checked : planRowResizeLog s2Step272ExitFvBefore s2Step272ExitFvRow 152 []=
    some (s2Step272ExitFvAfter,s2Step272ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step272ExitFvBefore s2Step272ExitFvAfter s2Step272ExitFvRow 152 []
    s2Step272ExitFv_distinct s2Step272ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step272ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step272ExitFvRow.payload++[]) s2Step272ExitFvRow.sign=s2Step272ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step272ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step272ExitG_Incoming : rowsOwned s2Step272ExitGBefore [s2Step272ExitGRow,s2Step272ExitFRow,s2Step272ExitFvRow,s2Step272ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step272ExitGRow,s2Step272ExitFRow,s2Step272ExitFvRow,s2Step272ExitGvRow] 0 s2Step272ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step272ExitGBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step272ExitG_Outgoing : rowsOwned s2Step272ExitGvAfter [s2Step272ExitGOut,s2Step272ExitFOut,s2Step272ExitFvOut,s2Step272ExitGvOut] :=
  hmrRows_owned_drop s2Step272ExitGvAfter [s2Step272ExitGOut,s2Step272ExitFOut,s2Step272ExitFvOut,s2Step272ExitGvOut] 0 s2Step272ExitBank_outgoingOwned

private theorem s2Step272ExitG_distinct : (s2Step272ExitGRow.sign::s2Step272ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272ExitG_owned : (s2Step272ExitGRow.sign::s2Step272ExitGRow.payload).toFinset⊆s2Step272ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step272ExitGBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272ExitG_retired : s2Step272ExitGBefore.retireSet s2Step272ExitGExtra.toFinset=s2Step272ExitGAfter := by
  unfold Arena.retireSet s2Step272ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step272ExitGBefore,s2Step272ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step272ExitG_checked : planRowResizeLog s2Step272ExitGBefore s2Step272ExitGRow 135 []=
    some (s2Step272ExitGAfter,s2Step272ExitGOut,shrinkRow 769 s2Step272ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step272ExitGBefore s2Step272ExitGRow 135 s2Step272ExitG_distinct s2Step272ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step272ExitGRow.payload.take 135) s2Step272ExitGRow.sign=s2Step272ExitGOut := by decide +kernel
  have hi : s2Step272ExitGRow.payload.drop 135=s2Step272ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step272ExitG_retired] at result
  exact result

private def s2Step272ExitGvBefore : Arena := s2Step272ExitFAfter

private theorem s2Step272ExitGv_Incoming : rowsOwned s2Step272ExitGvBefore [s2Step272ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step272ExitGRow,s2Step272ExitFRow,s2Step272ExitFvRow,s2Step272ExitGvRow] 3 s2Step272ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step272ExitGvBefore (fun q => (0≤q ∧ q<646) ∨ (647≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step272ExitGv_Outgoing : rowsOwned s2Step272ExitGvAfter [s2Step272ExitGvOut] :=
  hmrRows_owned_drop s2Step272ExitGvAfter [s2Step272ExitGOut,s2Step272ExitFOut,s2Step272ExitFvOut,s2Step272ExitGvOut] 3 s2Step272ExitBank_outgoingOwned

private theorem s2Step272ExitGv_distinct : (s2Step272ExitGvRow.sign::s2Step272ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272ExitGv_owned : (s2Step272ExitGvRow.sign::s2Step272ExitGvRow.payload).toFinset⊆s2Step272ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step272ExitGvBefore (fun q => (0≤q ∧ q<646) ∨ (647≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272ExitGv_retired : s2Step272ExitGvBefore.retireSet s2Step272ExitGvExtra.toFinset=s2Step272ExitGvAfter := by
  unfold Arena.retireSet s2Step272ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step272ExitGvBefore,s2Step272ExitFAfter,s2Step272ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step272ExitGv_checked : planRowResizeLog s2Step272ExitGvBefore s2Step272ExitGvRow 151 []=
    some (s2Step272ExitGvAfter,s2Step272ExitGvOut,shrinkRow 771 s2Step272ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step272ExitGvBefore s2Step272ExitGvRow 151 s2Step272ExitGv_distinct s2Step272ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step272ExitGvRow.payload.take 151) s2Step272ExitGvRow.sign=s2Step272ExitGvOut := by decide +kernel
  have hi : s2Step272ExitGvRow.payload.drop 151=s2Step272ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step272ExitGv_retired] at result
  exact result

private theorem s2Step272ExitBank_rows : planWindowRowsLog s2Step272ExitGBefore [(s2Step272ExitGRow,135),(s2Step272ExitFRow,134),(s2Step272ExitFvRow,152),(s2Step272ExitGvRow,151)] [[],[],[],[]]=
    some (s2Step272ExitGvAfter,[s2Step272ExitGOut,s2Step272ExitFOut,s2Step272ExitFvOut,s2Step272ExitGvOut],(shrinkRow 769 s2Step272ExitGExtra ++ (shrinkRow 768 s2Step272ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step272ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step272ExitGvAfter [] []=some (s2Step272ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step272ExitGvBefore s2Step272ExitGvAfter s2Step272ExitGvAfter
    s2Step272ExitGvRow s2Step272ExitGvOut 151 [] [] [] []
    (shrinkRow 771 s2Step272ExitGvExtra) ([]) s2Step272ExitGv_Incoming s2Step272ExitGv_checked h4 s2Step272ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step272ExitFvBefore s2Step272ExitFvAfter s2Step272ExitGvAfter
    s2Step272ExitFvRow s2Step272ExitFvOut 152 [] [(s2Step272ExitGvRow,151)] [[]] [s2Step272ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step272ExitGvExtra ++ [])) s2Step272ExitFv_Incoming s2Step272ExitFv_checked h3 s2Step272ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step272ExitFBefore s2Step272ExitFAfter s2Step272ExitGvAfter
    s2Step272ExitFRow s2Step272ExitFOut 134 [] [(s2Step272ExitFvRow,152),(s2Step272ExitGvRow,151)] [[],[]] [s2Step272ExitFvOut,s2Step272ExitGvOut]
    (shrinkRow 768 s2Step272ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step272ExitGvExtra ++ []))) s2Step272ExitF_Incoming s2Step272ExitF_checked h2 s2Step272ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step272ExitGBefore s2Step272ExitGAfter s2Step272ExitGvAfter
    s2Step272ExitGRow s2Step272ExitGOut 135 [] [(s2Step272ExitFRow,134),(s2Step272ExitFvRow,152),(s2Step272ExitGvRow,151)] [[],[],[]] [s2Step272ExitFOut,s2Step272ExitFvOut,s2Step272ExitGvOut]
    (shrinkRow 769 s2Step272ExitGExtra) ((shrinkRow 768 s2Step272ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step272ExitGvExtra ++ [])))) s2Step272ExitG_Incoming s2Step272ExitG_checked h1 s2Step272ExitG_Outgoing
  exact h0

private theorem s2Step272ExitBank_checked : compileHmrBankResizeLog .exit s2Step272ExitGBefore ⟨s2Step272ExitFRow,s2Step272ExitGRow,s2Step272ExitFvRow,s2Step272ExitGvRow⟩ ⟨134,135,152,151⟩ [[],[],[],[]]=
    some (s2Step272ExitGvAfter,⟨s2Step272ExitFOut,s2Step272ExitGOut,s2Step272ExitFvOut,s2Step272ExitGvOut⟩,(shrinkRow 769 s2Step272ExitGExtra ++ (shrinkRow 768 s2Step272ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step272ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step272ExitBank_rows]
  rfl

private theorem s2Step272Add0_apart : Disjoint s2Step272Add0Arena.live s2Step272Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step272Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272Add0_card : s2Step272Add0Arena.live.card=899 := by
  decide +kernel

private theorem s2Step272Add0_borrowed : s2Step272Add0Arena.checkBorrow (hmrHybridCount s2Step272Add0Arena s2Step272Add0B.length) s2Step272Add0Work=some s2Step272Add0During := by
  have len : s2Step272Add0Work.length=hmrHybridCount s2Step272Add0Arena s2Step272Add0B.length := by
    rw [hmrHybridCount,s2Step272Add0_card]
    decide +kernel
  have nd : s2Step272Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step272Add0Arena s2Step272Add0During s2Step272Add0Work.toFinset s2Step272Add0_bounded s2Step272Add0_apart rfl

private theorem s2Step272Add0_distinct : (788::816::841::(s2Step272Add0A++s2Step272Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272Add0_owned : (788::816::841::(s2Step272Add0A++s2Step272Add0B)).toFinset⊆s2Step272Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step272Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272Add0_checked : compileHmrHybridCinLog s2Step272Add0Arena 816 788 841 s2Step272Add0A s2Step272Add0B s2Step272Add0Work=some s2Step272Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step272Add0Arena s2Step272Add0During 816 788 841 s2Step272Add0A s2Step272Add0B s2Step272Add0Work
    (by decide +kernel) (by decide +kernel) s2Step272Add0_distinct
    (fun q hq => s2Step272Add0_owned (List.mem_toFinset.mpr hq)) s2Step272Add0_borrowed

private theorem s2Step272Add1_apart : Disjoint s2Step272Add1Arena.live s2Step272Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step272Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272Add1_card : s2Step272Add1Arena.live.card=899 := by
  decide +kernel

private theorem s2Step272Add1_borrowed : s2Step272Add1Arena.checkBorrow (hmrHybridCount s2Step272Add1Arena s2Step272Add1B.length) s2Step272Add1Work=some s2Step272Add1During := by
  have len : s2Step272Add1Work.length=hmrHybridCount s2Step272Add1Arena s2Step272Add1B.length := by
    rw [hmrHybridCount,s2Step272Add1_card]
    decide +kernel
  have nd : s2Step272Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step272Add1Arena s2Step272Add1During s2Step272Add1Work.toFinset s2Step272Add1_bounded s2Step272Add1_apart rfl

private theorem s2Step272Add1_distinct : (788::816::841::(s2Step272Add1A++s2Step272Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272Add1_owned : (788::816::841::(s2Step272Add1A++s2Step272Add1B)).toFinset⊆s2Step272Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step272Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272Add1_checked : compileHmrHybridCinLog s2Step272Add1Arena 816 788 841 s2Step272Add1A s2Step272Add1B s2Step272Add1Work=some s2Step272Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step272Add1Arena s2Step272Add1During 816 788 841 s2Step272Add1A s2Step272Add1B s2Step272Add1Work
    (by decide +kernel) (by decide +kernel) s2Step272Add1_distinct
    (fun q hq => s2Step272Add1_owned (List.mem_toFinset.mpr hq)) s2Step272Add1_borrowed

private theorem s2Step272F4_apart : Disjoint (s2Step272Add0A++s2Step272Add0B).toFinset (s2Step272Add1A++s2Step272Add1B).toFinset := by
  have nd : ((s2Step272Add0A++s2Step272Add0B)++(s2Step272Add1A++s2Step272Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step272F4_carry : s2Step272F4FlagArena.checkBorrow 1 [841]=some s2Step272Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step272F4FlagArena,s2Step272HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step272F4FlagArena,s2Step272HeadFvAfter,s2Step272Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step272F4_distinct : (822::816::788::841::((s2Step272Add0A++s2Step272Add1A)++(s2Step272Add0B++s2Step272Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272F4_flag : s2Step272HeadFvAfter.checkBorrow 1 [788]=some s2Step272F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step272HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step272F4_owned : (822::816::((s2Step272Add0A++s2Step272Add1A)++(s2Step272Add0B++s2Step272Add1B))).toFinset⊆s2Step272HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step272HeadFvAfter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272F4_checked : compileHmrHybridF4Log s2Step272HeadFvAfter 822 816 s2Step272Add0A s2Step272Add0B s2Step272Add1A s2Step272Add1B [788] [841] s2Step272Add0Work s2Step272Add1Work=some s2Step272F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step272HeadFvAfter s2Step272F4FlagArena s2Step272Add0Arena s2Step272Add0During s2Step272Add1During 822 816
    s2Step272Add0A s2Step272Add0B s2Step272Add1A s2Step272Add1B [788] [841] s2Step272Add0Work s2Step272Add1Work
    (fun q hq => s2Step272F4_owned (List.mem_toFinset.mpr hq)) s2Step272F4_flag s2Step272F4_carry
    s2Step272F4_distinct s2Step272F4_apart s2Step272Add0_checked s2Step272Add1_checked

private theorem s2Step272Front_branch : s2Step272FrontSigmaArena.checkBorrow 1 [816]=some s2Step272HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step272FrontSigmaArena,s2Step272EntryGvAfter,s2Step272EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step272FrontSigmaArena,s2Step272EntryGvAfter,s2Step272EntryFBefore,s2Step272HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step272Front_entry : HmrFrontEntryValid s2Step272EntryFBefore s2Step272FrontBank 135 151 ⟨134,135,152,151⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step272FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step272EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step272EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step272FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step272Front_sigma : s2Step272EntryGvAfter.checkBorrow 1 [822]=some s2Step272FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step272EntryGvAfter,s2Step272EntryFBefore,arenaWires]
  · rfl

private def s2Step272HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272HeadFBefore : Arena := s2Step272HeadGAfter

private def s2Step272HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646],768⟩

private def s2Step272HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836],770⟩

private def s2Step272HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134],769⟩

private def s2Step272HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779],771⟩

private theorem s2Step272HeadBank_incomingDistinct : ([s2Step272HeadGRow,s2Step272HeadFRow,s2Step272HeadGvRow,s2Step272HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272HeadF_Incoming : rowsOwned s2Step272HeadFBefore [s2Step272HeadFRow,s2Step272HeadGvRow,s2Step272HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step272HeadGRow,s2Step272HeadFRow,s2Step272HeadGvRow,s2Step272HeadFvRow] 1 s2Step272HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step272HeadFBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step272HeadBank_outgoingOwned : rowsOwned s2Step272HeadFvAfter [s2Step272HeadGOut,s2Step272HeadFOut,s2Step272HeadGvOut,s2Step272HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step272HeadFvAfter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step272HeadF_Outgoing : rowsOwned s2Step272HeadFvAfter [s2Step272HeadFOut,s2Step272HeadGvOut,s2Step272HeadFvOut] :=
  hmrRows_owned_drop s2Step272HeadFvAfter [s2Step272HeadGOut,s2Step272HeadFOut,s2Step272HeadGvOut,s2Step272HeadFvOut] 1 s2Step272HeadBank_outgoingOwned

private theorem s2Step272HeadF_distinct : (s2Step272HeadFRow.sign::s2Step272HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272HeadF_owned : (s2Step272HeadFRow.sign::s2Step272HeadFRow.payload).toFinset⊆s2Step272HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step272HeadFBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272HeadF_reserved : s2Step272HeadFBefore.reserve s2Step272HeadFFresh.toFinset=some s2Step272HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step272HeadFFresh,arenaWires]
  · norm_num [s2Step272HeadFBefore,s2Step272HeadGAfter,s2Step272HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step272HeadFAfter,s2Step272HeadFBefore,s2Step272HeadGAfter,s2Step272HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step272HeadF_checked : planRowResizeLog s2Step272HeadFBefore s2Step272HeadFRow 136 s2Step272HeadFFresh=
    some (s2Step272HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 891],768⟩,growRow 768 s2Step272HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step272HeadFBefore s2Step272HeadFAfter s2Step272HeadFRow 136 s2Step272HeadFFresh
    s2Step272HeadF_distinct s2Step272HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step272HeadF_reserved
  have rowEq : WindowRow.mk (s2Step272HeadFRow.payload++s2Step272HeadFFresh) s2Step272HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 891],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step272HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step272HeadFvBefore : Arena := s2Step272HeadGvAfter

private theorem s2Step272HeadFv_Incoming : rowsOwned s2Step272HeadFvBefore [s2Step272HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step272HeadGRow,s2Step272HeadFRow,s2Step272HeadGvRow,s2Step272HeadFvRow] 3 s2Step272HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step272HeadFvBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step272HeadFv_Outgoing : rowsOwned s2Step272HeadFvAfter [s2Step272HeadFvOut] :=
  hmrRows_owned_drop s2Step272HeadFvAfter [s2Step272HeadGOut,s2Step272HeadFOut,s2Step272HeadGvOut,s2Step272HeadFvOut] 3 s2Step272HeadBank_outgoingOwned

private theorem s2Step272HeadFv_distinct : (s2Step272HeadFvRow.sign::s2Step272HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272HeadFv_owned : (s2Step272HeadFvRow.sign::s2Step272HeadFvRow.payload).toFinset⊆s2Step272HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step272HeadFvBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272HeadFv_reserved : s2Step272HeadFvBefore.reserve s2Step272HeadFvFresh.toFinset=some s2Step272HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step272HeadFvFresh,arenaWires]
  · norm_num [s2Step272HeadFvBefore,s2Step272HeadGvAfter,s2Step272HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step272HeadFvAfter,s2Step272HeadFvBefore,s2Step272HeadGvAfter,s2Step272HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step272HeadFv_checked : planRowResizeLog s2Step272HeadFvBefore s2Step272HeadFvRow 152 s2Step272HeadFvFresh=
    some (s2Step272HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786],770⟩,growRow 770 s2Step272HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step272HeadFvBefore s2Step272HeadFvAfter s2Step272HeadFvRow 152 s2Step272HeadFvFresh
    s2Step272HeadFv_distinct s2Step272HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step272HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step272HeadFvRow.payload++s2Step272HeadFvFresh) s2Step272HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step272HeadG_Incoming : rowsOwned s2Step272HeadGBefore [s2Step272HeadGRow,s2Step272HeadFRow,s2Step272HeadGvRow,s2Step272HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step272HeadGRow,s2Step272HeadFRow,s2Step272HeadGvRow,s2Step272HeadFvRow] 0 s2Step272HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step272HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step272HeadG_Outgoing : rowsOwned s2Step272HeadFvAfter [s2Step272HeadGOut,s2Step272HeadFOut,s2Step272HeadGvOut,s2Step272HeadFvOut] :=
  hmrRows_owned_drop s2Step272HeadFvAfter [s2Step272HeadGOut,s2Step272HeadFOut,s2Step272HeadGvOut,s2Step272HeadFvOut] 0 s2Step272HeadBank_outgoingOwned

private theorem s2Step272HeadG_distinct : (s2Step272HeadGRow.sign::s2Step272HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272HeadG_owned : (s2Step272HeadGRow.sign::s2Step272HeadGRow.payload).toFinset⊆s2Step272HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step272HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272HeadG_reserved : s2Step272HeadGBefore.reserve s2Step272HeadGFresh.toFinset=some s2Step272HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step272HeadGFresh,arenaWires]
  · norm_num [s2Step272HeadGBefore,s2Step272HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step272HeadGAfter,s2Step272HeadGBefore,s2Step272HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step272HeadG_checked : planRowResizeLog s2Step272HeadGBefore s2Step272HeadGRow 136 s2Step272HeadGFresh=
    some (s2Step272HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 781],769⟩,growRow 769 s2Step272HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step272HeadGBefore s2Step272HeadGAfter s2Step272HeadGRow 136 s2Step272HeadGFresh
    s2Step272HeadG_distinct s2Step272HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step272HeadG_reserved
  have rowEq : WindowRow.mk (s2Step272HeadGRow.payload++s2Step272HeadGFresh) s2Step272HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step272HeadGvBefore : Arena := s2Step272HeadFAfter

private theorem s2Step272HeadGv_Incoming : rowsOwned s2Step272HeadGvBefore [s2Step272HeadGvRow,s2Step272HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step272HeadGRow,s2Step272HeadFRow,s2Step272HeadGvRow,s2Step272HeadFvRow] 2 s2Step272HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step272HeadGvBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step272HeadGv_Outgoing : rowsOwned s2Step272HeadFvAfter [s2Step272HeadGvOut,s2Step272HeadFvOut] :=
  hmrRows_owned_drop s2Step272HeadFvAfter [s2Step272HeadGOut,s2Step272HeadFOut,s2Step272HeadGvOut,s2Step272HeadFvOut] 2 s2Step272HeadBank_outgoingOwned

private theorem s2Step272HeadGv_distinct : (s2Step272HeadGvRow.sign::s2Step272HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step272HeadGv_owned : (s2Step272HeadGvRow.sign::s2Step272HeadGvRow.payload).toFinset⊆s2Step272HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step272HeadGvBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (906≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step272HeadGv_reserved : s2Step272HeadGvBefore.reserve s2Step272HeadGvFresh.toFinset=some s2Step272HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step272HeadGvFresh,arenaWires]
  · norm_num [s2Step272HeadGvBefore,s2Step272HeadFAfter,s2Step272HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step272HeadGvAfter,s2Step272HeadGvBefore,s2Step272HeadFAfter,s2Step272HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step272HeadGv_checked : planRowResizeLog s2Step272HeadGvBefore s2Step272HeadGvRow 152 s2Step272HeadGvFresh=
    some (s2Step272HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 844],771⟩,growRow 771 s2Step272HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step272HeadGvBefore s2Step272HeadGvAfter s2Step272HeadGvRow 152 s2Step272HeadGvFresh
    s2Step272HeadGv_distinct s2Step272HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step272HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step272HeadGvRow.payload++s2Step272HeadGvFresh) s2Step272HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 844],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step272HeadBank_rows : planWindowRowsLog s2Step272HeadGBefore [(s2Step272HeadGRow,136),(s2Step272HeadFRow,136),(s2Step272HeadGvRow,152),(s2Step272HeadFvRow,152)] [s2Step272HeadGFresh,s2Step272HeadFFresh,s2Step272HeadGvFresh,s2Step272HeadFvFresh]=
    some (s2Step272HeadFvAfter,[s2Step272HeadGOut,s2Step272HeadFOut,s2Step272HeadGvOut,s2Step272HeadFvOut],(growRow 769 s2Step272HeadGFresh ++ (growRow 768 s2Step272HeadFFresh ++ (growRow 771 s2Step272HeadGvFresh ++ (growRow 770 s2Step272HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step272HeadFvAfter [] []=some (s2Step272HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step272HeadFvBefore s2Step272HeadFvAfter s2Step272HeadFvAfter
    s2Step272HeadFvRow s2Step272HeadFvOut 152 s2Step272HeadFvFresh [] [] []
    (growRow 770 s2Step272HeadFvFresh) ([]) s2Step272HeadFv_Incoming s2Step272HeadFv_checked h4 s2Step272HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step272HeadGvBefore s2Step272HeadGvAfter s2Step272HeadFvAfter
    s2Step272HeadGvRow s2Step272HeadGvOut 152 s2Step272HeadGvFresh [(s2Step272HeadFvRow,152)] [s2Step272HeadFvFresh] [s2Step272HeadFvOut]
    (growRow 771 s2Step272HeadGvFresh) ((growRow 770 s2Step272HeadFvFresh ++ [])) s2Step272HeadGv_Incoming s2Step272HeadGv_checked h3 s2Step272HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step272HeadFBefore s2Step272HeadFAfter s2Step272HeadFvAfter
    s2Step272HeadFRow s2Step272HeadFOut 136 s2Step272HeadFFresh [(s2Step272HeadGvRow,152),(s2Step272HeadFvRow,152)] [s2Step272HeadGvFresh,s2Step272HeadFvFresh] [s2Step272HeadGvOut,s2Step272HeadFvOut]
    (growRow 768 s2Step272HeadFFresh) ((growRow 771 s2Step272HeadGvFresh ++ (growRow 770 s2Step272HeadFvFresh ++ []))) s2Step272HeadF_Incoming s2Step272HeadF_checked h2 s2Step272HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step272HeadGBefore s2Step272HeadGAfter s2Step272HeadFvAfter
    s2Step272HeadGRow s2Step272HeadGOut 136 s2Step272HeadGFresh [(s2Step272HeadFRow,136),(s2Step272HeadGvRow,152),(s2Step272HeadFvRow,152)] [s2Step272HeadFFresh,s2Step272HeadGvFresh,s2Step272HeadFvFresh] [s2Step272HeadFOut,s2Step272HeadGvOut,s2Step272HeadFvOut]
    (growRow 769 s2Step272HeadGFresh) ((growRow 768 s2Step272HeadFFresh ++ (growRow 771 s2Step272HeadGvFresh ++ (growRow 770 s2Step272HeadFvFresh ++ [])))) s2Step272HeadG_Incoming s2Step272HeadG_checked h1 s2Step272HeadG_Outgoing
  exact h0

private theorem s2Step272HeadBank_checked : compileHmrBankResizeLog .headroom s2Step272HeadGBefore ⟨s2Step272HeadFRow,s2Step272HeadGRow,s2Step272HeadFvRow,s2Step272HeadGvRow⟩ ⟨136,136,152,152⟩ [s2Step272HeadGFresh,s2Step272HeadFFresh,s2Step272HeadGvFresh,s2Step272HeadFvFresh]=
    some (s2Step272HeadFvAfter,⟨s2Step272HeadFOut,s2Step272HeadGOut,s2Step272HeadFvOut,s2Step272HeadGvOut⟩,(growRow 769 s2Step272HeadGFresh ++ (growRow 768 s2Step272HeadFFresh ++ (growRow 771 s2Step272HeadGvFresh ++ (growRow 770 s2Step272HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step272HeadBank_rows]
  rfl

private theorem s2Step272Front_checked : compileHmrSourceFrontLog s2Step272EntryFBefore s2Step272FrontBank 135 151 ⟨134,135,152,151⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step272FrontLog=some s2Step272FrontPlan := by
  have pairEq : s2Step272FrontPair=⟨s2Step272HeadFRow,s2Step272HeadGRow,s2Step272HeadFvRow,s2Step272HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step272FrontHead=⟨s2Step272ExitFRow,s2Step272ExitGRow,s2Step272ExitFvRow,s2Step272ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step272Add0A=s2Step272FrontHead.f.wires := by decide +kernel
  have gEq : s2Step272Add0B=s2Step272FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step272Add1A=s2Step272FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step272Add1B=s2Step272FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step272EntryFBefore s2Step272FrontBank 135 151 ⟨134,135,152,151⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step272FrontLog s2Step272FrontPlan
  · exact s2Step272Front_entry
  · exact s2Step272EntryBank_checked
  · exact s2Step272Front_sigma
  · rfl
  · exact s2Step272Front_branch
  · rfl
  · simpa only [s2Step272FrontPlan,pairEq] using s2Step272HeadBank_checked
  · simpa only [s2Step272FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step272F4_checked
  · exact s2Step272Counter_checked
  · rfl
  · simpa only [s2Step272FrontPlan,headEq] using s2Step272ExitBank_checked

private theorem s2Step272Complete_explicit_checked : compileHmrEarlyStepLog s2Step272EntryFBefore s2Step272FrontBank 135 151 ⟨134,135,152,151⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step272CompleteLog=some s2Step272CompletePlan := by
  let Q := s2Step272EarlyControlPlan
  have hq := s2Step272EarlyControl_plan_checked
  have fv1 : s2Step272CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step272CompleteOut.fv.payload[2]?.getD s2Step272CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step272CompleteOut.fv.payload[3]?.getD s2Step272CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step272CompleteOut.fv.payload[4]?.getD s2Step272CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step272EntryFBefore s2Step272EarlyControlArena s2Step272FrontBank 135 151 ⟨134,135,152,151⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 53 s2Step272CompleteLog s2Step272FrontPlan Q
    s2Step272Front_checked s2Step272Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step272Complete_owned s2Step272Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step272EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 777 822 s2Step272CompleteOut.fv.second (s2Step272CompleteOut.fv.payload[2]?.getD s2Step272CompleteOut.fv.sign) (s2Step272CompleteOut.fv.payload[3]?.getD s2Step272CompleteOut.fv.sign) (s2Step272CompleteOut.fv.payload[4]?.getD s2Step272CompleteOut.fv.sign) 816 53 s2Step272EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep272Arena : Arena := s2Step272EntryFBefore
def s2PrivateStep272Bank : WindowBank := s2Step272FrontBank
def s2PrivateStep272Spec : HmrSourceWalkStepLog := ⟨135,151,⟨134,135,152,151⟩,53,.early s2Step272CompleteLog⟩
def s2PrivateStep272Plan : HmrSourceStepPlan := .early s2Step272CompletePlan
theorem s2PrivateStep272_source : s2PrivateStep272Spec=s2ObservedLogs272[0] := rfl
theorem s2PrivateStep272_checked : compileHmrSourceStepLog s2PrivateStep272Arena s2PrivateStep272Bank
    s2PrivateStep272Spec.fgWidth s2PrivateStep272Spec.vWidth s2PrivateStep272Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]
    6 498 272 s2PrivateStep272Spec.need none s2PrivateStep272Spec.log=some s2PrivateStep272Plan := by
  change compileHmrSourceStepLog s2Step272EntryFBefore s2Step272FrontBank 135 151 ⟨134,135,152,151⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] 6 498 272 53 none (.early s2Step272CompleteLog)=some (.early s2Step272CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 272<498)]
  rw [s2Step272Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
