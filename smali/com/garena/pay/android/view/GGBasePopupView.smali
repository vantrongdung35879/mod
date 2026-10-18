.class public Lcom/garena/pay/android/view/GGBasePopupView;
.super Ljava/lang/Object;
.source "GGBasePopupView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/pay/android/view/GGBasePopupView$DismissListener;
    }
.end annotation


# static fields
.field public static final STYLE_DEFAULT:I = 0x0

.field public static final STYLE_FULL_WIDTH:I = 0x1

.field public static final STYLE_GRID:I = 0x2


# instance fields
.field private final dismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private listener:Lcom/garena/pay/android/view/GGBasePopupView$DismissListener;

.field private mPopup:Landroid/widget/PopupWindow;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPopup(Lcom/garena/pay/android/view/GGBasePopupView;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPopup(Lcom/garena/pay/android/view/GGBasePopupView;Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyDismissListener(Lcom/garena/pay/android/view/GGBasePopupView;)V
    .locals 0

    invoke-direct {p0}, Lcom/garena/pay/android/view/GGBasePopupView;->notifyDismissListener()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/garena/pay/android/view/GGBasePopupView$1;

    invoke-direct {v0, p0}, Lcom/garena/pay/android/view/GGBasePopupView$1;-><init>(Lcom/garena/pay/android/view/GGBasePopupView;)V

    iput-object v0, p0, Lcom/garena/pay/android/view/GGBasePopupView;->dismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 54
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    .line 56
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 58
    iget-object v1, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object p1, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 61
    iget-object p1, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 62
    iget-object p1, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    .line 63
    iget-object p1, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/garena/pay/android/view/GGBasePopupView$1;

    invoke-direct {v0, p0}, Lcom/garena/pay/android/view/GGBasePopupView$1;-><init>(Lcom/garena/pay/android/view/GGBasePopupView;)V

    iput-object v0, p0, Lcom/garena/pay/android/view/GGBasePopupView;->dismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 94
    :cond_0
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, p1, v1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    :cond_1
    if-ne p2, v2, :cond_2

    .line 98
    new-instance p2, Landroid/widget/PopupWindow;

    const/4 v3, -0x1

    invoke-direct {p2, p1, v3, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p2, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    .line 101
    :cond_2
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 103
    iget-object p2, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object p1, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 107
    iget-object p1, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    .line 108
    iget-object p1, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZZ)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance p2, Lcom/garena/pay/android/view/GGBasePopupView$1;

    invoke-direct {p2, p0}, Lcom/garena/pay/android/view/GGBasePopupView$1;-><init>(Lcom/garena/pay/android/view/GGBasePopupView;)V

    iput-object p2, p0, Lcom/garena/pay/android/view/GGBasePopupView;->dismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 68
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    .line 70
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 72
    iget-object v0, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object p1, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 75
    iget-object p1, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 76
    iget-object p1, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    if-eqz p3, :cond_0

    .line 78
    iget-object p1, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    new-instance p3, Lcom/garena/pay/android/view/GGBasePopupView$2;

    invoke-direct {p3, p0}, Lcom/garena/pay/android/view/GGBasePopupView$2;-><init>(Lcom/garena/pay/android/view/GGBasePopupView;)V

    invoke-virtual {p1, p3}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private notifyDismissListener()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/garena/pay/android/view/GGBasePopupView;->listener:Lcom/garena/pay/android/view/GGBasePopupView$DismissListener;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Lcom/garena/pay/android/view/GGBasePopupView$DismissListener;->onDismissed()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackgroundBlack()V
    .locals 2

    .line 164
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 166
    iget-object v1, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object v0, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method

.method public setListener(Lcom/garena/pay/android/view/GGBasePopupView$DismissListener;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/garena/pay/android/view/GGBasePopupView;->listener:Lcom/garena/pay/android/view/GGBasePopupView$DismissListener;

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/pay/android/helper/Utils;->isActivityContextValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showAtCenter(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/pay/android/helper/Utils;->isActivityContextValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void
.end method

.method public showAtCenter(Landroid/view/View;III)V
    .locals 1

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/pay/android/helper/Utils;->isActivityContextValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void
.end method

.method public successfulDismiss()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 150
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 151
    iget-object v0, p0, Lcom/garena/pay/android/view/GGBasePopupView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
