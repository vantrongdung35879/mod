.class final Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PermissionUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestPermission(Landroid/app/Activity;Ljava/lang/String;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "shouldShowRationale",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $denyTipRes:I

.field final synthetic $permission:Ljava/lang/String;

.field final synthetic $requestCode:I


# direct methods
.method constructor <init>(ILandroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    iput p1, p0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$1;->$denyTipRes:I

    iput-object p2, p0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$1;->$permission:Ljava/lang/String;

    iput p4, p0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$1;->$requestCode:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 71
    iget p1, p0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$1;->$denyTipRes:I

    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$1;->$activity:Landroid/app/Activity;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$1;->$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$1;->$permission:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$1;->$requestCode:I

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
