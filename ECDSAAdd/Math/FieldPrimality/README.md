# 域模数的素性证明

本模块通过素性证书证明 secp256k1 的域模数 p 是素数。

## 文件目录

[BitcoinPrimes.lean](#bitcoinprimeslean)

这个文件以 Lucas 素性判据和分层证书证明域模数 p 是素数。

## [BitcoinPrimes.lean](BitcoinPrimes.lean)

以下声明位于 `ECDSAAdd.Secp256k1` 命名空间。

```lean
theorem lucasFromFactors (n a : Nat) (factors : List Nat)
    (ha : (a : ZMod n) ^ (n - 1) = 1)
    (hn1 : n - 1 ≠ 0)
    (hprod : factors.prod = n - 1)
    (hprime : ∀ q ∈ factors, Nat.Prime q)
    (hpow : ∀ q ∈ factors, (a : ZMod n) ^ ((n - 1) / q) ≠ 1)
```

证明了 `n` 是素数。

```lean
theorem prime_cert_01
```

证明了 `13` 是素数。

```lean
theorem prime_cert_02
```

证明了 `17` 是素数。

```lean
theorem prime_cert_03
```

证明了 `19` 是素数。

```lean
theorem prime_cert_05
```

证明了 `29` 是素数。

```lean
theorem prime_cert_06
```

证明了 `31` 是素数。

```lean
theorem prime_cert_08
```

证明了 `41` 是素数。

```lean
theorem prime_cert_09
```

证明了 `53` 是素数。

```lean
theorem prime_cert_11
```

证明了 `67` 是素数。

```lean
theorem prime_cert_13
```

证明了 `83` 是素数。

```lean
theorem prime_cert_14
```

证明了 `97` 是素数。

```lean
theorem prime_cert_15
```

证明了 `101` 是素数。

```lean
theorem prime_cert_16
```

证明了 `103` 是素数。

```lean
theorem prime_cert_19
```

证明了 `131` 是素数。

```lean
theorem prime_cert_22
```

证明了 `239` 是素数。

```lean
theorem prime_cert_23
```

证明了 `271` 是素数。

```lean
theorem prime_cert_25
```

证明了 `419` 是素数。

```lean
theorem prime_cert_26
```

证明了 `443` 是素数。

```lean
theorem prime_cert_30
```

证明了 `887` 是素数。

```lean
theorem prime_cert_31
```

证明了 `971` 是素数。

```lean
theorem prime_cert_32
```

证明了 `1373` 是素数。

```lean
theorem prime_cert_34
```

证明了 `1627` 是素数。

```lean
theorem prime_cert_37
```

证明了 `2621` 是素数。

```lean
theorem prime_cert_38
```

证明了 `2657` 是素数。

```lean
theorem prime_cert_42
```

证明了 `4423` 是素数。

```lean
theorem prime_cert_43
```

证明了 `5323` 是素数。

```lean
theorem prime_cert_44
```

证明了 `7723` 是素数。

```lean
theorem prime_cert_46
```

证明了 `13441` 是素数。

```lean
theorem prime_cert_48
```

证明了 `20113` 是素数。

```lean
theorem prime_cert_49
```

证明了 `24809` 是素数。

```lean
theorem prime_cert_51
```

证明了 `41201` 是素数。

```lean
theorem prime_cert_53
```

证明了 `96557` 是素数。

```lean
theorem prime_cert_56
```

证明了 `1206781` 是素数。

```lean
theorem prime_cert_59
```

证明了 `7240687` 是素数。

```lean
theorem prime_cert_60
```

证明了 `13331831` 是素数。

```lean
theorem prime_cert_62
```

证明了 `107590001` 是素数。

```lean
theorem prime_cert_66
```

证明了 `173378833005251801` 是素数。

```lean
theorem prime_cert_68
```

证明了 `22149492674086928081353` 是素数。

```lean
theorem prime_cert_69
```

证明了 `132896956044521568488119` 是素数。

```lean
theorem prime_cert_72
```

证明了 `255515944373312847190720520512484175977` 是素数。

```lean
theorem prime_cert_73
```

证明了 `205115282021455665897114700593932402728804164701536103180137503955397371` 是素数。

```lean
theorem p_prime
```

证明了 `p` 是素数。
