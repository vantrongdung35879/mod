.class public final Lcom/ihoc/mgpa/superframe/VendorAbilityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004H\u0086 J\u0011\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u0086 J\t\u0010\u0008\u001a\u00020\tH\u0086 J\u0011\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cH\u0086 J\u0011\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0004H\u0086 J\u0011\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\tH\u0086 J\u000e\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\tJ\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u000cJ\u000e\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\tJ\u0008\u0010\u0018\u001a\u00020\u0006H\u0007J\u0010\u0010\u0018\u001a\u00020\u00062\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0006\u0010\u001b\u001a\u00020\u0006J\u0016\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u001dJ\u0016\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tJ\u0016\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/ihoc/mgpa/superframe/VendorAbilityManager;",
        "",
        "()V",
        "GetMFRCState",
        "",
        "Initialize",
        "",
        "logable",
        "IsSupportedMFRC",
        "",
        "NotifySuperFrameInfoToGame",
        "json",
        "",
        "SetMFRCState",
        "state",
        "SetRenderFPS",
        "fps",
        "getAbilityState",
        "abilityType",
        "Lcom/ihoc/mgpa/superframe/VendorAbilityType;",
        "getMFRCLicense",
        "",
        "getVersionName",
        "isSupported",
        "registerCallback",
        "listener",
        "Lcom/ihoc/mgpa/superframe/VendorAbilityListener;",
        "registerCallbackDelegate",
        "setAbilityState",
        "Lcom/ihoc/mgpa/superframe/SwitchState;",
        "setRenderFPS",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final native GetMFRCState()Z
.end method

.method public final native Initialize(Z)V
.end method

.method public final native IsSupportedMFRC()I
.end method

.method public final native NotifySuperFrameInfoToGame(Ljava/lang/String;)V
.end method

.method public final native SetMFRCState(Z)I
.end method

.method public final native SetRenderFPS(I)V
.end method

.method public final getAbilityState(I)I
    .locals 1

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->MTKFRC:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->getType()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/ihoc/mgpa/superframe/VendorAbilityManager;->GetMFRCState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/ihoc/mgpa/superframe/SwitchState;->ON:Lcom/ihoc/mgpa/superframe/SwitchState;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SwitchState;->getState()I

    move-result p1

    return p1

    .line 6
    :cond_0
    sget-object p1, Lcom/ihoc/mgpa/superframe/SwitchState;->OFF:Lcom/ihoc/mgpa/superframe/SwitchState;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SwitchState;->getState()I

    move-result p1

    return p1

    .line 9
    :cond_1
    sget-object v0, Lcom/ihoc/mgpa/superframe/service/ServiceManager;->INSTANCE:Lcom/ihoc/mgpa/superframe/service/ServiceManager;

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/superframe/service/ServiceManager;->getAbilityState(I)I

    move-result p1

    return p1
.end method

.method public final getAbilityState(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)I
    .locals 1

    const-string v0, "abilityType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/superframe/VendorAbilityManager;->getAbilityState(I)I

    move-result p1

    return p1
.end method

.method public final getMFRCLicense()[B
    .locals 2

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/superframe/cloud/SuperFrameHelper;->getMFRCLicense()[B

    move-result-object v0

    const-string v1, "getMFRCLicense()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "4.1.0.7"

    return-object v0
.end method

.method public final isSupported(I)I
    .locals 1

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->MTKFRC:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->getType()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ihoc/mgpa/superframe/VendorAbilityManager;->IsSupportedMFRC()I

    move-result p1

    return p1

    .line 5
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/superframe/service/ServiceManager;->INSTANCE:Lcom/ihoc/mgpa/superframe/service/ServiceManager;

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/superframe/service/ServiceManager;->isSupported(I)I

    move-result p1

    return p1
.end method

.method public final isSupported(Lcom/ihoc/mgpa/superframe/VendorAbilityType;)I
    .locals 1

    const-string v0, "abilityType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/superframe/VendorAbilityManager;->isSupported(I)I

    move-result p1

    return p1
.end method

.method public final registerCallback()V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use registerCallbackDelegate instead"
    .end annotation

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/superframe/VendorAbilityManager$registerCallback$listener$1;

    invoke-direct {v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityManager$registerCallback$listener$1;-><init>()V

    .line 17
    invoke-virtual {p0, v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityManager;->registerCallback(Lcom/ihoc/mgpa/superframe/VendorAbilityListener;)V

    return-void
.end method

.method public final registerCallback(Lcom/ihoc/mgpa/superframe/VendorAbilityListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityManager;->Initialize(Z)V

    .line 19
    sget-object v0, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;->INSTANCE:Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/superframe/service/VendorAbilityService;->init(Lcom/ihoc/mgpa/superframe/VendorAbilityListener;)V

    return-void
.end method

.method public final registerCallbackDelegate()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/superframe/VendorAbilityManager$registerCallbackDelegate$listener$1;

    invoke-direct {v0, p0}, Lcom/ihoc/mgpa/superframe/VendorAbilityManager$registerCallbackDelegate$listener$1;-><init>(Lcom/ihoc/mgpa/superframe/VendorAbilityManager;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityManager;->registerCallback(Lcom/ihoc/mgpa/superframe/VendorAbilityListener;)V

    return-void
.end method

.method public final setAbilityState(II)I
    .locals 1

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->MTKFRC:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->getType()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 3
    sget-object p1, Lcom/ihoc/mgpa/superframe/SwitchState;->ON:Lcom/ihoc/mgpa/superframe/SwitchState;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/SwitchState;->getState()I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/ihoc/mgpa/superframe/VendorAbilityManager;->SetMFRCState(Z)I

    move-result p1

    return p1

    .line 5
    :cond_1
    sget-object v0, Lcom/ihoc/mgpa/superframe/service/ServiceManager;->INSTANCE:Lcom/ihoc/mgpa/superframe/service/ServiceManager;

    invoke-virtual {v0, p1, p2}, Lcom/ihoc/mgpa/superframe/service/ServiceManager;->setAbilityState(II)I

    move-result p1

    return p1
.end method

.method public final setAbilityState(Lcom/ihoc/mgpa/superframe/VendorAbilityType;Lcom/ihoc/mgpa/superframe/SwitchState;)I
    .locals 1

    const-string v0, "abilityType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->getType()I

    move-result p1

    invoke-virtual {p2}, Lcom/ihoc/mgpa/superframe/SwitchState;->getState()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/ihoc/mgpa/superframe/VendorAbilityManager;->setAbilityState(II)I

    move-result p1

    return p1
.end method

.method public final setRenderFPS(II)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->MTKFRC:Lcom/ihoc/mgpa/superframe/VendorAbilityType;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityType;->getType()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/ihoc/mgpa/superframe/VendorAbilityManager;->SetRenderFPS(I)V

    :cond_0
    return-void
.end method
