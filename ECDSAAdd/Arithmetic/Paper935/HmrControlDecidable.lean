import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlCompiler

namespace ECDSAAdd.Arithmetic.Paper935

/- Small gate-plan comparisons used by the source projection certificates. -/
deriving instance DecidableEq for HmrBlockPlan
deriving instance DecidableEq for HmrEqualityPlan
deriving instance DecidableEq for HmrBlockFreePlan

end ECDSAAdd.Arithmetic.Paper935
