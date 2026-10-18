.class public final Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u001a\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;",
        "",
        "()V",
        "SYNC_TIMEOUT",
        "",
        "getAbilityActionData",
        "",
        "action",
        "Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;",
        "getAbilityKey",
        "Lcom/ihoc/mgpa/vendor/VendorKey;",
        "ability",
        "Lcom/ihoc/mgpa/superframe/VendorAbilityType;",
        "getDataFromVendor",
        "dataKey",
        "getSwitchState",
        "isSupported",
        "setSwitchOff",
        "Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;",
        "setSwitchOn",
        "kgvmp_internationalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final SYNC_TIMEOUT:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    .line 2
    iput v0, p0, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->SYNC_TIMEOUT:I

    return-void
.end method

.method private final getDataFromVendor(Lcom/ihoc/mgpa/vendor/VendorKey;Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->getAbilityActionData(Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->VIVO_SOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->KOGSOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->SOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->VIVO_BINDER:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->VIVO_KOG_BINDER:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-ne v1, v2, :cond_2

    .line 10
    :cond_1
    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;->SET_SWITCH_STATE_OFF:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    if-eq p2, v1, :cond_3

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;->SET_SWITCH_STATE_ON:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    if-ne p2, v1, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {p1, v0}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getSystemData(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 19
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result p2

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->quoteJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->updateGameInfo(ILjava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result p2

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->quoteJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->updateGameInfo(ILjava/lang/String;)V

    .line 28
    :goto_2
    sget-object p2, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->INSTANCE:Lcom/ihoc/mgpa/superframe/VendorDataObserver;

    iget v0, p0, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->SYNC_TIMEOUT:I

    int-to-long v0, v0

    invoke-virtual {p2, p1, v0, v1}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->pollFirst(Lcom/ihoc/mgpa/vendor/VendorKey;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getAbilityActionData(Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;)Ljava/lang/String;
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    sget-object p1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->ACTION:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SET_SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    sget-object p1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_OFF:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 19
    :cond_1
    sget-object p1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->ACTION:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SET_SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    sget-object p1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_ON:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 21
    :cond_2
    sget-object p1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->ACTION:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->GET_SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 22
    :cond_3
    sget-object p1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->ACTION:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->IS_SUPPORT:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JSONObject().apply {\n   \u2026   }\n        }.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getAbilityKey(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)Lcom/ihoc/mgpa/vendor/VendorKey;
    .locals 1

    const-string v0, "ability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 11
    sget-object p1, Lcom/ihoc/mgpa/vendor/VendorKey;->UNKNOWN:Lcom/ihoc/mgpa/vendor/VendorKey;

    goto :goto_0

    .line 12
    :cond_0
    sget-object p1, Lcom/ihoc/mgpa/vendor/VendorKey;->SuperResolution:Lcom/ihoc/mgpa/vendor/VendorKey;

    goto :goto_0

    .line 13
    :cond_1
    sget-object p1, Lcom/ihoc/mgpa/vendor/VendorKey;->FrameInterpolation:Lcom/ihoc/mgpa/vendor/VendorKey;

    :goto_0
    return-object p1
.end method

.method public final getSwitchState(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)I
    .locals 4

    const-string v0, "ability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->getAbilityKey(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)Lcom/ihoc/mgpa/vendor/VendorKey;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->UNKNOWN:Lcom/ihoc/mgpa/vendor/VendorKey;

    if-ne p1, v0, :cond_0

    .line 3
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_KEY_UNKNOWN:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1

    .line 5
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->INSTANCE:Lcom/ihoc/mgpa/superframe/VendorDataObserver;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->clear()V

    .line 6
    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;->GET_SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    invoke-direct {p0, p1, v1}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->getDataFromVendor(Lcom/ihoc/mgpa/vendor/VendorKey;Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_RESPONSE_INVALID_ACTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1

    .line 15
    :cond_2
    invoke-virtual {v1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    sget-object v2, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_ON:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->publishAbilityEnabled(Lcom/ihoc/mgpa/vendor/VendorKey;Z)V

    .line 18
    sget-object p1, Lcom/ihoc/mgpa/superframe/SwitchState;->ON:Lcom/ihoc/mgpa/superframe/SwitchState;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SwitchState;->getState()I

    move-result p1

    return p1

    .line 20
    :cond_3
    sget-object v2, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_OFF:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->publishAbilityEnabled(Lcom/ihoc/mgpa/vendor/VendorKey;Z)V

    .line 22
    sget-object p1, Lcom/ihoc/mgpa/superframe/SwitchState;->OFF:Lcom/ihoc/mgpa/superframe/SwitchState;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SwitchState;->getState()I

    move-result p1

    return p1

    .line 24
    :cond_4
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SWITCH_STATE_DATA_INCORRECT:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 26
    :catch_0
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SWITCH_STATE_JSON_EXCEPTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1

    .line 27
    :cond_5
    :goto_0
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_RESPONSE_EMPTY:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1
.end method

.method public final isSupported(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)I
    .locals 3

    const-string v0, "ability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->getAbilityKey(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)Lcom/ihoc/mgpa/vendor/VendorKey;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->UNKNOWN:Lcom/ihoc/mgpa/vendor/VendorKey;

    if-ne p1, v0, :cond_0

    .line 3
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_KEY_UNKNOWN:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1

    .line 5
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;->IS_SUPPORT:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    invoke-direct {p0, p1, v0}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->getDataFromVendor(Lcom/ihoc/mgpa/vendor/VendorKey;Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->IS_SUPPORT:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_RESPONSE_INVALID_ACTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1

    .line 14
    :cond_2
    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->INSTANCE:Lcom/ihoc/mgpa/superframe/VendorDataObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->publishAbilityIsSupported(Lcom/ihoc/mgpa/vendor/VendorKey;Z)V

    .line 17
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->SUPPORTED:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1

    .line 19
    :cond_3
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->INSTANCE:Lcom/ihoc/mgpa/superframe/VendorDataObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->publishAbilityIsSupported(Lcom/ihoc/mgpa/vendor/VendorKey;Z)V

    .line 21
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->SERVICE_UNAVAILABLE:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1

    .line 23
    :cond_4
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SUPPORT_DATA_INCORRECT:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 25
    :catch_0
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SUPPORT_DATA_JSON_EXCEPTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1

    .line 26
    :cond_5
    :goto_0
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_RESPONSE_EMPTY:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1
.end method

.method public final setSwitchOff(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;
    .locals 4

    const-string v0, "ability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->getAbilityKey(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)Lcom/ihoc/mgpa/vendor/VendorKey;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->UNKNOWN:Lcom/ihoc/mgpa/vendor/VendorKey;

    if-ne p1, v0, :cond_0

    .line 3
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_KEY_UNKNOWN:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1

    .line 5
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->INSTANCE:Lcom/ihoc/mgpa/superframe/VendorDataObserver;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->clear()V

    .line 6
    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;->SET_SWITCH_STATE_OFF:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    invoke-direct {p0, p1, v1}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->getDataFromVendor(Lcom/ihoc/mgpa/vendor/VendorKey;Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_RESPONSE_INVALID_ACTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1

    .line 15
    :cond_2
    invoke-virtual {v1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    sget-object v2, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_OFF:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, p1, v1}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->publishAbilityEnabled(Lcom/ihoc/mgpa/vendor/VendorKey;Z)V

    .line 19
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->SUCCESS:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1

    .line 21
    :cond_3
    sget-object p1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_ON:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->SUCCESS:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1

    .line 24
    :cond_4
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SWITCH_STATE_DATA_INCORRECT:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 26
    :catch_0
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SWITCH_STATE_JSON_EXCEPTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1

    .line 27
    :cond_5
    :goto_0
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_RESPONSE_EMPTY:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1
.end method

.method public final setSwitchOn(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;
    .locals 4

    const-string v0, "ability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->getAbilityKey(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)Lcom/ihoc/mgpa/vendor/VendorKey;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->UNKNOWN:Lcom/ihoc/mgpa/vendor/VendorKey;

    if-ne p1, v0, :cond_0

    .line 3
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_KEY_UNKNOWN:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1

    .line 5
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->INSTANCE:Lcom/ihoc/mgpa/superframe/VendorDataObserver;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->clear()V

    .line 6
    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;->SET_SWITCH_STATE_ON:Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;

    invoke-direct {p0, p1, v1}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->getDataFromVendor(Lcom/ihoc/mgpa/vendor/VendorKey;Lcom/ihoc/mgpa/superframe/vendor/AbilityAction;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    sget-object v1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_RESPONSE_INVALID_ACTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1

    .line 15
    :cond_2
    invoke-virtual {v1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    sget-object v2, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_ON:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, p1, v1}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->publishAbilityEnabled(Lcom/ihoc/mgpa/vendor/VendorKey;Z)V

    .line 19
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->SUCCESS:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1

    .line 21
    :cond_3
    sget-object p1, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_OFF:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->SUCCESS:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1

    .line 24
    :cond_4
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SWITCH_STATE_DATA_INCORRECT:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 26
    :catch_0
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SWITCH_STATE_JSON_EXCEPTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1

    .line 27
    :cond_5
    :goto_0
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_RESPONSE_EMPTY:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1
.end method
