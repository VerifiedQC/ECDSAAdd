import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep279
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

private def s2Step281CompleteMoves : List (Wire × Wire) := [(796,641),(780,642)]

private def s2Step281EarlyControlLog : HmrEarlyControlLog := ⟨[780, 796, 815, 798, 845],[891],[830],[800, 894, 896, 901, 903, 904],[]⟩

private def s2Step281FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[798], [815], [788], [839]],[[], [], [], []]⟩,[781],[783],[845],[891],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[845, 891, 830, 800]⟩

private def s2Step281CompleteLog : HmrEarlyStepLog := ⟨s2Step281FrontLog,s2Step281CompleteMoves,s2Step281EarlyControlLog⟩

private def s2Step281ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640],768⟩

private def s2Step281ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839],770⟩

private def s2Step281ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791],769⟩

private def s2Step281ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩

private def s2Step281FrontOut : WindowBank := ⟨s2Step281ExitFOut,s2Step281ExitGOut,s2Step281ExitFvOut,s2Step281ExitGvOut⟩

private def s2Step281CompleteOut : WindowBank := s2Step281FrontOut.repacked s2Step281CompleteMoves

private def s2Step281EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step281EarlyControlPositiveArena,[891],s2Step281EarlyControlEqualityArena,[830],⟨⟨781,false⟩,[⟨⟨891,false⟩,830⟩]⟩⟩

private def s2Step281EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,796⟩,⟨⟨775,false⟩,815⟩,⟨⟨776,false⟩,798⟩,⟨⟨777,false⟩,845⟩]⟩

private def s2Step281EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step281EarlyControlZeroArena,s2Step281EarlyControlZeroPlan,s2Step281EarlyControlClassPlan,s2Step281EarlyControlFlagArena,s2Step281EarlyControlFittedArena,s2Step281EarlyControlHistoryArena,s2Step281EarlyControlSigmaArena,s2Step281EarlyControlOutputArena,s2Step281EarlyControlLog⟩

private def s2Step281CounterWork : List Wire := [845, 891, 830, 800]

private theorem s2Step281Counter_bounded : s2Step281CounterWork.toFinset⊆arenaWires := by norm_num [s2Step281CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step281HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281CounterDuring : Arena := ⟨s2Step281HeadFvAfter.live∪s2Step281CounterWork.toFinset,Finset.union_subset s2Step281HeadFvAfter.bounded s2Step281Counter_bounded⟩

private def s2Step281EntryFFresh : List Wire := []

private def s2Step281EntryFvFresh : List Wire := []

private def s2Step281EntryGFresh : List Wire := []

private def s2Step281EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281EntryGvAfter : Arena := s2Step281EntryFBefore

private def s2Step281EntryGvFresh : List Wire := []

private def s2Step281ExitFExtra : List Wire := [641, 642, 815]

private def s2Step281ExitGExtra : List Wire := [798]

private def s2Step281ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<641) ∨ (643≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281ExitGvAfter : Arena := s2Step281ExitFAfter

private def s2Step281Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step281Add0_bounded : s2Step281Add0Work.toFinset⊆arenaWires := by
  have h : s2Step281Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step281Add0During : Arena := ⟨s2Step281Add0Arena.live∪s2Step281Add0Work.toFinset,Finset.union_subset s2Step281Add0Arena.bounded s2Step281Add0_bounded⟩

private def s2Step281Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step281Add1_bounded : s2Step281Add1Work.toFinset⊆arenaWires := by
  have h : s2Step281Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step281Add1During : Arena := ⟨s2Step281Add1Arena.live∪s2Step281Add1Work.toFinset,Finset.union_subset s2Step281Add1Arena.bounded s2Step281Add1_bounded⟩

private def s2Step281F4FlagArena : Arena := ⟨s2Step281HeadFvAfter.live∪{845},Finset.union_subset s2Step281HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step281F4Plan : HmrHybridF4Plan := ⟨s2Step281F4FlagArena,[845],s2Step281Add0Arena,[891],s2Step281Add0During,s2Step281Add0Work,s2Step281Add1During,s2Step281Add1Work⟩

private def s2Step281HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 815],768⟩

private def s2Step281HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839],770⟩

private def s2Step281HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 798],769⟩

private def s2Step281HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩

private def s2Step281FrontHead : WindowBank := ⟨s2Step281HeadFOut,s2Step281HeadGOut,s2Step281HeadFvOut,s2Step281HeadGvOut⟩

private def s2Step281EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642],768⟩

private def s2Step281EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩

private def s2Step281EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791],769⟩

private def s2Step281EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844],771⟩

private def s2Step281FrontPair : WindowBank := ⟨s2Step281EntryFOut,s2Step281EntryGOut,s2Step281EntryFvOut,s2Step281EntryGvOut⟩

private def s2Step281FrontSigmaArena : Arena := ⟨s2Step281EntryGvAfter.live∪{781},Finset.union_subset s2Step281EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step281HeadFFresh : List Wire := [815]

private def s2Step281HeadFvFresh : List Wire := [839]

private def s2Step281HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281HeadGFresh : List Wire := [798]

private def s2Step281HeadGvFresh : List Wire := [788]

private def s2Step281FrontPlan : HmrSourceFront := ⟨s2Step281EntryGvAfter,s2Step281FrontPair,(growRow 768 s2Step281EntryFFresh ++ (growRow 769 s2Step281EntryGFresh ++ (growRow 770 s2Step281EntryFvFresh ++ (growRow 771 s2Step281EntryGvFresh ++ [])))),s2Step281FrontSigmaArena,[781],s2Step281HeadGBefore,[783],
  s2Step281HeadFvAfter,s2Step281FrontHead,(growRow 769 s2Step281HeadGFresh ++ (growRow 768 s2Step281HeadFFresh ++ (growRow 771 s2Step281HeadGvFresh ++ (growRow 770 s2Step281HeadFvFresh ++ [])))),s2Step281F4Plan,s2Step281CounterDuring,s2Step281CounterWork,s2Step281ExitGvAfter,s2Step281FrontOut,(shrinkRow 769 s2Step281ExitGExtra ++ (shrinkRow 768 s2Step281ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step281CompletePlan : HmrEarlyStepPlan := ⟨s2Step281FrontPlan,s2Step281EarlyControlArena,s2Step281EarlyControlPlan,s2Step281CompleteMoves⟩

private theorem s2Step281Complete_apart : List.Disjoint (s2Step281CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [781, 783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := by
  have nd : ((s2Step281CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[781, 783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step281Complete_owned : (s2Step281CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step281EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step281EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step281CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,642),(643,796),(797,798),(799,800),(801,815),(816,830),(831,845),(846,891),(892,894),(895,896),(897,901),(902,903),(905,907)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step281CompleteRelocationMove0Borrowed : Arena := ⟨s2Step281ExitGvAfter.live∪{641},Finset.union_subset s2Step281ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step281CompleteRelocationMove1Borrowed : Arena := ⟨s2Step281CompleteRelocationMove0After.live∪{642},Finset.union_subset s2Step281CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step281CompleteRelocation_move0_owned : 796∈s2Step281ExitGvAfter.live := by norm_num [s2Step281ExitGvAfter,s2Step281ExitFAfter,arenaWires]

private theorem s2Step281CompleteRelocation_move0_reserve : s2Step281ExitGvAfter.reserve {641}=some s2Step281CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step281ExitGvAfter,s2Step281ExitFAfter,arenaWires]
  · rfl

private theorem s2Step281CompleteRelocation_move0_retire : s2Step281CompleteRelocationMove0Borrowed.retireSet {796}=s2Step281CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step281CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step281CompleteRelocationMove0Borrowed,s2Step281ExitGvAfter,s2Step281ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step281CompleteRelocation_move1_owned : 780∈s2Step281CompleteRelocationMove0After.live := by norm_num [s2Step281CompleteRelocationMove0After,arenaWires]

private theorem s2Step281CompleteRelocation_move1_reserve : s2Step281CompleteRelocationMove0After.reserve {642}=some s2Step281CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step281CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step281CompleteRelocation_move1_retire : s2Step281CompleteRelocationMove1Borrowed.retireSet {780}=s2Step281EarlyControlArena := by
  unfold Arena.retireSet s2Step281EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step281CompleteRelocationMove1Borrowed,s2Step281CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step281CompleteRelocation_checked : s2Step281ExitGvAfter.checkRepack [(796,641),(780,642)]=some s2Step281EarlyControlArena := by
  have tail2 : s2Step281EarlyControlArena.checkRepack []=some s2Step281EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step281CompleteRelocationMove0After s2Step281CompleteRelocationMove1Borrowed s2Step281EarlyControlArena s2Step281EarlyControlArena 780 642 []
    s2Step281CompleteRelocation_move1_owned s2Step281CompleteRelocation_move1_reserve s2Step281CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step281ExitGvAfter s2Step281CompleteRelocationMove0Borrowed s2Step281CompleteRelocationMove0After s2Step281EarlyControlArena 796 641 [(780,642)]
    s2Step281CompleteRelocation_move0_owned s2Step281CompleteRelocation_move0_reserve s2Step281CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step281Complete_repack : s2Step281ExitGvAfter.checkRepack s2Step281CompleteMoves=some s2Step281EarlyControlArena := by
  simpa only [s2Step281CompleteMoves] using s2Step281CompleteRelocation_checked

private theorem s2Step281EarlyControl_branchOwned : ([783] : List Wire).toFinset⊆s2Step281EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step281EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281EarlyControl_branch : compileHmrBranchRetirement s2Step281EarlyControlSigmaArena 783=some s2Step281EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step281EarlyControl_branchOwned
  · ext q
    simp [s2Step281EarlyControlOutputArena,s2Step281EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step281EarlyControl_classEqualityBorrow : s2Step281EarlyControlPositiveArena.checkBorrow (([781, 891] : List Wire).length-1) s2Step281EarlyControlLog.classWork=some s2Step281EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step281EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step281EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step281EarlyControlEqualityArena,s2Step281EarlyControlPositiveArena,s2Step281EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step281EarlyControl_classEqualityOwned : ([781, 891] : List Wire).toFinset⊆s2Step281EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step281EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281EarlyControl_classEquality : compileHmrEqualityLog s2Step281EarlyControlPositiveArena [781, 891] 0 s2Step281EarlyControlLog.classWork=some (s2Step281EarlyControlEqualityArena,s2Step281EarlyControlLog.classWork,s2Step281EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step281EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step281EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step281EarlyControl_classOwned : ([777, 845, 781] : List Wire).toFinset⊆s2Step281EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step281EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281EarlyControl_positiveBorrow : s2Step281EarlyControlZeroArena.checkBorrow (1) s2Step281EarlyControlLog.positiveWork=some s2Step281EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step281EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step281EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step281EarlyControlPositiveArena,s2Step281EarlyControlZeroArena,s2Step281EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step281EarlyControl_class : compileHmrSourceClassLog s2Step281EarlyControlZeroArena false 777 s2Step281EarlyControlZeroPlan.top 0 781 s2Step281EarlyControlLog.positiveWork s2Step281EarlyControlLog.classWork=some s2Step281EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step281EarlyControlClassPlan s2Step281EarlyControlZeroArena false 777 s2Step281EarlyControlZeroPlan.top 0 781
  constructor
  · decide +kernel
  · exact s2Step281EarlyControl_classOwned
  · exact s2Step281EarlyControl_positiveBorrow
  · exact s2Step281EarlyControl_classEquality

private theorem s2Step281EarlyControl_entryRecordOwned : ([783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step281EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step281EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281EarlyControl_entrySigmaOwned : ([781, 254] : List Wire).toFinset⊆s2Step281EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step281EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281EarlyControl_fitBorrow : s2Step281EarlyControlFlagArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step281EarlyControlLog.recordFresh=some s2Step281EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step281EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step281EarlyControlFlagArena (fun q => (0≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step281EarlyControlFittedArena,s2Step281EarlyControlFlagArena,s2Step281EarlyControlLog,arenaWires]

private theorem s2Step281EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step281EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step281EarlyControlFlagArena (fun q => (0≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281EarlyControl_fit : compileHmrRecordGrowLog s2Step281EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step281EarlyControlLog.recordFresh=some s2Step281EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step281EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step281EarlyControl_fitBorrow

private theorem s2Step281EarlyControl_flagsBorrow : s2Step281EarlyControlEqualityArena.checkBorrow (6) s2Step281EarlyControlLog.flagWork=some s2Step281EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step281EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step281EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step281EarlyControlFlagArena,s2Step281EarlyControlEqualityArena,s2Step281EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step281EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s2Step281EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step281EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281EarlyControl_flags : compileHmrFlagsLog s2Step281EarlyControlClassPlan.equalityArena s2Step281EarlyControlClassPlan.equality.top 253 252 251 s2Step281EarlyControlLog.flagWork=some s2Step281EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step281EarlyControl_flagsOwned⟩
  · exact s2Step281EarlyControl_flagsBorrow

private theorem s2Step281EarlyControl_historyBorrow : s2Step281EarlyControlArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step281EarlyControlLog.recordFresh=some s2Step281EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step281EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step281EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step281EarlyControlHistoryArena,s2Step281EarlyControlArena,s2Step281EarlyControlLog,arenaWires]

private theorem s2Step281EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step281EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step281EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281EarlyControl_history : compileHmrRecordGrowLog s2Step281EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step281EarlyControlLog.recordFresh=some s2Step281EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step281EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step281EarlyControl_historyBorrow

private theorem s2Step281EarlyControl_sigmaOwned : ([254, 781] : List Wire).toFinset⊆s2Step281EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step281EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281EarlyControl_sigmaReleaseOwned : ([781] : List Wire).toFinset⊆s2Step281EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step281EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281EarlyControl_sigmaRelease : s2Step281EarlyControlHistoryArena.release {781} (fun _ => false)=some s2Step281EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step281EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step281EarlyControlSigmaArena,s2Step281EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step281EarlyControl_sigma : compileHmrSigmaDropLog s2Step281EarlyControlHistoryArena false 0 0 254 781 []=some s2Step281EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step281EarlyControl_sigmaOwned⟩
  · exact s2Step281EarlyControl_sigmaRelease

private theorem s2Step281EarlyControl_zeroBorrow : s2Step281EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step281EarlyControlLog.zeroWork=some s2Step281EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step281EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step281EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step281EarlyControlZeroArena,s2Step281EarlyControlArena,s2Step281EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step281EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step281EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step281EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281EarlyControl_zero : compileHmrEqualityLog s2Step281EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step281EarlyControlLog.zeroWork=some (s2Step281EarlyControlZeroArena,s2Step281EarlyControlLog.zeroWork,s2Step281EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step281EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step281EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step281EarlyControl_logged : s2Step281EarlyControlPlan.Logged s2Step281EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 781 254 253 252 251 783 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step281EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step281EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step281EarlyControl_zero
  · exact s2Step281EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step281EarlyControl_flags
  · exact s2Step281EarlyControl_fit
  · exact s2Step281EarlyControl_history
  · exact s2Step281EarlyControl_sigma
  · exact s2Step281EarlyControl_branch

private theorem s2Step281EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step281EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 781 254 253 252 251 783 54 s2Step281EarlyControlLog=some s2Step281EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step281EarlyControlPlan s2Step281EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 781 254 253 252 251 783 54 s2Step281EarlyControl_logged

private def s2Step281EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642],768⟩

private def s2Step281EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩

private def s2Step281EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791],769⟩

private def s2Step281EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844],771⟩

private def s2Step281FrontBank : WindowBank := ⟨s2Step281EntryFRow,s2Step281EntryGRow,s2Step281EntryFvRow,s2Step281EntryGvRow⟩

private def s2Step281Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 815, 768]

private def s2Step281Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 798, 769]

private def s2Step281Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 770]

private def s2Step281Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 771]

private theorem s2Step281Counter_apart : Disjoint s2Step281HeadFvAfter.live s2Step281CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step281HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281Counter_borrowed : s2Step281HeadFvAfter.checkBorrow 4 s2Step281CounterWork=some s2Step281CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step281HeadFvAfter s2Step281CounterDuring s2Step281CounterWork.toFinset s2Step281Counter_bounded s2Step281Counter_apart rfl

private theorem s2Step281Counter_owned : (781::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step281HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step281HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281Counter_checked : compileHmrCounterStepLog s2Step281HeadFvAfter true 781 [772, 773, 774, 775, 776, 777] s2Step281CounterWork=some s2Step281CounterDuring := by
  have owned : ∀q∈781::[772, 773, 774, 775, 776, 777],q∈s2Step281HeadFvAfter.live := fun q hq => s2Step281Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step281Counter_borrowed

private def s2Step281EntryFAfter : Arena := s2Step281EntryFBefore

private theorem s2Step281EntryBank_incomingDistinct : ([s2Step281EntryFRow,s2Step281EntryGRow,s2Step281EntryFvRow,s2Step281EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281EntryF_Incoming : rowsOwned s2Step281EntryFBefore [s2Step281EntryFRow,s2Step281EntryGRow,s2Step281EntryFvRow,s2Step281EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step281EntryFRow,s2Step281EntryGRow,s2Step281EntryFvRow,s2Step281EntryGvRow] 0 s2Step281EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step281EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step281EntryBank_outgoingOwned : rowsOwned s2Step281EntryGvAfter [s2Step281EntryFOut,s2Step281EntryGOut,s2Step281EntryFvOut,s2Step281EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step281EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step281EntryF_Outgoing : rowsOwned s2Step281EntryGvAfter [s2Step281EntryFOut,s2Step281EntryGOut,s2Step281EntryFvOut,s2Step281EntryGvOut] :=
  hmrRows_owned_drop s2Step281EntryGvAfter [s2Step281EntryFOut,s2Step281EntryGOut,s2Step281EntryFvOut,s2Step281EntryGvOut] 0 s2Step281EntryBank_outgoingOwned

private theorem s2Step281EntryF_distinct : (s2Step281EntryFRow.sign::s2Step281EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281EntryF_owned : (s2Step281EntryFRow.sign::s2Step281EntryFRow.payload).toFinset⊆s2Step281EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step281EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281EntryF_reserved : s2Step281EntryFBefore.reserve s2Step281EntryFFresh.toFinset=some s2Step281EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step281EntryFFresh,arenaWires]
  · norm_num [s2Step281EntryFBefore,s2Step281EntryFFresh,arenaWires]
  · simp only [s2Step281EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step281EntryF_checked : planRowResizeLog s2Step281EntryFBefore s2Step281EntryFRow 131 s2Step281EntryFFresh=
    some (s2Step281EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642],768⟩,growRow 768 s2Step281EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step281EntryFBefore s2Step281EntryFAfter s2Step281EntryFRow 131 s2Step281EntryFFresh
    s2Step281EntryF_distinct s2Step281EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step281EntryF_reserved
  have rowEq : WindowRow.mk (s2Step281EntryFRow.payload++s2Step281EntryFFresh) s2Step281EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step281EntryFvAfter : Arena := s2Step281EntryFBefore

private def s2Step281EntryFvBefore : Arena := s2Step281EntryFBefore

private theorem s2Step281EntryFv_Incoming : rowsOwned s2Step281EntryFvBefore [s2Step281EntryFvRow,s2Step281EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step281EntryFRow,s2Step281EntryGRow,s2Step281EntryFvRow,s2Step281EntryGvRow] 2 s2Step281EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step281EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step281EntryFv_Outgoing : rowsOwned s2Step281EntryGvAfter [s2Step281EntryFvOut,s2Step281EntryGvOut] :=
  hmrRows_owned_drop s2Step281EntryGvAfter [s2Step281EntryFOut,s2Step281EntryGOut,s2Step281EntryFvOut,s2Step281EntryGvOut] 2 s2Step281EntryBank_outgoingOwned

private theorem s2Step281EntryFv_distinct : (s2Step281EntryFvRow.sign::s2Step281EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281EntryFv_owned : (s2Step281EntryFvRow.sign::s2Step281EntryFvRow.payload).toFinset⊆s2Step281EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step281EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281EntryFv_reserved : s2Step281EntryFvBefore.reserve s2Step281EntryFvFresh.toFinset=some s2Step281EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step281EntryFvFresh,arenaWires]
  · norm_num [s2Step281EntryFvBefore,s2Step281EntryFBefore,s2Step281EntryFvFresh,arenaWires]
  · simp only [s2Step281EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step281EntryFv_checked : planRowResizeLog s2Step281EntryFvBefore s2Step281EntryFvRow 155 s2Step281EntryFvFresh=
    some (s2Step281EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩,growRow 770 s2Step281EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step281EntryFvBefore s2Step281EntryFvAfter s2Step281EntryFvRow 155 s2Step281EntryFvFresh
    s2Step281EntryFv_distinct s2Step281EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step281EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step281EntryFvRow.payload++s2Step281EntryFvFresh) s2Step281EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step281EntryGAfter : Arena := s2Step281EntryFBefore

private def s2Step281EntryGBefore : Arena := s2Step281EntryFBefore

private theorem s2Step281EntryG_Incoming : rowsOwned s2Step281EntryGBefore [s2Step281EntryGRow,s2Step281EntryFvRow,s2Step281EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step281EntryFRow,s2Step281EntryGRow,s2Step281EntryFvRow,s2Step281EntryGvRow] 1 s2Step281EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step281EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step281EntryG_Outgoing : rowsOwned s2Step281EntryGvAfter [s2Step281EntryGOut,s2Step281EntryFvOut,s2Step281EntryGvOut] :=
  hmrRows_owned_drop s2Step281EntryGvAfter [s2Step281EntryFOut,s2Step281EntryGOut,s2Step281EntryFvOut,s2Step281EntryGvOut] 1 s2Step281EntryBank_outgoingOwned

private theorem s2Step281EntryG_distinct : (s2Step281EntryGRow.sign::s2Step281EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281EntryG_owned : (s2Step281EntryGRow.sign::s2Step281EntryGRow.payload).toFinset⊆s2Step281EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step281EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281EntryG_reserved : s2Step281EntryGBefore.reserve s2Step281EntryGFresh.toFinset=some s2Step281EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step281EntryGFresh,arenaWires]
  · norm_num [s2Step281EntryGBefore,s2Step281EntryFBefore,s2Step281EntryGFresh,arenaWires]
  · simp only [s2Step281EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step281EntryG_checked : planRowResizeLog s2Step281EntryGBefore s2Step281EntryGRow 131 s2Step281EntryGFresh=
    some (s2Step281EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791],769⟩,growRow 769 s2Step281EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step281EntryGBefore s2Step281EntryGAfter s2Step281EntryGRow 131 s2Step281EntryGFresh
    s2Step281EntryG_distinct s2Step281EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step281EntryG_reserved
  have rowEq : WindowRow.mk (s2Step281EntryGRow.payload++s2Step281EntryGFresh) s2Step281EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step281EntryGvBefore : Arena := s2Step281EntryFBefore

private theorem s2Step281EntryGv_Incoming : rowsOwned s2Step281EntryGvBefore [s2Step281EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step281EntryFRow,s2Step281EntryGRow,s2Step281EntryFvRow,s2Step281EntryGvRow] 3 s2Step281EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step281EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step281EntryGv_Outgoing : rowsOwned s2Step281EntryGvAfter [s2Step281EntryGvOut] :=
  hmrRows_owned_drop s2Step281EntryGvAfter [s2Step281EntryFOut,s2Step281EntryGOut,s2Step281EntryFvOut,s2Step281EntryGvOut] 3 s2Step281EntryBank_outgoingOwned

private theorem s2Step281EntryGv_distinct : (s2Step281EntryGvRow.sign::s2Step281EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281EntryGv_owned : (s2Step281EntryGvRow.sign::s2Step281EntryGvRow.payload).toFinset⊆s2Step281EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step281EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281EntryGv_reserved : s2Step281EntryGvBefore.reserve s2Step281EntryGvFresh.toFinset=some s2Step281EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step281EntryGvFresh,arenaWires]
  · norm_num [s2Step281EntryGvBefore,s2Step281EntryFBefore,s2Step281EntryGvFresh,arenaWires]
  · simp only [s2Step281EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step281EntryGv_checked : planRowResizeLog s2Step281EntryGvBefore s2Step281EntryGvRow 155 s2Step281EntryGvFresh=
    some (s2Step281EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844],771⟩,growRow 771 s2Step281EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step281EntryGvBefore s2Step281EntryGvAfter s2Step281EntryGvRow 155 s2Step281EntryGvFresh
    s2Step281EntryGv_distinct s2Step281EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step281EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step281EntryGvRow.payload++s2Step281EntryGvFresh) s2Step281EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step281EntryBank_rows : planWindowRowsLog s2Step281EntryFBefore [(s2Step281EntryFRow,131),(s2Step281EntryGRow,131),(s2Step281EntryFvRow,155),(s2Step281EntryGvRow,155)] [s2Step281EntryFFresh,s2Step281EntryGFresh,s2Step281EntryFvFresh,s2Step281EntryGvFresh]=
    some (s2Step281EntryGvAfter,[s2Step281EntryFOut,s2Step281EntryGOut,s2Step281EntryFvOut,s2Step281EntryGvOut],(growRow 768 s2Step281EntryFFresh ++ (growRow 769 s2Step281EntryGFresh ++ (growRow 770 s2Step281EntryFvFresh ++ (growRow 771 s2Step281EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step281EntryGvAfter [] []=some (s2Step281EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step281EntryGvBefore s2Step281EntryGvAfter s2Step281EntryGvAfter
    s2Step281EntryGvRow s2Step281EntryGvOut 155 s2Step281EntryGvFresh [] [] []
    (growRow 771 s2Step281EntryGvFresh) ([]) s2Step281EntryGv_Incoming s2Step281EntryGv_checked h4 s2Step281EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step281EntryFvBefore s2Step281EntryFvAfter s2Step281EntryGvAfter
    s2Step281EntryFvRow s2Step281EntryFvOut 155 s2Step281EntryFvFresh [(s2Step281EntryGvRow,155)] [s2Step281EntryGvFresh] [s2Step281EntryGvOut]
    (growRow 770 s2Step281EntryFvFresh) ((growRow 771 s2Step281EntryGvFresh ++ [])) s2Step281EntryFv_Incoming s2Step281EntryFv_checked h3 s2Step281EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step281EntryGBefore s2Step281EntryGAfter s2Step281EntryGvAfter
    s2Step281EntryGRow s2Step281EntryGOut 131 s2Step281EntryGFresh [(s2Step281EntryFvRow,155),(s2Step281EntryGvRow,155)] [s2Step281EntryFvFresh,s2Step281EntryGvFresh] [s2Step281EntryFvOut,s2Step281EntryGvOut]
    (growRow 769 s2Step281EntryGFresh) ((growRow 770 s2Step281EntryFvFresh ++ (growRow 771 s2Step281EntryGvFresh ++ []))) s2Step281EntryG_Incoming s2Step281EntryG_checked h2 s2Step281EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step281EntryFBefore s2Step281EntryFAfter s2Step281EntryGvAfter
    s2Step281EntryFRow s2Step281EntryFOut 131 s2Step281EntryFFresh [(s2Step281EntryGRow,131),(s2Step281EntryFvRow,155),(s2Step281EntryGvRow,155)] [s2Step281EntryGFresh,s2Step281EntryFvFresh,s2Step281EntryGvFresh] [s2Step281EntryGOut,s2Step281EntryFvOut,s2Step281EntryGvOut]
    (growRow 768 s2Step281EntryFFresh) ((growRow 769 s2Step281EntryGFresh ++ (growRow 770 s2Step281EntryFvFresh ++ (growRow 771 s2Step281EntryGvFresh ++ [])))) s2Step281EntryF_Incoming s2Step281EntryF_checked h1 s2Step281EntryF_Outgoing
  exact h0

private theorem s2Step281EntryBank_checked : compileHmrBankResizeLog .entry s2Step281EntryFBefore ⟨s2Step281EntryFRow,s2Step281EntryGRow,s2Step281EntryFvRow,s2Step281EntryGvRow⟩ ⟨131,131,155,155⟩ [s2Step281EntryFFresh,s2Step281EntryGFresh,s2Step281EntryFvFresh,s2Step281EntryGvFresh]=
    some (s2Step281EntryGvAfter,⟨s2Step281EntryFOut,s2Step281EntryGOut,s2Step281EntryFvOut,s2Step281EntryGvOut⟩,(growRow 768 s2Step281EntryFFresh ++ (growRow 769 s2Step281EntryGFresh ++ (growRow 770 s2Step281EntryFvFresh ++ (growRow 771 s2Step281EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step281EntryBank_rows]
  rfl

private def s2Step281ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281ExitFBefore : Arena := s2Step281ExitGAfter

private def s2Step281ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 815],768⟩

private def s2Step281ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839],770⟩

private def s2Step281ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 798],769⟩

private def s2Step281ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩

private theorem s2Step281ExitBank_incomingDistinct : ([s2Step281ExitGRow,s2Step281ExitFRow,s2Step281ExitFvRow,s2Step281ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281ExitF_Incoming : rowsOwned s2Step281ExitFBefore [s2Step281ExitFRow,s2Step281ExitFvRow,s2Step281ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step281ExitGRow,s2Step281ExitFRow,s2Step281ExitFvRow,s2Step281ExitGvRow] 1 s2Step281ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step281ExitFBefore (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step281ExitBank_outgoingOwned : rowsOwned s2Step281ExitGvAfter [s2Step281ExitGOut,s2Step281ExitFOut,s2Step281ExitFvOut,s2Step281ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step281ExitGvAfter (fun q => (0≤q ∧ q<641) ∨ (643≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step281ExitF_Outgoing : rowsOwned s2Step281ExitGvAfter [s2Step281ExitFOut,s2Step281ExitFvOut,s2Step281ExitGvOut] :=
  hmrRows_owned_drop s2Step281ExitGvAfter [s2Step281ExitGOut,s2Step281ExitFOut,s2Step281ExitFvOut,s2Step281ExitGvOut] 1 s2Step281ExitBank_outgoingOwned

private theorem s2Step281ExitF_distinct : (s2Step281ExitFRow.sign::s2Step281ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281ExitF_owned : (s2Step281ExitFRow.sign::s2Step281ExitFRow.payload).toFinset⊆s2Step281ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step281ExitFBefore (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281ExitF_retired : s2Step281ExitFBefore.retireSet s2Step281ExitFExtra.toFinset=s2Step281ExitFAfter := by
  unfold Arena.retireSet s2Step281ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step281ExitFBefore,s2Step281ExitGAfter,s2Step281ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step281ExitF_checked : planRowResizeLog s2Step281ExitFBefore s2Step281ExitFRow 129 []=
    some (s2Step281ExitFAfter,s2Step281ExitFOut,shrinkRow 768 s2Step281ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step281ExitFBefore s2Step281ExitFRow 129 s2Step281ExitF_distinct s2Step281ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step281ExitFRow.payload.take 129) s2Step281ExitFRow.sign=s2Step281ExitFOut := by decide +kernel
  have hi : s2Step281ExitFRow.payload.drop 129=s2Step281ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step281ExitF_retired] at result
  exact result

private def s2Step281ExitFvAfter : Arena := s2Step281ExitFAfter

private def s2Step281ExitFvBefore : Arena := s2Step281ExitFAfter

private theorem s2Step281ExitFv_Incoming : rowsOwned s2Step281ExitFvBefore [s2Step281ExitFvRow,s2Step281ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step281ExitGRow,s2Step281ExitFRow,s2Step281ExitFvRow,s2Step281ExitGvRow] 2 s2Step281ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step281ExitFvBefore (fun q => (0≤q ∧ q<641) ∨ (643≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step281ExitFv_Outgoing : rowsOwned s2Step281ExitGvAfter [s2Step281ExitFvOut,s2Step281ExitGvOut] :=
  hmrRows_owned_drop s2Step281ExitGvAfter [s2Step281ExitGOut,s2Step281ExitFOut,s2Step281ExitFvOut,s2Step281ExitGvOut] 2 s2Step281ExitBank_outgoingOwned

private theorem s2Step281ExitFv_distinct : (s2Step281ExitFvRow.sign::s2Step281ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281ExitFv_owned : (s2Step281ExitFvRow.sign::s2Step281ExitFvRow.payload).toFinset⊆s2Step281ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step281ExitFvBefore (fun q => (0≤q ∧ q<641) ∨ (643≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281ExitFv_reserved : s2Step281ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step281ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step281ExitFv_checked : planRowResizeLog s2Step281ExitFvBefore s2Step281ExitFvRow 156 []=
    some (s2Step281ExitFvAfter,s2Step281ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step281ExitFvBefore s2Step281ExitFvAfter s2Step281ExitFvRow 156 []
    s2Step281ExitFv_distinct s2Step281ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step281ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step281ExitFvRow.payload++[]) s2Step281ExitFvRow.sign=s2Step281ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step281ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step281ExitG_Incoming : rowsOwned s2Step281ExitGBefore [s2Step281ExitGRow,s2Step281ExitFRow,s2Step281ExitFvRow,s2Step281ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step281ExitGRow,s2Step281ExitFRow,s2Step281ExitFvRow,s2Step281ExitGvRow] 0 s2Step281ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step281ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step281ExitG_Outgoing : rowsOwned s2Step281ExitGvAfter [s2Step281ExitGOut,s2Step281ExitFOut,s2Step281ExitFvOut,s2Step281ExitGvOut] :=
  hmrRows_owned_drop s2Step281ExitGvAfter [s2Step281ExitGOut,s2Step281ExitFOut,s2Step281ExitFvOut,s2Step281ExitGvOut] 0 s2Step281ExitBank_outgoingOwned

private theorem s2Step281ExitG_distinct : (s2Step281ExitGRow.sign::s2Step281ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281ExitG_owned : (s2Step281ExitGRow.sign::s2Step281ExitGRow.payload).toFinset⊆s2Step281ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step281ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281ExitG_retired : s2Step281ExitGBefore.retireSet s2Step281ExitGExtra.toFinset=s2Step281ExitGAfter := by
  unfold Arena.retireSet s2Step281ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step281ExitGBefore,s2Step281ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step281ExitG_checked : planRowResizeLog s2Step281ExitGBefore s2Step281ExitGRow 131 []=
    some (s2Step281ExitGAfter,s2Step281ExitGOut,shrinkRow 769 s2Step281ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step281ExitGBefore s2Step281ExitGRow 131 s2Step281ExitG_distinct s2Step281ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step281ExitGRow.payload.take 131) s2Step281ExitGRow.sign=s2Step281ExitGOut := by decide +kernel
  have hi : s2Step281ExitGRow.payload.drop 131=s2Step281ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step281ExitG_retired] at result
  exact result

private def s2Step281ExitGvBefore : Arena := s2Step281ExitFAfter

private theorem s2Step281ExitGv_Incoming : rowsOwned s2Step281ExitGvBefore [s2Step281ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step281ExitGRow,s2Step281ExitFRow,s2Step281ExitFvRow,s2Step281ExitGvRow] 3 s2Step281ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step281ExitGvBefore (fun q => (0≤q ∧ q<641) ∨ (643≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step281ExitGv_Outgoing : rowsOwned s2Step281ExitGvAfter [s2Step281ExitGvOut] :=
  hmrRows_owned_drop s2Step281ExitGvAfter [s2Step281ExitGOut,s2Step281ExitFOut,s2Step281ExitFvOut,s2Step281ExitGvOut] 3 s2Step281ExitBank_outgoingOwned

private theorem s2Step281ExitGv_distinct : (s2Step281ExitGvRow.sign::s2Step281ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281ExitGv_owned : (s2Step281ExitGvRow.sign::s2Step281ExitGvRow.payload).toFinset⊆s2Step281ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step281ExitGvBefore (fun q => (0≤q ∧ q<641) ∨ (643≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281ExitGv_reserved : s2Step281ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step281ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step281ExitGv_checked : planRowResizeLog s2Step281ExitGvBefore s2Step281ExitGvRow 156 []=
    some (s2Step281ExitGvAfter,s2Step281ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step281ExitGvBefore s2Step281ExitGvAfter s2Step281ExitGvRow 156 []
    s2Step281ExitGv_distinct s2Step281ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step281ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step281ExitGvRow.payload++[]) s2Step281ExitGvRow.sign=s2Step281ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step281ExitBank_rows : planWindowRowsLog s2Step281ExitGBefore [(s2Step281ExitGRow,131),(s2Step281ExitFRow,129),(s2Step281ExitFvRow,156),(s2Step281ExitGvRow,156)] [[],[],[],[]]=
    some (s2Step281ExitGvAfter,[s2Step281ExitGOut,s2Step281ExitFOut,s2Step281ExitFvOut,s2Step281ExitGvOut],(shrinkRow 769 s2Step281ExitGExtra ++ (shrinkRow 768 s2Step281ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step281ExitGvAfter [] []=some (s2Step281ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step281ExitGvBefore s2Step281ExitGvAfter s2Step281ExitGvAfter
    s2Step281ExitGvRow s2Step281ExitGvOut 156 [] [] [] []
    (growRow 771 []) ([]) s2Step281ExitGv_Incoming s2Step281ExitGv_checked h4 s2Step281ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step281ExitFvBefore s2Step281ExitFvAfter s2Step281ExitGvAfter
    s2Step281ExitFvRow s2Step281ExitFvOut 156 [] [(s2Step281ExitGvRow,156)] [[]] [s2Step281ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step281ExitFv_Incoming s2Step281ExitFv_checked h3 s2Step281ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step281ExitFBefore s2Step281ExitFAfter s2Step281ExitGvAfter
    s2Step281ExitFRow s2Step281ExitFOut 129 [] [(s2Step281ExitFvRow,156),(s2Step281ExitGvRow,156)] [[],[]] [s2Step281ExitFvOut,s2Step281ExitGvOut]
    (shrinkRow 768 s2Step281ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step281ExitF_Incoming s2Step281ExitF_checked h2 s2Step281ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step281ExitGBefore s2Step281ExitGAfter s2Step281ExitGvAfter
    s2Step281ExitGRow s2Step281ExitGOut 131 [] [(s2Step281ExitFRow,129),(s2Step281ExitFvRow,156),(s2Step281ExitGvRow,156)] [[],[],[]] [s2Step281ExitFOut,s2Step281ExitFvOut,s2Step281ExitGvOut]
    (shrinkRow 769 s2Step281ExitGExtra) ((shrinkRow 768 s2Step281ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step281ExitG_Incoming s2Step281ExitG_checked h1 s2Step281ExitG_Outgoing
  exact h0

private theorem s2Step281ExitBank_checked : compileHmrBankResizeLog .exit s2Step281ExitGBefore ⟨s2Step281ExitFRow,s2Step281ExitGRow,s2Step281ExitFvRow,s2Step281ExitGvRow⟩ ⟨129,131,156,156⟩ [[],[],[],[]]=
    some (s2Step281ExitGvAfter,⟨s2Step281ExitFOut,s2Step281ExitGOut,s2Step281ExitFvOut,s2Step281ExitGvOut⟩,(shrinkRow 769 s2Step281ExitGExtra ++ (shrinkRow 768 s2Step281ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step281ExitBank_rows]
  rfl

private theorem s2Step281Add0_apart : Disjoint s2Step281Add0Arena.live s2Step281Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step281Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281Add0_card : s2Step281Add0Arena.live.card=900 := by
  decide +kernel

private theorem s2Step281Add0_borrowed : s2Step281Add0Arena.checkBorrow (hmrHybridCount s2Step281Add0Arena s2Step281Add0B.length) s2Step281Add0Work=some s2Step281Add0During := by
  have len : s2Step281Add0Work.length=hmrHybridCount s2Step281Add0Arena s2Step281Add0B.length := by
    rw [hmrHybridCount,s2Step281Add0_card]
    decide +kernel
  have nd : s2Step281Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step281Add0Arena s2Step281Add0During s2Step281Add0Work.toFinset s2Step281Add0_bounded s2Step281Add0_apart rfl

private theorem s2Step281Add0_distinct : (845::783::891::(s2Step281Add0A++s2Step281Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281Add0_owned : (845::783::891::(s2Step281Add0A++s2Step281Add0B)).toFinset⊆s2Step281Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step281Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281Add0_checked : compileHmrHybridCinLog s2Step281Add0Arena 783 845 891 s2Step281Add0A s2Step281Add0B s2Step281Add0Work=some s2Step281Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step281Add0Arena s2Step281Add0During 783 845 891 s2Step281Add0A s2Step281Add0B s2Step281Add0Work
    (by decide +kernel) (by decide +kernel) s2Step281Add0_distinct
    (fun q hq => s2Step281Add0_owned (List.mem_toFinset.mpr hq)) s2Step281Add0_borrowed

private theorem s2Step281Add1_apart : Disjoint s2Step281Add1Arena.live s2Step281Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step281Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281Add1_card : s2Step281Add1Arena.live.card=900 := by
  decide +kernel

private theorem s2Step281Add1_borrowed : s2Step281Add1Arena.checkBorrow (hmrHybridCount s2Step281Add1Arena s2Step281Add1B.length) s2Step281Add1Work=some s2Step281Add1During := by
  have len : s2Step281Add1Work.length=hmrHybridCount s2Step281Add1Arena s2Step281Add1B.length := by
    rw [hmrHybridCount,s2Step281Add1_card]
    decide +kernel
  have nd : s2Step281Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step281Add1Arena s2Step281Add1During s2Step281Add1Work.toFinset s2Step281Add1_bounded s2Step281Add1_apart rfl

private theorem s2Step281Add1_distinct : (845::783::891::(s2Step281Add1A++s2Step281Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281Add1_owned : (845::783::891::(s2Step281Add1A++s2Step281Add1B)).toFinset⊆s2Step281Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step281Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281Add1_checked : compileHmrHybridCinLog s2Step281Add1Arena 783 845 891 s2Step281Add1A s2Step281Add1B s2Step281Add1Work=some s2Step281Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step281Add1Arena s2Step281Add1During 783 845 891 s2Step281Add1A s2Step281Add1B s2Step281Add1Work
    (by decide +kernel) (by decide +kernel) s2Step281Add1_distinct
    (fun q hq => s2Step281Add1_owned (List.mem_toFinset.mpr hq)) s2Step281Add1_borrowed

private theorem s2Step281F4_apart : Disjoint (s2Step281Add0A++s2Step281Add0B).toFinset (s2Step281Add1A++s2Step281Add1B).toFinset := by
  have nd : ((s2Step281Add0A++s2Step281Add0B)++(s2Step281Add1A++s2Step281Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step281F4_carry : s2Step281F4FlagArena.checkBorrow 1 [891]=some s2Step281Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step281F4FlagArena,s2Step281HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step281F4FlagArena,s2Step281HeadFvAfter,s2Step281Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step281F4_distinct : (781::783::845::891::((s2Step281Add0A++s2Step281Add1A)++(s2Step281Add0B++s2Step281Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281F4_flag : s2Step281HeadFvAfter.checkBorrow 1 [845]=some s2Step281F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step281HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step281F4_owned : (781::783::((s2Step281Add0A++s2Step281Add1A)++(s2Step281Add0B++s2Step281Add1B))).toFinset⊆s2Step281HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step281HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281F4_checked : compileHmrHybridF4Log s2Step281HeadFvAfter 781 783 s2Step281Add0A s2Step281Add0B s2Step281Add1A s2Step281Add1B [845] [891] s2Step281Add0Work s2Step281Add1Work=some s2Step281F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step281HeadFvAfter s2Step281F4FlagArena s2Step281Add0Arena s2Step281Add0During s2Step281Add1During 781 783
    s2Step281Add0A s2Step281Add0B s2Step281Add1A s2Step281Add1B [845] [891] s2Step281Add0Work s2Step281Add1Work
    (fun q hq => s2Step281F4_owned (List.mem_toFinset.mpr hq)) s2Step281F4_flag s2Step281F4_carry
    s2Step281F4_distinct s2Step281F4_apart s2Step281Add0_checked s2Step281Add1_checked

private theorem s2Step281Front_branch : s2Step281FrontSigmaArena.checkBorrow 1 [783]=some s2Step281HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step281FrontSigmaArena,s2Step281EntryGvAfter,s2Step281EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step281FrontSigmaArena,s2Step281EntryGvAfter,s2Step281EntryFBefore,s2Step281HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step281Front_entry : HmrFrontEntryValid s2Step281EntryFBefore s2Step281FrontBank 131 155 ⟨129,131,156,156⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step281FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step281EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step281EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step281FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step281Front_sigma : s2Step281EntryGvAfter.checkBorrow 1 [781]=some s2Step281FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step281EntryGvAfter,s2Step281EntryFBefore,arenaWires]
  · rfl

private def s2Step281HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281HeadFBefore : Arena := s2Step281HeadGAfter

private def s2Step281HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642],768⟩

private def s2Step281HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩

private def s2Step281HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791],769⟩

private def s2Step281HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844],771⟩

private theorem s2Step281HeadBank_incomingDistinct : ([s2Step281HeadGRow,s2Step281HeadFRow,s2Step281HeadGvRow,s2Step281HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281HeadF_Incoming : rowsOwned s2Step281HeadFBefore [s2Step281HeadFRow,s2Step281HeadGvRow,s2Step281HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step281HeadGRow,s2Step281HeadFRow,s2Step281HeadGvRow,s2Step281HeadFvRow] 1 s2Step281HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step281HeadFBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step281HeadBank_outgoingOwned : rowsOwned s2Step281HeadFvAfter [s2Step281HeadGOut,s2Step281HeadFOut,s2Step281HeadGvOut,s2Step281HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step281HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step281HeadF_Outgoing : rowsOwned s2Step281HeadFvAfter [s2Step281HeadFOut,s2Step281HeadGvOut,s2Step281HeadFvOut] :=
  hmrRows_owned_drop s2Step281HeadFvAfter [s2Step281HeadGOut,s2Step281HeadFOut,s2Step281HeadGvOut,s2Step281HeadFvOut] 1 s2Step281HeadBank_outgoingOwned

private theorem s2Step281HeadF_distinct : (s2Step281HeadFRow.sign::s2Step281HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281HeadF_owned : (s2Step281HeadFRow.sign::s2Step281HeadFRow.payload).toFinset⊆s2Step281HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step281HeadFBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281HeadF_reserved : s2Step281HeadFBefore.reserve s2Step281HeadFFresh.toFinset=some s2Step281HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step281HeadFFresh,arenaWires]
  · norm_num [s2Step281HeadFBefore,s2Step281HeadGAfter,s2Step281HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step281HeadFAfter,s2Step281HeadFBefore,s2Step281HeadGAfter,s2Step281HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step281HeadF_checked : planRowResizeLog s2Step281HeadFBefore s2Step281HeadFRow 132 s2Step281HeadFFresh=
    some (s2Step281HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 815],768⟩,growRow 768 s2Step281HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step281HeadFBefore s2Step281HeadFAfter s2Step281HeadFRow 132 s2Step281HeadFFresh
    s2Step281HeadF_distinct s2Step281HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step281HeadF_reserved
  have rowEq : WindowRow.mk (s2Step281HeadFRow.payload++s2Step281HeadFFresh) s2Step281HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 815],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step281HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step281HeadFvBefore : Arena := s2Step281HeadGvAfter

private theorem s2Step281HeadFv_Incoming : rowsOwned s2Step281HeadFvBefore [s2Step281HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step281HeadGRow,s2Step281HeadFRow,s2Step281HeadGvRow,s2Step281HeadFvRow] 3 s2Step281HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step281HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step281HeadFv_Outgoing : rowsOwned s2Step281HeadFvAfter [s2Step281HeadFvOut] :=
  hmrRows_owned_drop s2Step281HeadFvAfter [s2Step281HeadGOut,s2Step281HeadFOut,s2Step281HeadGvOut,s2Step281HeadFvOut] 3 s2Step281HeadBank_outgoingOwned

private theorem s2Step281HeadFv_distinct : (s2Step281HeadFvRow.sign::s2Step281HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281HeadFv_owned : (s2Step281HeadFvRow.sign::s2Step281HeadFvRow.payload).toFinset⊆s2Step281HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step281HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281HeadFv_reserved : s2Step281HeadFvBefore.reserve s2Step281HeadFvFresh.toFinset=some s2Step281HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step281HeadFvFresh,arenaWires]
  · norm_num [s2Step281HeadFvBefore,s2Step281HeadGvAfter,s2Step281HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step281HeadFvAfter,s2Step281HeadFvBefore,s2Step281HeadGvAfter,s2Step281HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step281HeadFv_checked : planRowResizeLog s2Step281HeadFvBefore s2Step281HeadFvRow 156 s2Step281HeadFvFresh=
    some (s2Step281HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839],770⟩,growRow 770 s2Step281HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step281HeadFvBefore s2Step281HeadFvAfter s2Step281HeadFvRow 156 s2Step281HeadFvFresh
    s2Step281HeadFv_distinct s2Step281HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step281HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step281HeadFvRow.payload++s2Step281HeadFvFresh) s2Step281HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step281HeadG_Incoming : rowsOwned s2Step281HeadGBefore [s2Step281HeadGRow,s2Step281HeadFRow,s2Step281HeadGvRow,s2Step281HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step281HeadGRow,s2Step281HeadFRow,s2Step281HeadGvRow,s2Step281HeadFvRow] 0 s2Step281HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step281HeadGBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step281HeadG_Outgoing : rowsOwned s2Step281HeadFvAfter [s2Step281HeadGOut,s2Step281HeadFOut,s2Step281HeadGvOut,s2Step281HeadFvOut] :=
  hmrRows_owned_drop s2Step281HeadFvAfter [s2Step281HeadGOut,s2Step281HeadFOut,s2Step281HeadGvOut,s2Step281HeadFvOut] 0 s2Step281HeadBank_outgoingOwned

private theorem s2Step281HeadG_distinct : (s2Step281HeadGRow.sign::s2Step281HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281HeadG_owned : (s2Step281HeadGRow.sign::s2Step281HeadGRow.payload).toFinset⊆s2Step281HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step281HeadGBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281HeadG_reserved : s2Step281HeadGBefore.reserve s2Step281HeadGFresh.toFinset=some s2Step281HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step281HeadGFresh,arenaWires]
  · norm_num [s2Step281HeadGBefore,s2Step281HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step281HeadGAfter,s2Step281HeadGBefore,s2Step281HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step281HeadG_checked : planRowResizeLog s2Step281HeadGBefore s2Step281HeadGRow 132 s2Step281HeadGFresh=
    some (s2Step281HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 798],769⟩,growRow 769 s2Step281HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step281HeadGBefore s2Step281HeadGAfter s2Step281HeadGRow 132 s2Step281HeadGFresh
    s2Step281HeadG_distinct s2Step281HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step281HeadG_reserved
  have rowEq : WindowRow.mk (s2Step281HeadGRow.payload++s2Step281HeadGFresh) s2Step281HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 798],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step281HeadGvBefore : Arena := s2Step281HeadFAfter

private theorem s2Step281HeadGv_Incoming : rowsOwned s2Step281HeadGvBefore [s2Step281HeadGvRow,s2Step281HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step281HeadGRow,s2Step281HeadFRow,s2Step281HeadGvRow,s2Step281HeadFvRow] 2 s2Step281HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step281HeadGvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step281HeadGv_Outgoing : rowsOwned s2Step281HeadFvAfter [s2Step281HeadGvOut,s2Step281HeadFvOut] :=
  hmrRows_owned_drop s2Step281HeadFvAfter [s2Step281HeadGOut,s2Step281HeadFOut,s2Step281HeadGvOut,s2Step281HeadFvOut] 2 s2Step281HeadBank_outgoingOwned

private theorem s2Step281HeadGv_distinct : (s2Step281HeadGvRow.sign::s2Step281HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step281HeadGv_owned : (s2Step281HeadGvRow.sign::s2Step281HeadGvRow.payload).toFinset⊆s2Step281HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step281HeadGvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step281HeadGv_reserved : s2Step281HeadGvBefore.reserve s2Step281HeadGvFresh.toFinset=some s2Step281HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step281HeadGvFresh,arenaWires]
  · norm_num [s2Step281HeadGvBefore,s2Step281HeadFAfter,s2Step281HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step281HeadGvAfter,s2Step281HeadGvBefore,s2Step281HeadFAfter,s2Step281HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step281HeadGv_checked : planRowResizeLog s2Step281HeadGvBefore s2Step281HeadGvRow 156 s2Step281HeadGvFresh=
    some (s2Step281HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩,growRow 771 s2Step281HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step281HeadGvBefore s2Step281HeadGvAfter s2Step281HeadGvRow 156 s2Step281HeadGvFresh
    s2Step281HeadGv_distinct s2Step281HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step281HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step281HeadGvRow.payload++s2Step281HeadGvFresh) s2Step281HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step281HeadBank_rows : planWindowRowsLog s2Step281HeadGBefore [(s2Step281HeadGRow,132),(s2Step281HeadFRow,132),(s2Step281HeadGvRow,156),(s2Step281HeadFvRow,156)] [s2Step281HeadGFresh,s2Step281HeadFFresh,s2Step281HeadGvFresh,s2Step281HeadFvFresh]=
    some (s2Step281HeadFvAfter,[s2Step281HeadGOut,s2Step281HeadFOut,s2Step281HeadGvOut,s2Step281HeadFvOut],(growRow 769 s2Step281HeadGFresh ++ (growRow 768 s2Step281HeadFFresh ++ (growRow 771 s2Step281HeadGvFresh ++ (growRow 770 s2Step281HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step281HeadFvAfter [] []=some (s2Step281HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step281HeadFvBefore s2Step281HeadFvAfter s2Step281HeadFvAfter
    s2Step281HeadFvRow s2Step281HeadFvOut 156 s2Step281HeadFvFresh [] [] []
    (growRow 770 s2Step281HeadFvFresh) ([]) s2Step281HeadFv_Incoming s2Step281HeadFv_checked h4 s2Step281HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step281HeadGvBefore s2Step281HeadGvAfter s2Step281HeadFvAfter
    s2Step281HeadGvRow s2Step281HeadGvOut 156 s2Step281HeadGvFresh [(s2Step281HeadFvRow,156)] [s2Step281HeadFvFresh] [s2Step281HeadFvOut]
    (growRow 771 s2Step281HeadGvFresh) ((growRow 770 s2Step281HeadFvFresh ++ [])) s2Step281HeadGv_Incoming s2Step281HeadGv_checked h3 s2Step281HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step281HeadFBefore s2Step281HeadFAfter s2Step281HeadFvAfter
    s2Step281HeadFRow s2Step281HeadFOut 132 s2Step281HeadFFresh [(s2Step281HeadGvRow,156),(s2Step281HeadFvRow,156)] [s2Step281HeadGvFresh,s2Step281HeadFvFresh] [s2Step281HeadGvOut,s2Step281HeadFvOut]
    (growRow 768 s2Step281HeadFFresh) ((growRow 771 s2Step281HeadGvFresh ++ (growRow 770 s2Step281HeadFvFresh ++ []))) s2Step281HeadF_Incoming s2Step281HeadF_checked h2 s2Step281HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step281HeadGBefore s2Step281HeadGAfter s2Step281HeadFvAfter
    s2Step281HeadGRow s2Step281HeadGOut 132 s2Step281HeadGFresh [(s2Step281HeadFRow,132),(s2Step281HeadGvRow,156),(s2Step281HeadFvRow,156)] [s2Step281HeadFFresh,s2Step281HeadGvFresh,s2Step281HeadFvFresh] [s2Step281HeadFOut,s2Step281HeadGvOut,s2Step281HeadFvOut]
    (growRow 769 s2Step281HeadGFresh) ((growRow 768 s2Step281HeadFFresh ++ (growRow 771 s2Step281HeadGvFresh ++ (growRow 770 s2Step281HeadFvFresh ++ [])))) s2Step281HeadG_Incoming s2Step281HeadG_checked h1 s2Step281HeadG_Outgoing
  exact h0

private theorem s2Step281HeadBank_checked : compileHmrBankResizeLog .headroom s2Step281HeadGBefore ⟨s2Step281HeadFRow,s2Step281HeadGRow,s2Step281HeadFvRow,s2Step281HeadGvRow⟩ ⟨132,132,156,156⟩ [s2Step281HeadGFresh,s2Step281HeadFFresh,s2Step281HeadGvFresh,s2Step281HeadFvFresh]=
    some (s2Step281HeadFvAfter,⟨s2Step281HeadFOut,s2Step281HeadGOut,s2Step281HeadFvOut,s2Step281HeadGvOut⟩,(growRow 769 s2Step281HeadGFresh ++ (growRow 768 s2Step281HeadFFresh ++ (growRow 771 s2Step281HeadGvFresh ++ (growRow 770 s2Step281HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step281HeadBank_rows]
  rfl

private theorem s2Step281Front_checked : compileHmrSourceFrontLog s2Step281EntryFBefore s2Step281FrontBank 131 155 ⟨129,131,156,156⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step281FrontLog=some s2Step281FrontPlan := by
  have pairEq : s2Step281FrontPair=⟨s2Step281HeadFRow,s2Step281HeadGRow,s2Step281HeadFvRow,s2Step281HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step281FrontHead=⟨s2Step281ExitFRow,s2Step281ExitGRow,s2Step281ExitFvRow,s2Step281ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step281Add0A=s2Step281FrontHead.f.wires := by decide +kernel
  have gEq : s2Step281Add0B=s2Step281FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step281Add1A=s2Step281FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step281Add1B=s2Step281FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step281EntryFBefore s2Step281FrontBank 131 155 ⟨129,131,156,156⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step281FrontLog s2Step281FrontPlan
  · exact s2Step281Front_entry
  · exact s2Step281EntryBank_checked
  · exact s2Step281Front_sigma
  · rfl
  · exact s2Step281Front_branch
  · rfl
  · simpa only [s2Step281FrontPlan,pairEq] using s2Step281HeadBank_checked
  · simpa only [s2Step281FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step281F4_checked
  · exact s2Step281Counter_checked
  · rfl
  · simpa only [s2Step281FrontPlan,headEq] using s2Step281ExitBank_checked

private theorem s2Step281Complete_explicit_checked : compileHmrEarlyStepLog s2Step281EntryFBefore s2Step281FrontBank 131 155 ⟨129,131,156,156⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step281CompleteLog=some s2Step281CompletePlan := by
  let Q := s2Step281EarlyControlPlan
  have hq := s2Step281EarlyControl_plan_checked
  have fv1 : s2Step281CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step281CompleteOut.fv.payload[2]?.getD s2Step281CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step281CompleteOut.fv.payload[3]?.getD s2Step281CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step281CompleteOut.fv.payload[4]?.getD s2Step281CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step281EntryFBefore s2Step281EarlyControlArena s2Step281FrontBank 131 155 ⟨129,131,156,156⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step281CompleteLog s2Step281FrontPlan Q
    s2Step281Front_checked s2Step281Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step281Complete_owned s2Step281Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step281EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 781 s2Step281CompleteOut.fv.second (s2Step281CompleteOut.fv.payload[2]?.getD s2Step281CompleteOut.fv.sign) (s2Step281CompleteOut.fv.payload[3]?.getD s2Step281CompleteOut.fv.sign) (s2Step281CompleteOut.fv.payload[4]?.getD s2Step281CompleteOut.fv.sign) 783 54 s2Step281EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep281Arena : Arena := s2Step281EntryFBefore
def s2PrivateStep281Bank : WindowBank := s2Step281FrontBank
def s2PrivateStep281Spec : HmrSourceWalkStepLog := ⟨131,155,⟨129,131,156,156⟩,54,.early s2Step281CompleteLog⟩
def s2PrivateStep281Plan : HmrSourceStepPlan := .early s2Step281CompletePlan
theorem s2PrivateStep281_source : s2PrivateStep281Spec=s2ObservedLogs272[9] := rfl
theorem s2PrivateStep281_checked : compileHmrSourceStepLog s2PrivateStep281Arena s2PrivateStep281Bank
    s2PrivateStep281Spec.fgWidth s2PrivateStep281Spec.vWidth s2PrivateStep281Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]
    6 498 281 s2PrivateStep281Spec.need none s2PrivateStep281Spec.log=some s2PrivateStep281Plan := by
  change compileHmrSourceStepLog s2Step281EntryFBefore s2Step281FrontBank 131 155 ⟨129,131,156,156⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 6 498 281 54 none (.early s2Step281CompleteLog)=some (.early s2Step281CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 281<498)]
  rw [s2Step281Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
