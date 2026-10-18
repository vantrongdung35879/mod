.class public final Lcom/ihoc/mgpa/superframe/VendorDataObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/superframe/VendorDataObserver$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013J\u0016\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\rJ\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\rH\u0002J\u0018\u0010\u001b\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001dJ\u001e\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\rJ\u0016\u0010\u001e\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u0007J\u001e\u0010$\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\rJ\u0016\u0010$\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u0007J\u0010\u0010&\u001a\u00020\u00102\u0008\u0010\'\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/ihoc/mgpa/superframe/VendorDataObserver;",
        "",
        "()V",
        "sAbilityListenerList",
        "",
        "Lcom/ihoc/mgpa/superframe/VendorAbilityListener;",
        "sIsFRCEnabled",
        "",
        "sIsFRCSupported",
        "sIsSREnabled",
        "sIsSRSupported",
        "sNotifyDequeFRC",
        "Ljava/util/concurrent/LinkedBlockingDeque;",
        "",
        "sNotifyDequeSR",
        "clear",
        "",
        "isSupported",
        "abilityType",
        "Lcom/ihoc/mgpa/superframe/VendorAbilityType;",
        "offer",
        "dataKey",
        "Lcom/ihoc/mgpa/vendor/VendorKey;",
        "value",
        "parseVendorData",
        "Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;",
        "response",
        "pollFirst",
        "timeout",
        "",
        "publishAbilityEnabled",
        "state",
        "Lcom/ihoc/mgpa/superframe/SwitchState;",
        "reason",
        "vendorKey",
        "enabled",
        "publishAbilityIsSupported",
        "supported",
        "subscribeSystemInfo",
        "listener",
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


# static fields
.field public static final INSTANCE:Lcom/ihoc/mgpa/superframe/VendorDataObserver;

.field private static sAbilityListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ihoc/mgpa/superframe/VendorAbilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsFRCEnabled:Z

.field private static sIsFRCSupported:Z

.field private static sIsSREnabled:Z

.field private static sIsSRSupported:Z

.field private static sNotifyDequeFRC:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotifyDequeSR:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver;

    invoke-direct {v0}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->INSTANCE:Lcom/ihoc/mgpa/superframe/VendorDataObserver;

    .line 1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sNotifyDequeFRC:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sNotifyDequeSR:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sAbilityListenerList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final parseVendorData(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;
    .locals 6

    const-string v0, "[SuperFrame] vendor callback data key: "

    if-eqz p2, :cond_8

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , response: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string p2, "dataObj.getJSONObject(dataKey.keyStr)"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :cond_1
    sget-object p2, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->IS_SUPPORT:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {p2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    const-string v4, "false"

    const-string/jumbo v5, "true"

    if-eqz v2, :cond_4

    .line 11
    :try_start_1
    invoke-virtual {p2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0, p1, v3}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->publishAbilityIsSupported(Lcom/ihoc/mgpa/vendor/VendorKey;Z)V

    .line 14
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->SUPPORTED:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1

    .line 16
    :cond_2
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 17
    invoke-virtual {p0, p1, v1}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->publishAbilityIsSupported(Lcom/ihoc/mgpa/vendor/VendorKey;Z)V

    .line 18
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->SERVICE_UNAVAILABLE:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1

    .line 20
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->publishAbilityIsSupported(Lcom/ihoc/mgpa/vendor/VendorKey;Z)V

    .line 21
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SUPPORT_DATA_INCORRECT:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1

    .line 23
    :cond_4
    sget-object p2, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->SWITCH_STATE:Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;

    invoke-virtual {p2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 24
    invoke-virtual {p2}, Lcom/ihoc/mgpa/superframe/vendor/AbilityKey;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    invoke-virtual {p0, p1, v3}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->publishAbilityEnabled(Lcom/ihoc/mgpa/vendor/VendorKey;Z)V

    .line 27
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->SUCCESS:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1

    .line 29
    :cond_5
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 30
    invoke-virtual {p0, p1, v1}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->publishAbilityEnabled(Lcom/ihoc/mgpa/vendor/VendorKey;Z)V

    .line 31
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->SUCCESS:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1

    .line 33
    :cond_6
    invoke-virtual {p0, p1, v1}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->publishAbilityEnabled(Lcom/ihoc/mgpa/vendor/VendorKey;Z)V

    .line 34
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SWITCH_STATE_DATA_INCORRECT:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1

    .line 36
    :cond_7
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_RESPONSE_INVALID_ACTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 38
    :catch_0
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SUPPORT_DATA_JSON_EXCEPTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1

    .line 39
    :cond_8
    :goto_0
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_RESPONSE_EMPTY:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p1
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sNotifyDequeFRC:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sNotifyDequeSR:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    return-void
.end method

.method public final isSupported(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)Z
    .locals 1

    const-string v0, "abilityType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    sget-boolean p1, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sIsSRSupported:Z

    goto :goto_0

    .line 4
    :cond_1
    sget-boolean p1, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sIsFRCSupported:Z

    :goto_0
    return p1
.end method

.method public final offer(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V
    .locals 3

    const-string v0, "dataKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->parseVendorData(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[SuperFrame] vendor data key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", parse ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sNotifyDequeSR:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    sget-object p1, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sNotifyDequeFRC:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final pollFirst(Lcom/ihoc/mgpa/vendor/VendorKey;J)Ljava/lang/String;
    .locals 1

    const-string v0, "dataKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    sget-object p1, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sNotifyDequeSR:Ljava/util/concurrent/LinkedBlockingDeque;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 8
    :cond_1
    sget-object p1, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sNotifyDequeFRC:Ljava/util/concurrent/LinkedBlockingDeque;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final publishAbilityEnabled(Lcom/ihoc/mgpa/superframe/VendorAbilityType;Lcom/ihoc/mgpa/superframe/SwitchState;Ljava/lang/String;)V
    .locals 3

    const-string v0, "abilityType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/superframe/SwitchState;->ON:Lcom/ihoc/mgpa/superframe/SwitchState;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v2, Lcom/ihoc/mgpa/superframe/VendorDataObserver$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_3

    .line 11
    :cond_1
    sput-boolean v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sIsSREnabled:Z

    .line 12
    sget-object p1, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sAbilityListenerList:Ljava/util/List;

    .line 125
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ihoc/mgpa/superframe/VendorAbilityListener;

    .line 126
    sget-object v1, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->VendorSuperResolution:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {p2}, Lcom/ihoc/mgpa/superframe/SwitchState;->getState()I

    move-result v2

    invoke-interface {v0, v1, v2, p3}, Lcom/ihoc/mgpa/superframe/VendorAbilityListener;->switchStateChange(Lcom/ihoc/mgpa/superframe/VendorAbilityType;ILjava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_2
    sput-boolean v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sIsFRCEnabled:Z

    .line 128
    sget-object p1, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sAbilityListenerList:Ljava/util/List;

    .line 246
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ihoc/mgpa/superframe/VendorAbilityListener;

    .line 247
    sget-object v1, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->VendorFrameInterpolation:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {p2}, Lcom/ihoc/mgpa/superframe/SwitchState;->getState()I

    move-result v2

    invoke-interface {v0, v1, v2, p3}, Lcom/ihoc/mgpa/superframe/VendorAbilityListener;->switchStateChange(Lcom/ihoc/mgpa/superframe/VendorAbilityType;ILjava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public final publishAbilityEnabled(Lcom/ihoc/mgpa/vendor/VendorKey;Z)V
    .locals 2

    const-string/jumbo v0, "vendorKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SuperFrame]: publish ability key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 249
    sget-object p2, Lcom/ihoc/mgpa/superframe/SwitchState;->ON:Lcom/ihoc/mgpa/superframe/SwitchState;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/ihoc/mgpa/superframe/SwitchState;->OFF:Lcom/ihoc/mgpa/superframe/SwitchState;

    .line 250
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->FrameInterpolation:Lcom/ihoc/mgpa/vendor/VendorKey;

    const-string v1, ""

    if-ne p1, v0, :cond_1

    .line 251
    sget-object p1, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->VendorFrameInterpolation:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {p0, p1, p2, v1}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->publishAbilityEnabled(Lcom/ihoc/mgpa/superframe/VendorAbilityType;Lcom/ihoc/mgpa/superframe/SwitchState;Ljava/lang/String;)V

    goto :goto_1

    .line 252
    :cond_1
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->SuperResolution:Lcom/ihoc/mgpa/vendor/VendorKey;

    if-ne p1, v0, :cond_2

    .line 253
    sget-object p1, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->VendorSuperResolution:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {p0, p1, p2, v1}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->publishAbilityEnabled(Lcom/ihoc/mgpa/superframe/VendorAbilityType;Lcom/ihoc/mgpa/superframe/SwitchState;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final publishAbilityIsSupported(Lcom/ihoc/mgpa/superframe/VendorAbilityType;ZLjava/lang/String;)V
    .locals 3

    const-string v0, "abilityType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SuperFrame]: publish ability type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/superframe/SupportState;->SUPPORTED:Lcom/ihoc/mgpa/superframe/SupportState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/superframe/SupportState;->UNSUPPORTED:Lcom/ihoc/mgpa/superframe/SupportState;

    .line 3
    :goto_0
    sget-object v1, Lcom/ihoc/mgpa/superframe/VendorDataObserver$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_3

    .line 11
    :cond_1
    sput-boolean p2, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sIsSRSupported:Z

    .line 12
    sget-object p2, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sAbilityListenerList:Ljava/util/List;

    .line 149
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ihoc/mgpa/superframe/VendorAbilityListener;

    .line 150
    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/SupportState;->getState()I

    move-result v2

    invoke-interface {v1, p1, v2, p3}, Lcom/ihoc/mgpa/superframe/VendorAbilityListener;->isSupported(Lcom/ihoc/mgpa/superframe/VendorAbilityType;ILjava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_2
    sput-boolean p2, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sIsFRCSupported:Z

    .line 152
    sget-object p2, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sAbilityListenerList:Ljava/util/List;

    .line 293
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ihoc/mgpa/superframe/VendorAbilityListener;

    .line 294
    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/SupportState;->getState()I

    move-result v2

    invoke-interface {v1, p1, v2, p3}, Lcom/ihoc/mgpa/superframe/VendorAbilityListener;->isSupported(Lcom/ihoc/mgpa/superframe/VendorAbilityType;ILjava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public final publishAbilityIsSupported(Lcom/ihoc/mgpa/vendor/VendorKey;Z)V
    .locals 2

    const-string/jumbo v0, "vendorKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->FrameInterpolation:Lcom/ihoc/mgpa/vendor/VendorKey;

    const-string v1, ""

    if-ne p1, v0, :cond_0

    .line 296
    sget-object p1, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->VendorFrameInterpolation:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {p0, p1, p2, v1}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->publishAbilityIsSupported(Lcom/ihoc/mgpa/superframe/VendorAbilityType;ZLjava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->SuperResolution:Lcom/ihoc/mgpa/vendor/VendorKey;

    if-ne p1, v0, :cond_1

    .line 298
    sget-object p1, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->VendorSuperResolution:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {p0, p1, p2, v1}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->publishAbilityIsSupported(Lcom/ihoc/mgpa/superframe/VendorAbilityType;ZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final subscribeSystemInfo(Lcom/ihoc/mgpa/superframe/VendorAbilityListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->sAbilityListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
