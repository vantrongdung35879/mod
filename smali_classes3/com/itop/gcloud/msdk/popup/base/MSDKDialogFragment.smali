.class public Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;
.super Landroid/app/DialogFragment;
.source "MSDKDialogFragment.java"


# static fields
.field public static BG_COLOR:I = 0x2

.field public static BG_IMAGE_RES:I = 0x1

.field private static final MSDK_DIALOG_LAYOUT:Ljava/lang/String; = "msdkpopup_dialog_fragment_layout"

.field private static dialogLayout:Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;

.field private static volatile instance:Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;


# instance fields
.field private bgRes:I

.field private bgResType:I

.field private isShowed:Z

.field private layout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->isShowed:Z

    const/4 v1, -0x1

    .line 36
    iput v1, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->bgResType:I

    .line 37
    iput v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->bgRes:I

    return-void
.end method

.method public static getInstance()Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;
    .locals 2

    .line 40
    sget-object v0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->instance:Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->instance:Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;

    invoke-direct {v1}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;-><init>()V

    sput-object v1, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->instance:Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->instance:Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;

    return-object v0
.end method

.method private updateDialogBg()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->layout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 148
    iget v1, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->bgResType:I

    sget v2, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->BG_IMAGE_RES:I

    if-ne v1, v2, :cond_0

    .line 149
    iget v1, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->bgRes:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 150
    :cond_0
    sget v2, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->BG_COLOR:I

    if-ne v1, v2, :cond_1

    .line 151
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->bgRes:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateDialogConfig()V
    .locals 6

    .line 157
    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 159
    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/ScreenUtils;->isSystemFullScreenSupport(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/ScreenUtils;->isFullScreen(Landroid/app/Activity;)Z

    move-result v2

    const/16 v3, 0x400

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 166
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->updateDialogBg()V

    .line 167
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 171
    const-string v2, "MSDKPopupDialogWindowAnim"

    invoke-static {v0, v2}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 173
    invoke-virtual {p0, v3}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->setCancelable(Z)V

    .line 176
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 177
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 180
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 181
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v4, -0x1

    .line 182
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 183
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 184
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_2

    const/4 v4, 0x1

    .line 185
    invoke-static {v2, v4}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 187
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 191
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android:id/titleDivider"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 192
    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v2, 0x8

    .line 194
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "android:id/title"

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 198
    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 199
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->isShowed:Z

    const/4 v0, 0x0

    .line 227
    sput-object v0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->instance:Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;

    .line 228
    sget-object v0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->dialogLayout:Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;

    if-eqz v0, :cond_1

    .line 229
    invoke-interface {v0}, Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;->onDestroy()V

    :cond_1
    return-void
.end method

.method public loadLayout(Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;)V
    .locals 3

    .line 63
    sput-object p1, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->dialogLayout:Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->layout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {p1}, Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;->getLayout()Landroid/view/View;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 67
    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->layout:Landroid/widget/RelativeLayout;

    if-eq v1, v2, :cond_0

    .line 68
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 69
    invoke-interface {p1}, Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;->removeFromParent()V

    .line 70
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->layout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "MSDKPopupDefaultDialog"

    invoke-static {p1, v0}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 133
    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "msdkpopup_dialog_fragment_layout"

    invoke-static {p2, p3}, Lcom/itop/gcloud/msdk/popup/utils/ResUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->layout:Landroid/widget/RelativeLayout;

    .line 134
    sget-object p1, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->dialogLayout:Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;

    if-eqz p1, :cond_0

    .line 135
    invoke-interface {p1}, Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;->removeFromParent()V

    .line 136
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    iget-object p2, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->layout:Landroid/widget/RelativeLayout;

    sget-object p3, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->dialogLayout:Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;

    invoke-interface {p3}, Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;->getLayout()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->updateDialogConfig()V

    .line 143
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->layout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 104
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 105
    sget-object v0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->dialogLayout:Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 96
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 97
    sget-object v0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->dialogLayout:Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lcom/itop/gcloud/msdk/popup/base/IMSDKDialogLayout;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 112
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 114
    const-string v0, "isShowed"

    iget-boolean v1, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->isShowed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    const-string v0, "bgResType"

    iget v1, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->bgResType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    const-string v0, "bgRes"

    iget v1, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->bgRes:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKWindowUtils;->focusNotAle(Landroid/view/Window;)V

    .line 88
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKWindowUtils;->clearFocusNotAle(Landroid/view/Window;)V

    :cond_1
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3

    .line 122
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 124
    const-string v0, "isShowed"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->isShowed:Z

    .line 125
    const-string v0, "bgResType"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->bgResType:I

    .line 126
    const-string v0, "bgRes"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->bgRes:I

    .line 127
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->updateDialogBg()V

    :cond_0
    return-void
.end method

.method public setBackgroundRes(II)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->bgResType:I

    .line 58
    iput p2, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->bgRes:I

    .line 59
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->updateDialogBg()V

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->isShowed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->isShowed:Z

    .line 210
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 212
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
