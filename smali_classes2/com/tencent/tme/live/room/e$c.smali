.class public Lcom/tencent/tme/live/room/e$c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/room/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/tencent/tme/live/room/e;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/room/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/room/e$c;->b:Lcom/tencent/tme/live/room/e;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tme/live/room/e$c;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/tencent/tme/live/room/e$c;->b:Lcom/tencent/tme/live/room/e;

    .line 1
    iget-object p2, p2, Lcom/tencent/tme/live/room/e;->b:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/tencent/tme/live/room/e$c;->b:Lcom/tencent/tme/live/room/e;

    .line 3
    iget v0, p2, Lcom/tencent/tme/live/room/e;->g:F

    add-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p2, Lcom/tencent/tme/live/room/e;->i:Landroid/view/WindowManager$LayoutParams;

    .line 5
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 6
    iget-object p2, p2, Lcom/tencent/tme/live/room/e;->h:Landroid/view/Window;

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p2, p0, Lcom/tencent/tme/live/room/e$c;->b:Lcom/tencent/tme/live/room/e;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 8
    iget-object p2, p2, Lcom/tencent/tme/live/room/e;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 9
    iget-object p1, p0, Lcom/tencent/tme/live/room/e$c;->b:Lcom/tencent/tme/live/room/e;

    .line 10
    iget-object p2, p1, Lcom/tencent/tme/live/room/e;->m:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/tencent/tme/live/room/e;->l:Landroid/widget/TextView;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_player_bright:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p1, Lcom/tencent/tme/live/room/e;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p1, Lcom/tencent/tme/live/room/e;->j:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget p2, Lcom/tencent/tme/live/biz/R$string;->player_bright_icon:I

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(I)V

    .line 11
    iget-object p1, p0, Lcom/tencent/tme/live/room/e$c;->b:Lcom/tencent/tme/live/room/e;

    invoke-static {p1}, Lcom/tencent/tme/live/room/e;->a(Lcom/tencent/tme/live/room/e;)V

    return-void
.end method

.method public final b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/room/e$c;->b:Lcom/tencent/tme/live/room/e;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/room/e;->d:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/tencent/tme/live/room/e;->b:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tme/live/room/e$c;->b:Lcom/tencent/tme/live/room/e;

    .line 4
    iget v1, v1, Lcom/tencent/tme/live/room/e;->e:I

    .line 5
    div-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    int-to-float p2, v0

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/tencent/tme/live/room/e$c;->b:Lcom/tencent/tme/live/room/e;

    .line 6
    iget v0, p2, Lcom/tencent/tme/live/room/e;->f:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 7
    iget-object p2, p2, Lcom/tencent/tme/live/room/e;->d:Landroid/media/AudioManager;

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p2, v0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    int-to-float p1, p1

    iget-object p2, p0, Lcom/tencent/tme/live/room/e$c;->b:Lcom/tencent/tme/live/room/e;

    .line 9
    iget v0, p2, Lcom/tencent/tme/live/room/e;->e:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v2, p2, Lcom/tencent/tme/live/room/e;->m:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p2, Lcom/tencent/tme/live/room/e;->l:Landroid/widget/TextView;

    sget v3, Lcom/tencent/tme/live/biz/R$string;->tme_player_volume:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/tencent/tme/live/room/e;->j:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v2, Lcom/tencent/tme/live/biz/R$string;->player_volume_on:I

    invoke-virtual {v0, v2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(I)V

    iget-object p2, p2, Lcom/tencent/tme/live/room/e;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p2, Lcom/tencent/tme/live/room/e;->j:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->player_volume_off:I

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(I)V

    iget-object p2, p2, Lcom/tencent/tme/live/room/e;->k:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    :goto_1
    iget-object p2, p0, Lcom/tencent/tme/live/room/e$c;->b:Lcom/tencent/tme/live/room/e;

    .line 12
    iget-object p2, p2, Lcom/tencent/tme/live/room/e;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 13
    iget-object p1, p0, Lcom/tencent/tme/live/room/e$c;->b:Lcom/tencent/tme/live/room/e;

    invoke-static {p1}, Lcom/tencent/tme/live/room/e;->a(Lcom/tencent/tme/live/room/e;)V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/room/e$c;->b:Lcom/tencent/tme/live/room/e;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/room/e;->p:Landroid/view/GestureDetector$SimpleOnGestureListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tme/live/room/e$c;->a:I

    :try_start_0
    iget-object p1, p0, Lcom/tencent/tme/live/room/e$c;->b:Lcom/tencent/tme/live/room/e;

    .line 1
    iget-object v0, p1, Lcom/tencent/tme/live/room/e;->d:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 3
    iput v0, p1, Lcom/tencent/tme/live/room/e;->f:I

    .line 4
    iget-object p1, p0, Lcom/tencent/tme/live/room/e$c;->b:Lcom/tencent/tme/live/room/e;

    .line 5
    iget-object v0, p1, Lcom/tencent/tme/live/room/e;->i:Landroid/view/WindowManager$LayoutParams;

    .line 6
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 7
    iput v0, p1, Lcom/tencent/tme/live/room/e;->g:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p1, Lcom/tencent/tme/live/room/e;->c:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 10
    iput v0, p1, Lcom/tencent/tme/live/room/e;->g:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    :try_start_0
    iget p3, p0, Lcom/tencent/tme/live/room/e$c;->a:I

    const/4 p4, 0x2

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    if-eq p3, v0, :cond_1

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/live/room/e$c;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/live/room/e$c;->b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object p2, p0, Lcom/tencent/tme/live/room/e$c;->b:Lcom/tencent/tme/live/room/e;

    .line 1
    iget-object p2, p2, Lcom/tencent/tme/live/room/e;->b:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    iput p4, p0, Lcom/tencent/tme/live/room/e$c;->a:I

    goto :goto_0

    :cond_3
    iput v0, p0, Lcom/tencent/tme/live/room/e$c;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception p1

    const-string p2, "onScroll Exception: "

    invoke-static {p2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "PlayerSystemSettingView"

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/room/e$c;->b:Lcom/tencent/tme/live/room/e;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/room/e;->p:Landroid/view/GestureDetector$SimpleOnGestureListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
