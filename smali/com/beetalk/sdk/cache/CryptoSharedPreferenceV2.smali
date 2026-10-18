.class public final Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;
.super Ljava/lang/Object;
.source "CryptoSharedPreferenceV2.kt"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$Companion;,
        Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoSharedPreferenceV2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoSharedPreferenceV2.kt\ncom/beetalk/sdk/cache/CryptoSharedPreferenceV2\n+ 2 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,282:1\n180#1,7:314\n180#1,7:321\n180#1,7:328\n180#1,7:335\n180#1,7:342\n180#1,7:349\n39#2,12:283\n1#3:295\n1#3:311\n1855#4,2:296\n1620#4,3:298\n1603#4,9:301\n1855#4:310\n1856#4:312\n1612#4:313\n*S KotlinDebug\n*F\n+ 1 CryptoSharedPreferenceV2.kt\ncom/beetalk/sdk/cache/CryptoSharedPreferenceV2\n*L\n217#1:314,7\n220#1:321,7\n223#1:328,7\n226#1:335,7\n229#1:342,7\n232#1:349,7\n93#1:283,12\n196#1:311\n148#1:296,2\n172#1:298,3\n196#1:301,9\n196#1:310\n196#1:312\n196#1:313\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u0000 62\u00020\u0001:\u000267B)\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0008J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u0096\u0002J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0002J\"\u0010\u0016\u001a\u0004\u0018\u0001H\u0017\"\u0006\u0008\u0000\u0010\u0017\u0018\u00012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u0082\u0008\u00a2\u0006\u0002\u0010\u0018J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0012\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0011H\u0002J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001e\u001a\u00020\u0005H\u0002J\u0014\u0010\u001f\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u0002J\u0016\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00110!H\u0016J\u001a\u0010\"\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0006\u0010#\u001a\u00020\u000eH\u0016J\u001a\u0010$\u001a\u00020%2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0006\u0010#\u001a\u00020%H\u0016J\u001a\u0010&\u001a\u00020\'2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0006\u0010#\u001a\u00020\'H\u0016J\u001a\u0010(\u001a\u00020)2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0006\u0010#\u001a\u00020)H\u0016J\u001e\u0010*\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0008\u0010#\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010,2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010,H\u0016J\u0010\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u0001H\u0002J\u0019\u00101\u001a\u00020/2\u000e\u00102\u001a\n 4*\u0004\u0018\u00010303H\u0096\u0001J\u0019\u00105\u001a\u00020/2\u000e\u00102\u001a\n 4*\u0004\u0018\u00010303H\u0096\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;",
        "Landroid/content/SharedPreferences;",
        "context",
        "Landroid/content/Context;",
        "fileName",
        "",
        "signingCertSha256ListDigest",
        "delegate",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V",
        "keyEncryptionKey",
        "Ljavax/crypto/SecretKey;",
        "keySeed",
        "secretKey",
        "contains",
        "",
        "key",
        "decode",
        "",
        "encoded",
        "decrypt",
        "decryptKey",
        "encrypted",
        "decryptValue",
        "T",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "edit",
        "Landroid/content/SharedPreferences$Editor;",
        "encode",
        "value",
        "encrypt",
        "plaintext",
        "encryptKey",
        "getAll",
        "",
        "getBoolean",
        "defValue",
        "getFloat",
        "",
        "getInt",
        "",
        "getLong",
        "",
        "getString",
        "getStringSet",
        "",
        "defValues",
        "migrateFromNormalIfNeeded",
        "",
        "normalSp",
        "registerOnSharedPreferenceChangeListener",
        "p0",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "kotlin.jvm.PlatformType",
        "unregisterOnSharedPreferenceChangeListener",
        "Companion",
        "EncryptingEditor",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$Companion;

.field private static final FILE_NAME_SUFFIX_V2:Ljava/lang/String; = "_crypto_v2"

.field private static final KEY_PURPOSE:Ljava/lang/String; = "com.garena.sdk.android.security.CryptoSharedPreferenceV2.v1"


# instance fields
.field private final context:Landroid/content/Context;

.field private final delegate:Landroid/content/SharedPreferences;

.field private final fileName:Ljava/lang/String;

.field private final keyEncryptionKey:Ljavax/crypto/SecretKey;

.field private final keySeed:Ljava/lang/String;

.field private final secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->Companion:Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 9

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->fileName:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->delegate:Landroid/content/SharedPreferences;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    .line 58
    const-string v0, "com.garena.sdk.android.security.CryptoSharedPreferenceV2.v1"

    filled-new-array {p4, p3, p2, v0}, [Ljava/lang/String;

    move-result-object p3

    .line 54
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    .line 59
    const-string p3, ":"

    move-object v1, p3

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->keySeed:Ljava/lang/String;

    .line 61
    sget-object p4, Lcom/beetalk/sdk/helper/AesGcmCrypto;->INSTANCE:Lcom/beetalk/sdk/helper/AesGcmCrypto;

    invoke-virtual {p4, p3}, Lcom/beetalk/sdk/helper/AesGcmCrypto;->deriveKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p4

    iput-object p4, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->secretKey:Ljavax/crypto/SecretKey;

    .line 62
    sget-object p4, Lcom/beetalk/sdk/helper/AesCbcCrypto;->INSTANCE:Lcom/beetalk/sdk/helper/AesCbcCrypto;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":keys"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/beetalk/sdk/helper/AesCbcCrypto;->deriveKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p3

    iput-object p3, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->keyEncryptionKey:Ljavax/crypto/SecretKey;

    const/4 p3, 0x0

    .line 65
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 66
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->migrateFromNormalIfNeeded(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 50
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "_crypto_v2"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    .line 49
    invoke-virtual {p1, p4, p5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p4

    const-string p5, "getSharedPreferences(...)"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static final synthetic access$encode(Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$encrypt(Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$encryptKey(Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final decode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return-object v1

    .line 162
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 163
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v3, 0x4e

    if-ne p1, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0x73

    if-ne p1, v3, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    const/16 v3, 0x69

    if-ne p1, v3, :cond_3

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/16 v3, 0x6c

    if-ne p1, v3, :cond_4

    .line 167
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :cond_4
    const/16 v3, 0x66

    if-ne p1, v3, :cond_5

    .line 168
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/16 v3, 0x62

    if-ne p1, v3, :cond_6

    .line 169
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :cond_6
    const/16 v3, 0x53

    if-ne p1, v3, :cond_7

    .line 171
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    .line 298
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 172
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    :goto_1
    return-object v1
.end method

.method private final decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 106
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, [B

    if-nez p1, :cond_1

    return-object v1

    .line 108
    :cond_1
    sget-object v0, Lcom/beetalk/sdk/helper/AesGcmCrypto;->INSTANCE:Lcom/beetalk/sdk/helper/AesGcmCrypto;

    iget-object v2, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->secretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v2, p1}, Lcom/beetalk/sdk/helper/AesGcmCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 109
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private final decryptKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 120
    :cond_0
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    :cond_1
    check-cast p1, [B

    if-nez p1, :cond_2

    return-object v0

    .line 122
    :cond_2
    sget-object v1, Lcom/beetalk/sdk/helper/AesCbcCrypto;->INSTANCE:Lcom/beetalk/sdk/helper/AesCbcCrypto;

    iget-object v2, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->keyEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, p1}, Lcom/beetalk/sdk/helper/AesCbcCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 295
    new-instance v0, Ljava/lang/String;

    .line 123
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_3
    return-object v0
.end method

.method private final synthetic decryptValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 184
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->decode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "T"

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    return-object v0
.end method

.method private final encode(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 140
    const-string p1, "N:"

    goto/16 :goto_1

    .line 141
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "s:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 142
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "i:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 143
    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "l:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 144
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 145
    :cond_4
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "b:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 146
    :cond_5
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_8

    .line 147
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 148
    check-cast p1, Ljava/lang/Iterable;

    .line 296
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 149
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 150
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 153
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "S:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    .line 156
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 100
    sget-object v0, Lcom/beetalk/sdk/helper/AesGcmCrypto;->INSTANCE:Lcom/beetalk/sdk/helper/AesGcmCrypto;

    iget-object v1, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->secretKey:Ljavax/crypto/SecretKey;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string/jumbo v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/beetalk/sdk/helper/AesGcmCrypto;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x2

    .line 102
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final encryptKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 114
    :cond_0
    sget-object v1, Lcom/beetalk/sdk/helper/AesCbcCrypto;->INSTANCE:Lcom/beetalk/sdk/helper/AesCbcCrypto;

    iget-object v2, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->keyEncryptionKey:Ljavax/crypto/SecretKey;

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string/jumbo v3, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Lcom/beetalk/sdk/helper/AesCbcCrypto;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 115
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private final migrateFromNormalIfNeeded(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 92
    move-object v0, p0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/SharedPreferencesExtsKt;->copyAllTo(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 93
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 292
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 212
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 234
    new-instance v0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;

    iget-object v1, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "edit(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2$EncryptingEditor;-><init>(Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;Landroid/content/SharedPreferences$Editor;)V

    check-cast v0, Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 310
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 309
    check-cast v3, Ljava/lang/String;

    .line 197
    invoke-direct {p0, v3}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->decryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    goto :goto_3

    .line 199
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v6, v3, Ljava/lang/String;

    if-eqz v6, :cond_2

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_4

    .line 202
    :try_start_0
    invoke-direct {p0, v3}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0, v3}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->decode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :catch_0
    :cond_4
    :goto_2
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_0

    .line 309
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    :cond_5
    check-cast v2, Ljava/util/List;

    .line 301
    check-cast v2, Ljava/lang/Iterable;

    .line 208
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .line 349
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 353
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->decode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/Boolean;

    if-nez v1, :cond_4

    move-object p1, v0

    :cond_4
    check-cast p1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v0, :cond_5

    .line 232
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_5
    return p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2

    .line 342
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 346
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->decode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/Float;

    if-nez v1, :cond_4

    move-object p1, v0

    :cond_4
    check-cast p1, Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v0, :cond_5

    .line 229
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :cond_5
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2

    .line 328
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 332
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->decode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_4

    move-object p1, v0

    :cond_4
    check-cast p1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v0, :cond_5

    .line 223
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_5
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .line 335
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 339
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->decode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/Long;

    if-nez v1, :cond_4

    move-object p1, v0

    :cond_4
    check-cast p1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v0, :cond_5

    .line 226
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_5
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 314
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 318
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->decode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_4

    move-object p1, v0

    :cond_4
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object p2, v0

    :goto_2
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 321
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 325
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->decode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/util/Set;

    if-nez v1, :cond_4

    move-object p1, v0

    :cond_4
    check-cast p1, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object p2, v0

    :goto_2
    return-object p2
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/CryptoSharedPreferenceV2;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
