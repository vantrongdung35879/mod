.class public final Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;
.super Ljava/lang/Object;
.source "AccountSecurityVerifierStorage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0018\u001a\u00020\u0019R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R+\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0016\u0010\r\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u0008\"\u0004\u0008\u0013\u0010\nR+\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u000c\u001a\u0004\u0008\u0015\u0010\u0008\"\u0004\u0008\u0016\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;",
        "",
        "()V",
        "KEY_ACCOUNT_SECURITY_OPEN_ID",
        "",
        "<set-?>",
        "identityToken",
        "getIdentityToken",
        "()Ljava/lang/String;",
        "setIdentityToken",
        "(Ljava/lang/String;)V",
        "identityToken$delegate",
        "Lcom/beetalk/sdk/helper/SynchronizedProperty;",
        "sharedPrefs",
        "Lcom/beetalk/sdk/cache/PreferenceHelper;",
        "kotlin.jvm.PlatformType",
        "value",
        "swapOpenId",
        "getSwapOpenId",
        "setSwapOpenId",
        "verifierToken",
        "getVerifierToken",
        "setVerifierToken",
        "verifierToken$delegate",
        "reset",
        "",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

.field private static final KEY_ACCOUNT_SECURITY_OPEN_ID:Ljava/lang/String; = "account_security_open_id"

.field private static final identityToken$delegate:Lcom/beetalk/sdk/helper/SynchronizedProperty;

.field private static final sharedPrefs:Lcom/beetalk/sdk/cache/PreferenceHelper;

.field private static final verifierToken$delegate:Lcom/beetalk/sdk/helper/SynchronizedProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 31
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string/jumbo v2, "verifierToken"

    const-string v3, "getVerifierToken()Ljava/lang/String;"

    const-class v4, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 36
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "identityToken"

    const-string v3, "getIdentityToken()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    invoke-direct {v0}, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    .line 29
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/beetalk/sdk/cache/PreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PreferenceHelper;

    move-result-object v1

    sput-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->sharedPrefs:Lcom/beetalk/sdk/cache/PreferenceHelper;

    .line 31
    new-instance v1, Lcom/beetalk/sdk/helper/SynchronizedProperty;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcom/beetalk/sdk/helper/SynchronizedProperty;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->verifierToken$delegate:Lcom/beetalk/sdk/helper/SynchronizedProperty;

    .line 36
    new-instance v1, Lcom/beetalk/sdk/helper/SynchronizedProperty;

    invoke-direct {v1, v0, v2}, Lcom/beetalk/sdk/helper/SynchronizedProperty;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->identityToken$delegate:Lcom/beetalk/sdk/helper/SynchronizedProperty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIdentityToken()Ljava/lang/String;
    .locals 3

    .line 36
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->identityToken$delegate:Lcom/beetalk/sdk/helper/SynchronizedProperty;

    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/beetalk/sdk/helper/SynchronizedProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSwapOpenId()Ljava/lang/String;
    .locals 3

    .line 42
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->sharedPrefs:Lcom/beetalk/sdk/cache/PreferenceHelper;

    const-string v1, "account_security_open_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/beetalk/sdk/cache/PreferenceHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getVerifierToken()Ljava/lang/String;
    .locals 3

    .line 31
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->verifierToken$delegate:Lcom/beetalk/sdk/helper/SynchronizedProperty;

    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/beetalk/sdk/helper/SynchronizedProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final reset()V
    .locals 2

    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->INSTANCE:Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->setVerifierToken(Ljava/lang/String;)V

    .line 48
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->setIdentityToken(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setIdentityToken(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->identityToken$delegate:Lcom/beetalk/sdk/helper/SynchronizedProperty;

    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lcom/beetalk/sdk/helper/SynchronizedProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setSwapOpenId(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->sharedPrefs:Lcom/beetalk/sdk/cache/PreferenceHelper;

    const-string v1, "account_security_open_id"

    invoke-virtual {v0, v1, p1}, Lcom/beetalk/sdk/cache/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setVerifierToken(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->verifierToken$delegate:Lcom/beetalk/sdk/helper/SynchronizedProperty;

    sget-object v1, Lcom/beetalk/sdk/account/security/AccountSecurityVerifierStorage;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lcom/beetalk/sdk/helper/SynchronizedProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
