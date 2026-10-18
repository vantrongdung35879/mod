.class public Lcom/itop/gcloud/msdk/popup/utils/MSDKWindowUtils;
.super Ljava/lang/Object;
.source "MSDKWindowUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearFocusNotAle(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x8

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public static focusNotAle(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x8

    .line 45
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public static hideNavigationBar(Landroid/view/Window;)V
    .locals 2

    .line 16
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 17
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/itop/gcloud/msdk/popup/utils/MSDKWindowUtils$1;

    invoke-direct {v1, p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKWindowUtils$1;-><init>(Landroid/view/Window;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method
