import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep278
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

private def s2Step280CompleteMoves : List (Wire × Wire) := [(798,643)]

private def s2Step280EarlyControlLog : HmrEarlyControlLog := ⟨[798, 815, 788, 839, 845],[891],[830],[800, 894, 896, 901, 903, 904],[]⟩

private def s2Step280FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [791, 845], [], []],[[891], [839], [815], [788]],[[], [], [], []]⟩,[783],[781],[830],[800],[894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step280CompleteLog : HmrEarlyStepLog := ⟨s2Step280FrontLog,s2Step280CompleteMoves,s2Step280EarlyControlLog⟩

private def s2Step280ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642],768⟩

private def s2Step280ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩

private def s2Step280ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791],769⟩

private def s2Step280ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844],771⟩

private def s2Step280FrontOut : WindowBank := ⟨s2Step280ExitFOut,s2Step280ExitGOut,s2Step280ExitFvOut,s2Step280ExitGvOut⟩

private def s2Step280CompleteOut : WindowBank := s2Step280FrontOut.repacked s2Step280CompleteMoves

private def s2Step280EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step280EarlyControlPositiveArena,[891],s2Step280EarlyControlEqualityArena,[830],⟨⟨783,false⟩,[⟨⟨891,false⟩,830⟩]⟩⟩

private def s2Step280EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,798⟩,⟨⟨774,false⟩,815⟩,⟨⟨775,false⟩,788⟩,⟨⟨776,false⟩,839⟩,⟨⟨777,false⟩,845⟩]⟩

private def s2Step280EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step280EarlyControlZeroArena,s2Step280EarlyControlZeroPlan,s2Step280EarlyControlClassPlan,s2Step280EarlyControlFlagArena,s2Step280EarlyControlFittedArena,s2Step280EarlyControlHistoryArena,s2Step280EarlyControlSigmaArena,s2Step280EarlyControlOutputArena,s2Step280EarlyControlLog⟩

private def s2Step280CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step280Counter_bounded : s2Step280CounterWork.toFinset⊆arenaWires := by norm_num [s2Step280CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step280HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280CounterDuring : Arena := ⟨s2Step280HeadFvAfter.live∪s2Step280CounterWork.toFinset,Finset.union_subset s2Step280HeadFvAfter.bounded s2Step280Counter_bounded⟩

private def s2Step280EntryFFresh : List Wire := []

private def s2Step280EntryFvFresh : List Wire := []

private def s2Step280EntryGFresh : List Wire := [791, 845]

private def s2Step280EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280EntryGvAfter : Arena := s2Step280EntryGAfter

private def s2Step280EntryGvFresh : List Wire := []

private def s2Step280ExitFExtra : List Wire := [643, 839]

private def s2Step280ExitFvExtra : List Wire := [788]

private def s2Step280ExitGExtra : List Wire := [845, 891]

private def s2Step280ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<643) ∨ (644≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280ExitGvExtra : List Wire := [815]

private def s2Step280Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280Add0Work : List Wire := [894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step280Add0_bounded : s2Step280Add0Work.toFinset⊆arenaWires := by
  have h : s2Step280Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step280Add0During : Arena := ⟨s2Step280Add0Arena.live∪s2Step280Add0Work.toFinset,Finset.union_subset s2Step280Add0Arena.bounded s2Step280Add0_bounded⟩

private def s2Step280Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280Add1Work : List Wire := [894, 896, 901, 903, 904, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step280Add1_bounded : s2Step280Add1Work.toFinset⊆arenaWires := by
  have h : s2Step280Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step280Add1During : Arena := ⟨s2Step280Add1Arena.live∪s2Step280Add1Work.toFinset,Finset.union_subset s2Step280Add1Arena.bounded s2Step280Add1_bounded⟩

private def s2Step280F4FlagArena : Arena := ⟨s2Step280HeadFvAfter.live∪{830},Finset.union_subset s2Step280HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step280F4Plan : HmrHybridF4Plan := ⟨s2Step280F4FlagArena,[830],s2Step280Add0Arena,[800],s2Step280Add0During,s2Step280Add0Work,s2Step280Add1During,s2Step280Add1Work⟩

private def s2Step280HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 839],768⟩

private def s2Step280HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 788],770⟩

private def s2Step280HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 845, 891],769⟩

private def s2Step280HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 815],771⟩

private def s2Step280FrontHead : WindowBank := ⟨s2Step280HeadFOut,s2Step280HeadGOut,s2Step280HeadFvOut,s2Step280HeadGvOut⟩

private def s2Step280EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩

private def s2Step280EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩

private def s2Step280EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 845],769⟩

private def s2Step280EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844],771⟩

private def s2Step280FrontPair : WindowBank := ⟨s2Step280EntryFOut,s2Step280EntryGOut,s2Step280EntryFvOut,s2Step280EntryGvOut⟩

private def s2Step280FrontSigmaArena : Arena := ⟨s2Step280EntryGvAfter.live∪{783},Finset.union_subset s2Step280EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step280HeadFFresh : List Wire := [839]

private def s2Step280HeadFvFresh : List Wire := [788]

private def s2Step280HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280HeadGFresh : List Wire := [891]

private def s2Step280HeadGvFresh : List Wire := [815]

private def s2Step280FrontPlan : HmrSourceFront := ⟨s2Step280EntryGvAfter,s2Step280FrontPair,(growRow 768 s2Step280EntryFFresh ++ (growRow 769 s2Step280EntryGFresh ++ (growRow 770 s2Step280EntryFvFresh ++ (growRow 771 s2Step280EntryGvFresh ++ [])))),s2Step280FrontSigmaArena,[783],s2Step280HeadGBefore,[781],
  s2Step280HeadFvAfter,s2Step280FrontHead,(growRow 769 s2Step280HeadGFresh ++ (growRow 768 s2Step280HeadFFresh ++ (growRow 771 s2Step280HeadGvFresh ++ (growRow 770 s2Step280HeadFvFresh ++ [])))),s2Step280F4Plan,s2Step280CounterDuring,s2Step280CounterWork,s2Step280ExitGvAfter,s2Step280FrontOut,(shrinkRow 769 s2Step280ExitGExtra ++ (shrinkRow 768 s2Step280ExitFExtra ++ (shrinkRow 770 s2Step280ExitFvExtra ++ (shrinkRow 771 s2Step280ExitGvExtra ++ []))))⟩

private def s2Step280CompletePlan : HmrEarlyStepPlan := ⟨s2Step280FrontPlan,s2Step280EarlyControlArena,s2Step280EarlyControlPlan,s2Step280CompleteMoves⟩

private theorem s2Step280Complete_apart : List.Disjoint (s2Step280CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [783, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := by
  have nd : ((s2Step280CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[783, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step280Complete_owned : (s2Step280CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step280EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step280EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private def s2Step280CompleteMoveArena : Arena := ⟨s2Step280ExitGvAfter.live∪{643},Finset.union_subset s2Step280ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step280Complete_repack : s2Step280ExitGvAfter.checkRepack s2Step280CompleteMoves=some s2Step280EarlyControlArena := by
  have owned : 798∈s2Step280ExitGvAfter.live := by norm_num [s2Step280ExitGvAfter,arenaWires]
  have reserve : s2Step280ExitGvAfter.reserve {643}=some s2Step280CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step280ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step280CompleteMoveArena.retireSet {798}=s2Step280EarlyControlArena := by
    unfold Arena.retireSet s2Step280EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step280CompleteMoveArena,s2Step280ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step280CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step280CompleteMoveArena.retireSet {798}).checkRepack []=some s2Step280EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step280EarlyControl_branchOwned : ([781] : List Wire).toFinset⊆s2Step280EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step280EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280EarlyControl_branch : compileHmrBranchRetirement s2Step280EarlyControlSigmaArena 781=some s2Step280EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step280EarlyControl_branchOwned
  · ext q
    simp [s2Step280EarlyControlOutputArena,s2Step280EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step280EarlyControl_classEqualityBorrow : s2Step280EarlyControlPositiveArena.checkBorrow (([783, 891] : List Wire).length-1) s2Step280EarlyControlLog.classWork=some s2Step280EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step280EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step280EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step280EarlyControlEqualityArena,s2Step280EarlyControlPositiveArena,s2Step280EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step280EarlyControl_classEqualityOwned : ([783, 891] : List Wire).toFinset⊆s2Step280EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step280EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280EarlyControl_classEquality : compileHmrEqualityLog s2Step280EarlyControlPositiveArena [783, 891] 0 s2Step280EarlyControlLog.classWork=some (s2Step280EarlyControlEqualityArena,s2Step280EarlyControlLog.classWork,s2Step280EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step280EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step280EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step280EarlyControl_classOwned : ([777, 845, 783] : List Wire).toFinset⊆s2Step280EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step280EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280EarlyControl_positiveBorrow : s2Step280EarlyControlZeroArena.checkBorrow (1) s2Step280EarlyControlLog.positiveWork=some s2Step280EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step280EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step280EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step280EarlyControlPositiveArena,s2Step280EarlyControlZeroArena,s2Step280EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step280EarlyControl_class : compileHmrSourceClassLog s2Step280EarlyControlZeroArena false 777 s2Step280EarlyControlZeroPlan.top 0 783 s2Step280EarlyControlLog.positiveWork s2Step280EarlyControlLog.classWork=some s2Step280EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step280EarlyControlClassPlan s2Step280EarlyControlZeroArena false 777 s2Step280EarlyControlZeroPlan.top 0 783
  constructor
  · decide +kernel
  · exact s2Step280EarlyControl_classOwned
  · exact s2Step280EarlyControl_positiveBorrow
  · exact s2Step280EarlyControl_classEquality

private theorem s2Step280EarlyControl_entryRecordOwned : ([781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step280EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step280EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280EarlyControl_entrySigmaOwned : ([783, 254] : List Wire).toFinset⊆s2Step280EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step280EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280EarlyControl_fitBorrow : s2Step280EarlyControlFlagArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step280EarlyControlLog.recordFresh=some s2Step280EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step280EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step280EarlyControlFlagArena (fun q => (0≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step280EarlyControlFittedArena,s2Step280EarlyControlFlagArena,s2Step280EarlyControlLog,arenaWires]

private theorem s2Step280EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step280EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step280EarlyControlFlagArena (fun q => (0≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280EarlyControl_fit : compileHmrRecordGrowLog s2Step280EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step280EarlyControlLog.recordFresh=some s2Step280EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step280EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step280EarlyControl_fitBorrow

private theorem s2Step280EarlyControl_flagsBorrow : s2Step280EarlyControlEqualityArena.checkBorrow (6) s2Step280EarlyControlLog.flagWork=some s2Step280EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step280EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step280EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step280EarlyControlFlagArena,s2Step280EarlyControlEqualityArena,s2Step280EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step280EarlyControl_flagsOwned : ([830, 253, 252, 251] : List Wire).toFinset⊆s2Step280EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step280EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280EarlyControl_flags : compileHmrFlagsLog s2Step280EarlyControlClassPlan.equalityArena s2Step280EarlyControlClassPlan.equality.top 253 252 251 s2Step280EarlyControlLog.flagWork=some s2Step280EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step280EarlyControl_flagsOwned⟩
  · exact s2Step280EarlyControl_flagsBorrow

private theorem s2Step280EarlyControl_historyBorrow : s2Step280EarlyControlArena.checkBorrow ((54-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).length)) s2Step280EarlyControlLog.recordFresh=some s2Step280EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step280EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step280EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step280EarlyControlHistoryArena,s2Step280EarlyControlArena,s2Step280EarlyControlLog,arenaWires]

private theorem s2Step280EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] : List Wire).toFinset⊆s2Step280EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step280EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280EarlyControl_history : compileHmrRecordGrowLog s2Step280EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step280EarlyControlLog.recordFresh=some s2Step280EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step280EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step280EarlyControl_historyBorrow

private theorem s2Step280EarlyControl_sigmaOwned : ([254, 783] : List Wire).toFinset⊆s2Step280EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step280EarlyControlHistoryArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280EarlyControl_sigmaReleaseOwned : ([783] : List Wire).toFinset⊆s2Step280EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step280EarlyControlHistoryArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280EarlyControl_sigmaRelease : s2Step280EarlyControlHistoryArena.release {783} (fun _ => false)=some s2Step280EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step280EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step280EarlyControlSigmaArena,s2Step280EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step280EarlyControl_sigma : compileHmrSigmaDropLog s2Step280EarlyControlHistoryArena false 0 0 254 783 []=some s2Step280EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step280EarlyControl_sigmaOwned⟩
  · exact s2Step280EarlyControl_sigmaRelease

private theorem s2Step280EarlyControl_zeroBorrow : s2Step280EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step280EarlyControlLog.zeroWork=some s2Step280EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step280EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step280EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
      decide +kernel
    · ext q
      simp [s2Step280EarlyControlZeroArena,s2Step280EarlyControlArena,s2Step280EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step280EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step280EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step280EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280EarlyControl_zero : compileHmrEqualityLog s2Step280EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step280EarlyControlLog.zeroWork=some (s2Step280EarlyControlZeroArena,s2Step280EarlyControlLog.zeroWork,s2Step280EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step280EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step280EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step280EarlyControl_logged : s2Step280EarlyControlPlan.Logged s2Step280EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 783 254 253 252 251 781 54 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step280EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step280EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step280EarlyControl_zero
  · exact s2Step280EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step280EarlyControl_flags
  · exact s2Step280EarlyControl_fit
  · exact s2Step280EarlyControl_history
  · exact s2Step280EarlyControl_sigma
  · exact s2Step280EarlyControl_branch

private theorem s2Step280EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step280EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 783 254 253 252 251 781 54 s2Step280EarlyControlLog=some s2Step280EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step280EarlyControlPlan s2Step280EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 783 254 253 252 251 781 54 s2Step280EarlyControl_logged

private def s2Step280EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩

private def s2Step280EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩

private def s2Step280EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129],769⟩

private def s2Step280EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844],771⟩

private def s2Step280FrontBank : WindowBank := ⟨s2Step280EntryFRow,s2Step280EntryGRow,s2Step280EntryFvRow,s2Step280EntryGvRow⟩

private def s2Step280Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 839, 768]

private def s2Step280Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 845, 891, 769]

private def s2Step280Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 788, 770]

private def s2Step280Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 815, 771]

private theorem s2Step280Counter_apart : Disjoint s2Step280HeadFvAfter.live s2Step280CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step280HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280Counter_borrowed : s2Step280HeadFvAfter.checkBorrow 4 s2Step280CounterWork=some s2Step280CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step280HeadFvAfter s2Step280CounterDuring s2Step280CounterWork.toFinset s2Step280Counter_bounded s2Step280Counter_apart rfl

private theorem s2Step280Counter_owned : (783::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step280HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step280HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280Counter_checked : compileHmrCounterStepLog s2Step280HeadFvAfter true 783 [772, 773, 774, 775, 776, 777] s2Step280CounterWork=some s2Step280CounterDuring := by
  have owned : ∀q∈783::[772, 773, 774, 775, 776, 777],q∈s2Step280HeadFvAfter.live := fun q hq => s2Step280Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step280Counter_borrowed

private def s2Step280EntryFAfter : Arena := s2Step280EntryFBefore

private theorem s2Step280EntryBank_incomingDistinct : ([s2Step280EntryFRow,s2Step280EntryGRow,s2Step280EntryFvRow,s2Step280EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280EntryF_Incoming : rowsOwned s2Step280EntryFBefore [s2Step280EntryFRow,s2Step280EntryGRow,s2Step280EntryFvRow,s2Step280EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step280EntryFRow,s2Step280EntryGRow,s2Step280EntryFvRow,s2Step280EntryGvRow] 0 s2Step280EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step280EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step280EntryBank_outgoingOwned : rowsOwned s2Step280EntryGvAfter [s2Step280EntryFOut,s2Step280EntryGOut,s2Step280EntryFvOut,s2Step280EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step280EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step280EntryF_Outgoing : rowsOwned s2Step280EntryGvAfter [s2Step280EntryFOut,s2Step280EntryGOut,s2Step280EntryFvOut,s2Step280EntryGvOut] :=
  hmrRows_owned_drop s2Step280EntryGvAfter [s2Step280EntryFOut,s2Step280EntryGOut,s2Step280EntryFvOut,s2Step280EntryGvOut] 0 s2Step280EntryBank_outgoingOwned

private theorem s2Step280EntryF_distinct : (s2Step280EntryFRow.sign::s2Step280EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280EntryF_owned : (s2Step280EntryFRow.sign::s2Step280EntryFRow.payload).toFinset⊆s2Step280EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step280EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280EntryF_reserved : s2Step280EntryFBefore.reserve s2Step280EntryFFresh.toFinset=some s2Step280EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step280EntryFFresh,arenaWires]
  · norm_num [s2Step280EntryFBefore,s2Step280EntryFFresh,arenaWires]
  · simp only [s2Step280EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step280EntryF_checked : planRowResizeLog s2Step280EntryFBefore s2Step280EntryFRow 132 s2Step280EntryFFresh=
    some (s2Step280EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩,growRow 768 s2Step280EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step280EntryFBefore s2Step280EntryFAfter s2Step280EntryFRow 132 s2Step280EntryFFresh
    s2Step280EntryF_distinct s2Step280EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step280EntryF_reserved
  have rowEq : WindowRow.mk (s2Step280EntryFRow.payload++s2Step280EntryFFresh) s2Step280EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step280EntryFvAfter : Arena := s2Step280EntryGAfter

private def s2Step280EntryFvBefore : Arena := s2Step280EntryGAfter

private theorem s2Step280EntryFv_Incoming : rowsOwned s2Step280EntryFvBefore [s2Step280EntryFvRow,s2Step280EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step280EntryFRow,s2Step280EntryGRow,s2Step280EntryFvRow,s2Step280EntryGvRow] 2 s2Step280EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step280EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step280EntryFv_Outgoing : rowsOwned s2Step280EntryGvAfter [s2Step280EntryFvOut,s2Step280EntryGvOut] :=
  hmrRows_owned_drop s2Step280EntryGvAfter [s2Step280EntryFOut,s2Step280EntryGOut,s2Step280EntryFvOut,s2Step280EntryGvOut] 2 s2Step280EntryBank_outgoingOwned

private theorem s2Step280EntryFv_distinct : (s2Step280EntryFvRow.sign::s2Step280EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280EntryFv_owned : (s2Step280EntryFvRow.sign::s2Step280EntryFvRow.payload).toFinset⊆s2Step280EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step280EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280EntryFv_reserved : s2Step280EntryFvBefore.reserve s2Step280EntryFvFresh.toFinset=some s2Step280EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step280EntryFvFresh,arenaWires]
  · norm_num [s2Step280EntryFvBefore,s2Step280EntryGAfter,s2Step280EntryFvFresh,arenaWires]
  · simp only [s2Step280EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step280EntryFv_checked : planRowResizeLog s2Step280EntryFvBefore s2Step280EntryFvRow 155 s2Step280EntryFvFresh=
    some (s2Step280EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩,growRow 770 s2Step280EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step280EntryFvBefore s2Step280EntryFvAfter s2Step280EntryFvRow 155 s2Step280EntryFvFresh
    s2Step280EntryFv_distinct s2Step280EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step280EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step280EntryFvRow.payload++s2Step280EntryFvFresh) s2Step280EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step280EntryGBefore : Arena := s2Step280EntryFBefore

private theorem s2Step280EntryG_Incoming : rowsOwned s2Step280EntryGBefore [s2Step280EntryGRow,s2Step280EntryFvRow,s2Step280EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step280EntryFRow,s2Step280EntryGRow,s2Step280EntryFvRow,s2Step280EntryGvRow] 1 s2Step280EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step280EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step280EntryG_Outgoing : rowsOwned s2Step280EntryGvAfter [s2Step280EntryGOut,s2Step280EntryFvOut,s2Step280EntryGvOut] :=
  hmrRows_owned_drop s2Step280EntryGvAfter [s2Step280EntryFOut,s2Step280EntryGOut,s2Step280EntryFvOut,s2Step280EntryGvOut] 1 s2Step280EntryBank_outgoingOwned

private theorem s2Step280EntryG_distinct : (s2Step280EntryGRow.sign::s2Step280EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280EntryG_owned : (s2Step280EntryGRow.sign::s2Step280EntryGRow.payload).toFinset⊆s2Step280EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step280EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280EntryG_reserved : s2Step280EntryGBefore.reserve s2Step280EntryGFresh.toFinset=some s2Step280EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step280EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step280EntryGBefore,s2Step280EntryFBefore,s2Step280EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step280EntryGAfter,s2Step280EntryGBefore,s2Step280EntryFBefore,s2Step280EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step280EntryG_checked : planRowResizeLog s2Step280EntryGBefore s2Step280EntryGRow 132 s2Step280EntryGFresh=
    some (s2Step280EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 845],769⟩,growRow 769 s2Step280EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step280EntryGBefore s2Step280EntryGAfter s2Step280EntryGRow 132 s2Step280EntryGFresh
    s2Step280EntryG_distinct s2Step280EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step280EntryG_reserved
  have rowEq : WindowRow.mk (s2Step280EntryGRow.payload++s2Step280EntryGFresh) s2Step280EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 845],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step280EntryGvBefore : Arena := s2Step280EntryGAfter

private theorem s2Step280EntryGv_Incoming : rowsOwned s2Step280EntryGvBefore [s2Step280EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step280EntryFRow,s2Step280EntryGRow,s2Step280EntryFvRow,s2Step280EntryGvRow] 3 s2Step280EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step280EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step280EntryGv_Outgoing : rowsOwned s2Step280EntryGvAfter [s2Step280EntryGvOut] :=
  hmrRows_owned_drop s2Step280EntryGvAfter [s2Step280EntryFOut,s2Step280EntryGOut,s2Step280EntryFvOut,s2Step280EntryGvOut] 3 s2Step280EntryBank_outgoingOwned

private theorem s2Step280EntryGv_distinct : (s2Step280EntryGvRow.sign::s2Step280EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280EntryGv_owned : (s2Step280EntryGvRow.sign::s2Step280EntryGvRow.payload).toFinset⊆s2Step280EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step280EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280EntryGv_reserved : s2Step280EntryGvBefore.reserve s2Step280EntryGvFresh.toFinset=some s2Step280EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step280EntryGvFresh,arenaWires]
  · norm_num [s2Step280EntryGvBefore,s2Step280EntryGAfter,s2Step280EntryGvFresh,arenaWires]
  · simp only [s2Step280EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step280EntryGv_checked : planRowResizeLog s2Step280EntryGvBefore s2Step280EntryGvRow 155 s2Step280EntryGvFresh=
    some (s2Step280EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844],771⟩,growRow 771 s2Step280EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step280EntryGvBefore s2Step280EntryGvAfter s2Step280EntryGvRow 155 s2Step280EntryGvFresh
    s2Step280EntryGv_distinct s2Step280EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step280EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step280EntryGvRow.payload++s2Step280EntryGvFresh) s2Step280EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step280EntryBank_rows : planWindowRowsLog s2Step280EntryFBefore [(s2Step280EntryFRow,132),(s2Step280EntryGRow,132),(s2Step280EntryFvRow,155),(s2Step280EntryGvRow,155)] [s2Step280EntryFFresh,s2Step280EntryGFresh,s2Step280EntryFvFresh,s2Step280EntryGvFresh]=
    some (s2Step280EntryGvAfter,[s2Step280EntryFOut,s2Step280EntryGOut,s2Step280EntryFvOut,s2Step280EntryGvOut],(growRow 768 s2Step280EntryFFresh ++ (growRow 769 s2Step280EntryGFresh ++ (growRow 770 s2Step280EntryFvFresh ++ (growRow 771 s2Step280EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step280EntryGvAfter [] []=some (s2Step280EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step280EntryGvBefore s2Step280EntryGvAfter s2Step280EntryGvAfter
    s2Step280EntryGvRow s2Step280EntryGvOut 155 s2Step280EntryGvFresh [] [] []
    (growRow 771 s2Step280EntryGvFresh) ([]) s2Step280EntryGv_Incoming s2Step280EntryGv_checked h4 s2Step280EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step280EntryFvBefore s2Step280EntryFvAfter s2Step280EntryGvAfter
    s2Step280EntryFvRow s2Step280EntryFvOut 155 s2Step280EntryFvFresh [(s2Step280EntryGvRow,155)] [s2Step280EntryGvFresh] [s2Step280EntryGvOut]
    (growRow 770 s2Step280EntryFvFresh) ((growRow 771 s2Step280EntryGvFresh ++ [])) s2Step280EntryFv_Incoming s2Step280EntryFv_checked h3 s2Step280EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step280EntryGBefore s2Step280EntryGAfter s2Step280EntryGvAfter
    s2Step280EntryGRow s2Step280EntryGOut 132 s2Step280EntryGFresh [(s2Step280EntryFvRow,155),(s2Step280EntryGvRow,155)] [s2Step280EntryFvFresh,s2Step280EntryGvFresh] [s2Step280EntryFvOut,s2Step280EntryGvOut]
    (growRow 769 s2Step280EntryGFresh) ((growRow 770 s2Step280EntryFvFresh ++ (growRow 771 s2Step280EntryGvFresh ++ []))) s2Step280EntryG_Incoming s2Step280EntryG_checked h2 s2Step280EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step280EntryFBefore s2Step280EntryFAfter s2Step280EntryGvAfter
    s2Step280EntryFRow s2Step280EntryFOut 132 s2Step280EntryFFresh [(s2Step280EntryGRow,132),(s2Step280EntryFvRow,155),(s2Step280EntryGvRow,155)] [s2Step280EntryGFresh,s2Step280EntryFvFresh,s2Step280EntryGvFresh] [s2Step280EntryGOut,s2Step280EntryFvOut,s2Step280EntryGvOut]
    (growRow 768 s2Step280EntryFFresh) ((growRow 769 s2Step280EntryGFresh ++ (growRow 770 s2Step280EntryFvFresh ++ (growRow 771 s2Step280EntryGvFresh ++ [])))) s2Step280EntryF_Incoming s2Step280EntryF_checked h1 s2Step280EntryF_Outgoing
  exact h0

private theorem s2Step280EntryBank_checked : compileHmrBankResizeLog .entry s2Step280EntryFBefore ⟨s2Step280EntryFRow,s2Step280EntryGRow,s2Step280EntryFvRow,s2Step280EntryGvRow⟩ ⟨132,132,155,155⟩ [s2Step280EntryFFresh,s2Step280EntryGFresh,s2Step280EntryFvFresh,s2Step280EntryGvFresh]=
    some (s2Step280EntryGvAfter,⟨s2Step280EntryFOut,s2Step280EntryGOut,s2Step280EntryFvOut,s2Step280EntryGvOut⟩,(growRow 768 s2Step280EntryFFresh ++ (growRow 769 s2Step280EntryGFresh ++ (growRow 770 s2Step280EntryFvFresh ++ (growRow 771 s2Step280EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step280EntryBank_rows]
  rfl

private def s2Step280ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<643) ∨ (644≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280ExitFBefore : Arena := s2Step280ExitGAfter

private def s2Step280ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 839],768⟩

private def s2Step280ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 788],770⟩

private def s2Step280ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 845, 891],769⟩

private def s2Step280ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 815],771⟩

private theorem s2Step280ExitBank_incomingDistinct : ([s2Step280ExitGRow,s2Step280ExitFRow,s2Step280ExitFvRow,s2Step280ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280ExitF_Incoming : rowsOwned s2Step280ExitFBefore [s2Step280ExitFRow,s2Step280ExitFvRow,s2Step280ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step280ExitGRow,s2Step280ExitFRow,s2Step280ExitFvRow,s2Step280ExitGvRow] 1 s2Step280ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step280ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step280ExitBank_outgoingOwned : rowsOwned s2Step280ExitGvAfter [s2Step280ExitGOut,s2Step280ExitFOut,s2Step280ExitFvOut,s2Step280ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step280ExitGvAfter (fun q => (0≤q ∧ q<643) ∨ (644≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step280ExitF_Outgoing : rowsOwned s2Step280ExitGvAfter [s2Step280ExitFOut,s2Step280ExitFvOut,s2Step280ExitGvOut] :=
  hmrRows_owned_drop s2Step280ExitGvAfter [s2Step280ExitGOut,s2Step280ExitFOut,s2Step280ExitFvOut,s2Step280ExitGvOut] 1 s2Step280ExitBank_outgoingOwned

private theorem s2Step280ExitF_distinct : (s2Step280ExitFRow.sign::s2Step280ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280ExitF_owned : (s2Step280ExitFRow.sign::s2Step280ExitFRow.payload).toFinset⊆s2Step280ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step280ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280ExitF_retired : s2Step280ExitFBefore.retireSet s2Step280ExitFExtra.toFinset=s2Step280ExitFAfter := by
  unfold Arena.retireSet s2Step280ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step280ExitFBefore,s2Step280ExitGAfter,s2Step280ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step280ExitF_checked : planRowResizeLog s2Step280ExitFBefore s2Step280ExitFRow 131 []=
    some (s2Step280ExitFAfter,s2Step280ExitFOut,shrinkRow 768 s2Step280ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step280ExitFBefore s2Step280ExitFRow 131 s2Step280ExitF_distinct s2Step280ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step280ExitFRow.payload.take 131) s2Step280ExitFRow.sign=s2Step280ExitFOut := by decide +kernel
  have hi : s2Step280ExitFRow.payload.drop 131=s2Step280ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step280ExitF_retired] at result
  exact result

private def s2Step280ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<643) ∨ (644≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280ExitFvBefore : Arena := s2Step280ExitFAfter

private theorem s2Step280ExitFv_Incoming : rowsOwned s2Step280ExitFvBefore [s2Step280ExitFvRow,s2Step280ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step280ExitGRow,s2Step280ExitFRow,s2Step280ExitFvRow,s2Step280ExitGvRow] 2 s2Step280ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step280ExitFvBefore (fun q => (0≤q ∧ q<643) ∨ (644≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step280ExitFv_Outgoing : rowsOwned s2Step280ExitGvAfter [s2Step280ExitFvOut,s2Step280ExitGvOut] :=
  hmrRows_owned_drop s2Step280ExitGvAfter [s2Step280ExitGOut,s2Step280ExitFOut,s2Step280ExitFvOut,s2Step280ExitGvOut] 2 s2Step280ExitBank_outgoingOwned

private theorem s2Step280ExitFv_distinct : (s2Step280ExitFvRow.sign::s2Step280ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280ExitFv_owned : (s2Step280ExitFvRow.sign::s2Step280ExitFvRow.payload).toFinset⊆s2Step280ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step280ExitFvBefore (fun q => (0≤q ∧ q<643) ∨ (644≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280ExitFv_retired : s2Step280ExitFvBefore.retireSet s2Step280ExitFvExtra.toFinset=s2Step280ExitFvAfter := by
  unfold Arena.retireSet s2Step280ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step280ExitFvBefore,s2Step280ExitFAfter,s2Step280ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step280ExitFv_checked : planRowResizeLog s2Step280ExitFvBefore s2Step280ExitFvRow 155 []=
    some (s2Step280ExitFvAfter,s2Step280ExitFvOut,shrinkRow 770 s2Step280ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step280ExitFvBefore s2Step280ExitFvRow 155 s2Step280ExitFv_distinct s2Step280ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step280ExitFvRow.payload.take 155) s2Step280ExitFvRow.sign=s2Step280ExitFvOut := by decide +kernel
  have hi : s2Step280ExitFvRow.payload.drop 155=s2Step280ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step280ExitFv_retired] at result
  exact result

private def s2Step280ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private theorem s2Step280ExitG_Incoming : rowsOwned s2Step280ExitGBefore [s2Step280ExitGRow,s2Step280ExitFRow,s2Step280ExitFvRow,s2Step280ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step280ExitGRow,s2Step280ExitFRow,s2Step280ExitFvRow,s2Step280ExitGvRow] 0 s2Step280ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step280ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step280ExitG_Outgoing : rowsOwned s2Step280ExitGvAfter [s2Step280ExitGOut,s2Step280ExitFOut,s2Step280ExitFvOut,s2Step280ExitGvOut] :=
  hmrRows_owned_drop s2Step280ExitGvAfter [s2Step280ExitGOut,s2Step280ExitFOut,s2Step280ExitFvOut,s2Step280ExitGvOut] 0 s2Step280ExitBank_outgoingOwned

private theorem s2Step280ExitG_distinct : (s2Step280ExitGRow.sign::s2Step280ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280ExitG_owned : (s2Step280ExitGRow.sign::s2Step280ExitGRow.payload).toFinset⊆s2Step280ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step280ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280ExitG_retired : s2Step280ExitGBefore.retireSet s2Step280ExitGExtra.toFinset=s2Step280ExitGAfter := by
  unfold Arena.retireSet s2Step280ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step280ExitGBefore,s2Step280ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step280ExitG_checked : planRowResizeLog s2Step280ExitGBefore s2Step280ExitGRow 131 []=
    some (s2Step280ExitGAfter,s2Step280ExitGOut,shrinkRow 769 s2Step280ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step280ExitGBefore s2Step280ExitGRow 131 s2Step280ExitG_distinct s2Step280ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step280ExitGRow.payload.take 131) s2Step280ExitGRow.sign=s2Step280ExitGOut := by decide +kernel
  have hi : s2Step280ExitGRow.payload.drop 131=s2Step280ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step280ExitG_retired] at result
  exact result

private def s2Step280ExitGvBefore : Arena := s2Step280ExitFvAfter

private theorem s2Step280ExitGv_Incoming : rowsOwned s2Step280ExitGvBefore [s2Step280ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step280ExitGRow,s2Step280ExitFRow,s2Step280ExitFvRow,s2Step280ExitGvRow] 3 s2Step280ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step280ExitGvBefore (fun q => (0≤q ∧ q<643) ∨ (644≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step280ExitGv_Outgoing : rowsOwned s2Step280ExitGvAfter [s2Step280ExitGvOut] :=
  hmrRows_owned_drop s2Step280ExitGvAfter [s2Step280ExitGOut,s2Step280ExitFOut,s2Step280ExitFvOut,s2Step280ExitGvOut] 3 s2Step280ExitBank_outgoingOwned

private theorem s2Step280ExitGv_distinct : (s2Step280ExitGvRow.sign::s2Step280ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280ExitGv_owned : (s2Step280ExitGvRow.sign::s2Step280ExitGvRow.payload).toFinset⊆s2Step280ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step280ExitGvBefore (fun q => (0≤q ∧ q<643) ∨ (644≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280ExitGv_retired : s2Step280ExitGvBefore.retireSet s2Step280ExitGvExtra.toFinset=s2Step280ExitGvAfter := by
  unfold Arena.retireSet s2Step280ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step280ExitGvBefore,s2Step280ExitFvAfter,s2Step280ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step280ExitGv_checked : planRowResizeLog s2Step280ExitGvBefore s2Step280ExitGvRow 155 []=
    some (s2Step280ExitGvAfter,s2Step280ExitGvOut,shrinkRow 771 s2Step280ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step280ExitGvBefore s2Step280ExitGvRow 155 s2Step280ExitGv_distinct s2Step280ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step280ExitGvRow.payload.take 155) s2Step280ExitGvRow.sign=s2Step280ExitGvOut := by decide +kernel
  have hi : s2Step280ExitGvRow.payload.drop 155=s2Step280ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step280ExitGv_retired] at result
  exact result

private theorem s2Step280ExitBank_rows : planWindowRowsLog s2Step280ExitGBefore [(s2Step280ExitGRow,131),(s2Step280ExitFRow,131),(s2Step280ExitFvRow,155),(s2Step280ExitGvRow,155)] [[],[],[],[]]=
    some (s2Step280ExitGvAfter,[s2Step280ExitGOut,s2Step280ExitFOut,s2Step280ExitFvOut,s2Step280ExitGvOut],(shrinkRow 769 s2Step280ExitGExtra ++ (shrinkRow 768 s2Step280ExitFExtra ++ (shrinkRow 770 s2Step280ExitFvExtra ++ (shrinkRow 771 s2Step280ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step280ExitGvAfter [] []=some (s2Step280ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step280ExitGvBefore s2Step280ExitGvAfter s2Step280ExitGvAfter
    s2Step280ExitGvRow s2Step280ExitGvOut 155 [] [] [] []
    (shrinkRow 771 s2Step280ExitGvExtra) ([]) s2Step280ExitGv_Incoming s2Step280ExitGv_checked h4 s2Step280ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step280ExitFvBefore s2Step280ExitFvAfter s2Step280ExitGvAfter
    s2Step280ExitFvRow s2Step280ExitFvOut 155 [] [(s2Step280ExitGvRow,155)] [[]] [s2Step280ExitGvOut]
    (shrinkRow 770 s2Step280ExitFvExtra) ((shrinkRow 771 s2Step280ExitGvExtra ++ [])) s2Step280ExitFv_Incoming s2Step280ExitFv_checked h3 s2Step280ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step280ExitFBefore s2Step280ExitFAfter s2Step280ExitGvAfter
    s2Step280ExitFRow s2Step280ExitFOut 131 [] [(s2Step280ExitFvRow,155),(s2Step280ExitGvRow,155)] [[],[]] [s2Step280ExitFvOut,s2Step280ExitGvOut]
    (shrinkRow 768 s2Step280ExitFExtra) ((shrinkRow 770 s2Step280ExitFvExtra ++ (shrinkRow 771 s2Step280ExitGvExtra ++ []))) s2Step280ExitF_Incoming s2Step280ExitF_checked h2 s2Step280ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step280ExitGBefore s2Step280ExitGAfter s2Step280ExitGvAfter
    s2Step280ExitGRow s2Step280ExitGOut 131 [] [(s2Step280ExitFRow,131),(s2Step280ExitFvRow,155),(s2Step280ExitGvRow,155)] [[],[],[]] [s2Step280ExitFOut,s2Step280ExitFvOut,s2Step280ExitGvOut]
    (shrinkRow 769 s2Step280ExitGExtra) ((shrinkRow 768 s2Step280ExitFExtra ++ (shrinkRow 770 s2Step280ExitFvExtra ++ (shrinkRow 771 s2Step280ExitGvExtra ++ [])))) s2Step280ExitG_Incoming s2Step280ExitG_checked h1 s2Step280ExitG_Outgoing
  exact h0

private theorem s2Step280ExitBank_checked : compileHmrBankResizeLog .exit s2Step280ExitGBefore ⟨s2Step280ExitFRow,s2Step280ExitGRow,s2Step280ExitFvRow,s2Step280ExitGvRow⟩ ⟨131,131,155,155⟩ [[],[],[],[]]=
    some (s2Step280ExitGvAfter,⟨s2Step280ExitFOut,s2Step280ExitGOut,s2Step280ExitFvOut,s2Step280ExitGvOut⟩,(shrinkRow 769 s2Step280ExitGExtra ++ (shrinkRow 768 s2Step280ExitFExtra ++ (shrinkRow 770 s2Step280ExitFvExtra ++ (shrinkRow 771 s2Step280ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step280ExitBank_rows]
  rfl

private theorem s2Step280Add0_apart : Disjoint s2Step280Add0Arena.live s2Step280Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step280Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280Add0_card : s2Step280Add0Arena.live.card=902 := by
  decide +kernel

private theorem s2Step280Add0_borrowed : s2Step280Add0Arena.checkBorrow (hmrHybridCount s2Step280Add0Arena s2Step280Add0B.length) s2Step280Add0Work=some s2Step280Add0During := by
  have len : s2Step280Add0Work.length=hmrHybridCount s2Step280Add0Arena s2Step280Add0B.length := by
    rw [hmrHybridCount,s2Step280Add0_card]
    decide +kernel
  have nd : s2Step280Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step280Add0Arena s2Step280Add0During s2Step280Add0Work.toFinset s2Step280Add0_bounded s2Step280Add0_apart rfl

private theorem s2Step280Add0_distinct : (830::781::800::(s2Step280Add0A++s2Step280Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280Add0_owned : (830::781::800::(s2Step280Add0A++s2Step280Add0B)).toFinset⊆s2Step280Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step280Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280Add0_checked : compileHmrHybridCinLog s2Step280Add0Arena 781 830 800 s2Step280Add0A s2Step280Add0B s2Step280Add0Work=some s2Step280Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step280Add0Arena s2Step280Add0During 781 830 800 s2Step280Add0A s2Step280Add0B s2Step280Add0Work
    (by decide +kernel) (by decide +kernel) s2Step280Add0_distinct
    (fun q hq => s2Step280Add0_owned (List.mem_toFinset.mpr hq)) s2Step280Add0_borrowed

private theorem s2Step280Add1_apart : Disjoint s2Step280Add1Arena.live s2Step280Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step280Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280Add1_card : s2Step280Add1Arena.live.card=902 := by
  decide +kernel

private theorem s2Step280Add1_borrowed : s2Step280Add1Arena.checkBorrow (hmrHybridCount s2Step280Add1Arena s2Step280Add1B.length) s2Step280Add1Work=some s2Step280Add1During := by
  have len : s2Step280Add1Work.length=hmrHybridCount s2Step280Add1Arena s2Step280Add1B.length := by
    rw [hmrHybridCount,s2Step280Add1_card]
    decide +kernel
  have nd : s2Step280Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step280Add1Arena s2Step280Add1During s2Step280Add1Work.toFinset s2Step280Add1_bounded s2Step280Add1_apart rfl

private theorem s2Step280Add1_distinct : (830::781::800::(s2Step280Add1A++s2Step280Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280Add1_owned : (830::781::800::(s2Step280Add1A++s2Step280Add1B)).toFinset⊆s2Step280Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step280Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280Add1_checked : compileHmrHybridCinLog s2Step280Add1Arena 781 830 800 s2Step280Add1A s2Step280Add1B s2Step280Add1Work=some s2Step280Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step280Add1Arena s2Step280Add1During 781 830 800 s2Step280Add1A s2Step280Add1B s2Step280Add1Work
    (by decide +kernel) (by decide +kernel) s2Step280Add1_distinct
    (fun q hq => s2Step280Add1_owned (List.mem_toFinset.mpr hq)) s2Step280Add1_borrowed

private theorem s2Step280F4_apart : Disjoint (s2Step280Add0A++s2Step280Add0B).toFinset (s2Step280Add1A++s2Step280Add1B).toFinset := by
  have nd : ((s2Step280Add0A++s2Step280Add0B)++(s2Step280Add1A++s2Step280Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step280F4_carry : s2Step280F4FlagArena.checkBorrow 1 [800]=some s2Step280Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step280F4FlagArena,s2Step280HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step280F4FlagArena,s2Step280HeadFvAfter,s2Step280Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step280F4_distinct : (783::781::830::800::((s2Step280Add0A++s2Step280Add1A)++(s2Step280Add0B++s2Step280Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280F4_flag : s2Step280HeadFvAfter.checkBorrow 1 [830]=some s2Step280F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step280HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step280F4_owned : (783::781::((s2Step280Add0A++s2Step280Add1A)++(s2Step280Add0B++s2Step280Add1B))).toFinset⊆s2Step280HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step280HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280F4_checked : compileHmrHybridF4Log s2Step280HeadFvAfter 783 781 s2Step280Add0A s2Step280Add0B s2Step280Add1A s2Step280Add1B [830] [800] s2Step280Add0Work s2Step280Add1Work=some s2Step280F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step280HeadFvAfter s2Step280F4FlagArena s2Step280Add0Arena s2Step280Add0During s2Step280Add1During 783 781
    s2Step280Add0A s2Step280Add0B s2Step280Add1A s2Step280Add1B [830] [800] s2Step280Add0Work s2Step280Add1Work
    (fun q hq => s2Step280F4_owned (List.mem_toFinset.mpr hq)) s2Step280F4_flag s2Step280F4_carry
    s2Step280F4_distinct s2Step280F4_apart s2Step280Add0_checked s2Step280Add1_checked

private theorem s2Step280Front_branch : s2Step280FrontSigmaArena.checkBorrow 1 [781]=some s2Step280HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step280FrontSigmaArena,s2Step280EntryGvAfter,s2Step280EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step280FrontSigmaArena,s2Step280EntryGvAfter,s2Step280EntryGAfter,s2Step280HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step280Front_entry : HmrFrontEntryValid s2Step280EntryFBefore s2Step280FrontBank 132 155 ⟨131,131,155,155⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step280FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step280EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step280EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<845) ∨ (846≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step280FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step280Front_sigma : s2Step280EntryGvAfter.checkBorrow 1 [783]=some s2Step280FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step280EntryGvAfter,s2Step280EntryGAfter,arenaWires]
  · rfl

private def s2Step280HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280HeadFBefore : Arena := s2Step280HeadGAfter

private def s2Step280HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643],768⟩

private def s2Step280HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841],770⟩

private def s2Step280HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 845],769⟩

private def s2Step280HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844],771⟩

private theorem s2Step280HeadBank_incomingDistinct : ([s2Step280HeadGRow,s2Step280HeadFRow,s2Step280HeadGvRow,s2Step280HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280HeadF_Incoming : rowsOwned s2Step280HeadFBefore [s2Step280HeadFRow,s2Step280HeadGvRow,s2Step280HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step280HeadGRow,s2Step280HeadFRow,s2Step280HeadGvRow,s2Step280HeadFvRow] 1 s2Step280HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step280HeadFBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step280HeadBank_outgoingOwned : rowsOwned s2Step280HeadFvAfter [s2Step280HeadGOut,s2Step280HeadFOut,s2Step280HeadGvOut,s2Step280HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step280HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step280HeadF_Outgoing : rowsOwned s2Step280HeadFvAfter [s2Step280HeadFOut,s2Step280HeadGvOut,s2Step280HeadFvOut] :=
  hmrRows_owned_drop s2Step280HeadFvAfter [s2Step280HeadGOut,s2Step280HeadFOut,s2Step280HeadGvOut,s2Step280HeadFvOut] 1 s2Step280HeadBank_outgoingOwned

private theorem s2Step280HeadF_distinct : (s2Step280HeadFRow.sign::s2Step280HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280HeadF_owned : (s2Step280HeadFRow.sign::s2Step280HeadFRow.payload).toFinset⊆s2Step280HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step280HeadFBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280HeadF_reserved : s2Step280HeadFBefore.reserve s2Step280HeadFFresh.toFinset=some s2Step280HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step280HeadFFresh,arenaWires]
  · norm_num [s2Step280HeadFBefore,s2Step280HeadGAfter,s2Step280HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step280HeadFAfter,s2Step280HeadFBefore,s2Step280HeadGAfter,s2Step280HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step280HeadF_checked : planRowResizeLog s2Step280HeadFBefore s2Step280HeadFRow 133 s2Step280HeadFFresh=
    some (s2Step280HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 839],768⟩,growRow 768 s2Step280HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step280HeadFBefore s2Step280HeadFAfter s2Step280HeadFRow 133 s2Step280HeadFFresh
    s2Step280HeadF_distinct s2Step280HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step280HeadF_reserved
  have rowEq : WindowRow.mk (s2Step280HeadFRow.payload++s2Step280HeadFFresh) s2Step280HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 839],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step280HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)),Finset.filter_subset _ _⟩

private def s2Step280HeadFvBefore : Arena := s2Step280HeadGvAfter

private theorem s2Step280HeadFv_Incoming : rowsOwned s2Step280HeadFvBefore [s2Step280HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step280HeadGRow,s2Step280HeadFRow,s2Step280HeadGvRow,s2Step280HeadFvRow] 3 s2Step280HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step280HeadFvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step280HeadFv_Outgoing : rowsOwned s2Step280HeadFvAfter [s2Step280HeadFvOut] :=
  hmrRows_owned_drop s2Step280HeadFvAfter [s2Step280HeadGOut,s2Step280HeadFOut,s2Step280HeadGvOut,s2Step280HeadFvOut] 3 s2Step280HeadBank_outgoingOwned

private theorem s2Step280HeadFv_distinct : (s2Step280HeadFvRow.sign::s2Step280HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280HeadFv_owned : (s2Step280HeadFvRow.sign::s2Step280HeadFvRow.payload).toFinset⊆s2Step280HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step280HeadFvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280HeadFv_reserved : s2Step280HeadFvBefore.reserve s2Step280HeadFvFresh.toFinset=some s2Step280HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step280HeadFvFresh,arenaWires]
  · norm_num [s2Step280HeadFvBefore,s2Step280HeadGvAfter,s2Step280HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step280HeadFvAfter,s2Step280HeadFvBefore,s2Step280HeadGvAfter,s2Step280HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step280HeadFv_checked : planRowResizeLog s2Step280HeadFvBefore s2Step280HeadFvRow 156 s2Step280HeadFvFresh=
    some (s2Step280HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 788],770⟩,growRow 770 s2Step280HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step280HeadFvBefore s2Step280HeadFvAfter s2Step280HeadFvRow 156 s2Step280HeadFvFresh
    s2Step280HeadFv_distinct s2Step280HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step280HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step280HeadFvRow.payload++s2Step280HeadFvFresh) s2Step280HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 788],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step280HeadG_Incoming : rowsOwned s2Step280HeadGBefore [s2Step280HeadGRow,s2Step280HeadFRow,s2Step280HeadGvRow,s2Step280HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step280HeadGRow,s2Step280HeadFRow,s2Step280HeadGvRow,s2Step280HeadFvRow] 0 s2Step280HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step280HeadGBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step280HeadG_Outgoing : rowsOwned s2Step280HeadFvAfter [s2Step280HeadGOut,s2Step280HeadFOut,s2Step280HeadGvOut,s2Step280HeadFvOut] :=
  hmrRows_owned_drop s2Step280HeadFvAfter [s2Step280HeadGOut,s2Step280HeadFOut,s2Step280HeadGvOut,s2Step280HeadFvOut] 0 s2Step280HeadBank_outgoingOwned

private theorem s2Step280HeadG_distinct : (s2Step280HeadGRow.sign::s2Step280HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280HeadG_owned : (s2Step280HeadGRow.sign::s2Step280HeadGRow.payload).toFinset⊆s2Step280HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step280HeadGBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<839) ∨ (840≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280HeadG_reserved : s2Step280HeadGBefore.reserve s2Step280HeadGFresh.toFinset=some s2Step280HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step280HeadGFresh,arenaWires]
  · norm_num [s2Step280HeadGBefore,s2Step280HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step280HeadGAfter,s2Step280HeadGBefore,s2Step280HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step280HeadG_checked : planRowResizeLog s2Step280HeadGBefore s2Step280HeadGRow 133 s2Step280HeadGFresh=
    some (s2Step280HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 845, 891],769⟩,growRow 769 s2Step280HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step280HeadGBefore s2Step280HeadGAfter s2Step280HeadGRow 133 s2Step280HeadGFresh
    s2Step280HeadG_distinct s2Step280HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step280HeadG_reserved
  have rowEq : WindowRow.mk (s2Step280HeadGRow.payload++s2Step280HeadGFresh) s2Step280HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 791, 845, 891],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step280HeadGvBefore : Arena := s2Step280HeadFAfter

private theorem s2Step280HeadGv_Incoming : rowsOwned s2Step280HeadGvBefore [s2Step280HeadGvRow,s2Step280HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step280HeadGRow,s2Step280HeadFRow,s2Step280HeadGvRow,s2Step280HeadFvRow] 2 s2Step280HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step280HeadGvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
    decide +kernel

private theorem s2Step280HeadGv_Outgoing : rowsOwned s2Step280HeadFvAfter [s2Step280HeadGvOut,s2Step280HeadFvOut] :=
  hmrRows_owned_drop s2Step280HeadFvAfter [s2Step280HeadGOut,s2Step280HeadFOut,s2Step280HeadGvOut,s2Step280HeadFvOut] 2 s2Step280HeadBank_outgoingOwned

private theorem s2Step280HeadGv_distinct : (s2Step280HeadGvRow.sign::s2Step280HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step280HeadGv_owned : (s2Step280HeadGvRow.sign::s2Step280HeadGvRow.payload).toFinset⊆s2Step280HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step280HeadGvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<815) ∨ (816≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (905≤q ∧ q<907)) rfl
  decide +kernel

private theorem s2Step280HeadGv_reserved : s2Step280HeadGvBefore.reserve s2Step280HeadGvFresh.toFinset=some s2Step280HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step280HeadGvFresh,arenaWires]
  · norm_num [s2Step280HeadGvBefore,s2Step280HeadFAfter,s2Step280HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step280HeadGvAfter,s2Step280HeadGvBefore,s2Step280HeadFAfter,s2Step280HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step280HeadGv_checked : planRowResizeLog s2Step280HeadGvBefore s2Step280HeadGvRow 156 s2Step280HeadGvFresh=
    some (s2Step280HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 815],771⟩,growRow 771 s2Step280HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step280HeadGvBefore s2Step280HeadGvAfter s2Step280HeadGvRow 156 s2Step280HeadGvFresh
    s2Step280HeadGv_distinct s2Step280HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step280HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step280HeadGvRow.payload++s2Step280HeadGvFresh) s2Step280HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 815],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step280HeadBank_rows : planWindowRowsLog s2Step280HeadGBefore [(s2Step280HeadGRow,133),(s2Step280HeadFRow,133),(s2Step280HeadGvRow,156),(s2Step280HeadFvRow,156)] [s2Step280HeadGFresh,s2Step280HeadFFresh,s2Step280HeadGvFresh,s2Step280HeadFvFresh]=
    some (s2Step280HeadFvAfter,[s2Step280HeadGOut,s2Step280HeadFOut,s2Step280HeadGvOut,s2Step280HeadFvOut],(growRow 769 s2Step280HeadGFresh ++ (growRow 768 s2Step280HeadFFresh ++ (growRow 771 s2Step280HeadGvFresh ++ (growRow 770 s2Step280HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step280HeadFvAfter [] []=some (s2Step280HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step280HeadFvBefore s2Step280HeadFvAfter s2Step280HeadFvAfter
    s2Step280HeadFvRow s2Step280HeadFvOut 156 s2Step280HeadFvFresh [] [] []
    (growRow 770 s2Step280HeadFvFresh) ([]) s2Step280HeadFv_Incoming s2Step280HeadFv_checked h4 s2Step280HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step280HeadGvBefore s2Step280HeadGvAfter s2Step280HeadFvAfter
    s2Step280HeadGvRow s2Step280HeadGvOut 156 s2Step280HeadGvFresh [(s2Step280HeadFvRow,156)] [s2Step280HeadFvFresh] [s2Step280HeadFvOut]
    (growRow 771 s2Step280HeadGvFresh) ((growRow 770 s2Step280HeadFvFresh ++ [])) s2Step280HeadGv_Incoming s2Step280HeadGv_checked h3 s2Step280HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step280HeadFBefore s2Step280HeadFAfter s2Step280HeadFvAfter
    s2Step280HeadFRow s2Step280HeadFOut 133 s2Step280HeadFFresh [(s2Step280HeadGvRow,156),(s2Step280HeadFvRow,156)] [s2Step280HeadGvFresh,s2Step280HeadFvFresh] [s2Step280HeadGvOut,s2Step280HeadFvOut]
    (growRow 768 s2Step280HeadFFresh) ((growRow 771 s2Step280HeadGvFresh ++ (growRow 770 s2Step280HeadFvFresh ++ []))) s2Step280HeadF_Incoming s2Step280HeadF_checked h2 s2Step280HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step280HeadGBefore s2Step280HeadGAfter s2Step280HeadFvAfter
    s2Step280HeadGRow s2Step280HeadGOut 133 s2Step280HeadGFresh [(s2Step280HeadFRow,133),(s2Step280HeadGvRow,156),(s2Step280HeadFvRow,156)] [s2Step280HeadFFresh,s2Step280HeadGvFresh,s2Step280HeadFvFresh] [s2Step280HeadFOut,s2Step280HeadGvOut,s2Step280HeadFvOut]
    (growRow 769 s2Step280HeadGFresh) ((growRow 768 s2Step280HeadFFresh ++ (growRow 771 s2Step280HeadGvFresh ++ (growRow 770 s2Step280HeadFvFresh ++ [])))) s2Step280HeadG_Incoming s2Step280HeadG_checked h1 s2Step280HeadG_Outgoing
  exact h0

private theorem s2Step280HeadBank_checked : compileHmrBankResizeLog .headroom s2Step280HeadGBefore ⟨s2Step280HeadFRow,s2Step280HeadGRow,s2Step280HeadFvRow,s2Step280HeadGvRow⟩ ⟨133,133,156,156⟩ [s2Step280HeadGFresh,s2Step280HeadFFresh,s2Step280HeadGvFresh,s2Step280HeadFvFresh]=
    some (s2Step280HeadFvAfter,⟨s2Step280HeadFOut,s2Step280HeadGOut,s2Step280HeadFvOut,s2Step280HeadGvOut⟩,(growRow 769 s2Step280HeadGFresh ++ (growRow 768 s2Step280HeadFFresh ++ (growRow 771 s2Step280HeadGvFresh ++ (growRow 770 s2Step280HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step280HeadBank_rows]
  rfl

private theorem s2Step280Front_checked : compileHmrSourceFrontLog s2Step280EntryFBefore s2Step280FrontBank 132 155 ⟨131,131,155,155⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step280FrontLog=some s2Step280FrontPlan := by
  have pairEq : s2Step280FrontPair=⟨s2Step280HeadFRow,s2Step280HeadGRow,s2Step280HeadFvRow,s2Step280HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step280FrontHead=⟨s2Step280ExitFRow,s2Step280ExitGRow,s2Step280ExitFvRow,s2Step280ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step280Add0A=s2Step280FrontHead.f.wires := by decide +kernel
  have gEq : s2Step280Add0B=s2Step280FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step280Add1A=s2Step280FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step280Add1B=s2Step280FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step280EntryFBefore s2Step280FrontBank 132 155 ⟨131,131,155,155⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step280FrontLog s2Step280FrontPlan
  · exact s2Step280Front_entry
  · exact s2Step280EntryBank_checked
  · exact s2Step280Front_sigma
  · rfl
  · exact s2Step280Front_branch
  · rfl
  · simpa only [s2Step280FrontPlan,pairEq] using s2Step280HeadBank_checked
  · simpa only [s2Step280FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step280F4_checked
  · exact s2Step280Counter_checked
  · rfl
  · simpa only [s2Step280FrontPlan,headEq] using s2Step280ExitBank_checked

private theorem s2Step280Complete_explicit_checked : compileHmrEarlyStepLog s2Step280EntryFBefore s2Step280FrontBank 132 155 ⟨131,131,155,155⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step280CompleteLog=some s2Step280CompletePlan := by
  let Q := s2Step280EarlyControlPlan
  have hq := s2Step280EarlyControl_plan_checked
  have fv1 : s2Step280CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step280CompleteOut.fv.payload[2]?.getD s2Step280CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step280CompleteOut.fv.payload[3]?.getD s2Step280CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step280CompleteOut.fv.payload[4]?.getD s2Step280CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step280EntryFBefore s2Step280EarlyControlArena s2Step280FrontBank 132 155 ⟨131,131,155,155⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 54 s2Step280CompleteLog s2Step280FrontPlan Q
    s2Step280Front_checked s2Step280Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step280Complete_owned s2Step280Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step280EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 777 783 s2Step280CompleteOut.fv.second (s2Step280CompleteOut.fv.payload[2]?.getD s2Step280CompleteOut.fv.sign) (s2Step280CompleteOut.fv.payload[3]?.getD s2Step280CompleteOut.fv.sign) (s2Step280CompleteOut.fv.payload[4]?.getD s2Step280CompleteOut.fv.sign) 781 54 s2Step280EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep280Arena : Arena := s2Step280EntryFBefore
def s2PrivateStep280Bank : WindowBank := s2Step280FrontBank
def s2PrivateStep280Spec : HmrSourceWalkStepLog := ⟨132,155,⟨131,131,155,155⟩,54,.early s2Step280CompleteLog⟩
def s2PrivateStep280Plan : HmrSourceStepPlan := .early s2Step280CompletePlan
theorem s2PrivateStep280_source : s2PrivateStep280Spec=s2ObservedLogs272[8] := rfl
theorem s2PrivateStep280_checked : compileHmrSourceStepLog s2PrivateStep280Arena s2PrivateStep280Bank
    s2PrivateStep280Spec.fgWidth s2PrivateStep280Spec.vWidth s2PrivateStep280Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]
    6 498 280 s2PrivateStep280Spec.need none s2PrivateStep280Spec.log=some s2PrivateStep280Plan := by
  change compileHmrSourceStepLog s2Step280EntryFBefore s2Step280FrontBank 132 155 ⟨131,131,155,155⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] 6 498 280 54 none (.early s2Step280CompleteLog)=some (.early s2Step280CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 280<498)]
  rw [s2Step280Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
