.class public final Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;",
        "",
        "()V",
        "vendorSwitcher",
        "Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;",
        "getSwitchState",
        "",
        "ability",
        "init",
        "",
        "listener",
        "Lcom/ihoc/mgpa/superframe/VendorAbilityListener;",
        "isSupported",
        "setSwitchOff",
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


# static fields
.field public static final INSTANCE:Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;

.field private static vendorSwitcher:Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;

    invoke-direct {v0}, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;->INSTANCE:Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;

    invoke-direct {v0}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;->vendorSwitcher:Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSwitchState(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->VendorFrameInterpolation:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->getType()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 2
    sget-object p1, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;->vendorSwitcher:Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->getSwitchState(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)I

    move-result p1

    return p1

    .line 5
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->VendorSuperResolution:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->getType()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 6
    sget-object p1, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;->vendorSwitcher:Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->getSwitchState(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)I

    move-result p1

    return p1

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ability type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[SuperFrame]"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_ABILITY_UNKNOWN:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1
.end method

.method public final init(Lcom/ihoc/mgpa/superframe/VendorAbilityListener;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->INSTANCE:Lcom/ihoc/mgpa/superframe/VendorDataObserver;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->clear()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/superframe/VendorDataObserver;->subscribeSystemInfo(Lcom/ihoc/mgpa/superframe/VendorAbilityListener;)V

    .line 3
    sget-object p1, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;->vendorSwitcher:Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;

    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->VendorFrameInterpolation:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->isSupported(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)I

    move-result p1

    .line 4
    sget-object v1, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;->vendorSwitcher:Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;

    invoke-virtual {v1, v0}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->getSwitchState(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)I

    move-result v0

    .line 5
    sget-object v1, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;->vendorSwitcher:Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;

    sget-object v2, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->VendorSuperResolution:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {v1, v2}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->isSupported(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)I

    move-result v1

    .line 6
    sget-object v3, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;->vendorSwitcher:Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;

    invoke-virtual {v3, v2}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->getSwitchState(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)I

    move-result v2

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[SuperFrame]: Vendor FRC Support: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , switch state: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "[SuperFrame]: Vendor SR Support: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final isSupported(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->VendorFrameInterpolation:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->getType()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 2
    sget-object p1, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;->vendorSwitcher:Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->isSupported(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)I

    move-result p1

    return p1

    .line 5
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->VendorSuperResolution:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->getType()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 6
    sget-object p1, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;->vendorSwitcher:Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->isSupported(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)I

    move-result p1

    return p1

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SuperFrame]: Unknown ability type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_ABILITY_UNKNOWN:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1
.end method

.method public final setSwitchOff(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->VendorFrameInterpolation:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->getType()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 2
    sget-object p1, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;->vendorSwitcher:Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->setSwitchOff(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1

    .line 5
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->VendorSuperResolution:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->getType()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 6
    sget-object p1, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;->vendorSwitcher:Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->setSwitchOff(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SuperFrame]: Unknown ability type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_ABILITY_UNKNOWN:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1
.end method

.method public final setSwitchOn(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->VendorFrameInterpolation:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->getType()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 2
    sget-object p1, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;->vendorSwitcher:Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->setSwitchOn(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1

    .line 5
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->VendorSuperResolution:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->getType()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 6
    sget-object p1, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;->vendorSwitcher:Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/superframe/vendor/VendorAbilitySwitcher;->setSwitchOn(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SuperFrame]: Unknown ability type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object p1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_ABILITY_UNKNOWN:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->getCode()I

    move-result p1

    return p1
.end method
