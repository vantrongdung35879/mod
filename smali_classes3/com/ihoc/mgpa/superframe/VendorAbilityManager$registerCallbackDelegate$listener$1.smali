.class public final Lcom/ihoc/mgpa/superframe/VendorAbilityManager$registerCallbackDelegate$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/superframe/VendorAbilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/superframe/VendorAbilityManager;->registerCallbackDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/ihoc/mgpa/superframe/VendorAbilityManager$registerCallbackDelegate$listener$1",
        "Lcom/ihoc/mgpa/superframe/VendorAbilityListener;",
        "isSupported",
        "",
        "ability",
        "Lcom/ihoc/mgpa/superframe/VendorAbilityType;",
        "status",
        "",
        "param",
        "",
        "switchStateChange",
        "state",
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
.field final synthetic this$0:Lcom/ihoc/mgpa/superframe/VendorAbilityManager;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/superframe/VendorAbilityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityManager$registerCallbackDelegate$listener$1;->this$0:Lcom/ihoc/mgpa/superframe/VendorAbilityManager;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupported(Lcom/ihoc/mgpa/superframe/VendorAbilityType;ILjava/lang/String;)V
    .locals 2

    const-string v0, "ability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;

    sget-object v1, Lcom/ihoc/mgpa/superframe/VendorAbilityAction;->IsSupported:Lcom/ihoc/mgpa/superframe/VendorAbilityAction;

    invoke-direct {v0, p1, v1}, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;-><init>(Lcom/ihoc/mgpa/superframe/VendorAbilityType;Lcom/ihoc/mgpa/superframe/VendorAbilityAction;)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->setSupported(I)V

    .line 3
    invoke-virtual {v0, p3}, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->setParam(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityManager$registerCallbackDelegate$listener$1;->this$0:Lcom/ihoc/mgpa/superframe/VendorAbilityManager;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->toJson()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ihoc/mgpa/superframe/VendorAbilityManager;->NotifySuperFrameInfoToGame(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public switchStateChange(Lcom/ihoc/mgpa/superframe/VendorAbilityType;ILjava/lang/String;)V
    .locals 2

    const-string v0, "ability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;

    sget-object v1, Lcom/ihoc/mgpa/superframe/VendorAbilityAction;->SwitchStateChange:Lcom/ihoc/mgpa/superframe/VendorAbilityAction;

    invoke-direct {v0, p1, v1}, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;-><init>(Lcom/ihoc/mgpa/superframe/VendorAbilityType;Lcom/ihoc/mgpa/superframe/VendorAbilityAction;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->setSupported(I)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->setSwitchState(I)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->setParam(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/ihoc/mgpa/superframe/VendorAbilityManager$registerCallbackDelegate$listener$1;->this$0:Lcom/ihoc/mgpa/superframe/VendorAbilityManager;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/superframe/VendorAbilityStatus;->toJson()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ihoc/mgpa/superframe/VendorAbilityManager;->NotifySuperFrameInfoToGame(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
