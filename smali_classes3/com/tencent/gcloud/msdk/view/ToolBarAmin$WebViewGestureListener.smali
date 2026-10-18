.class Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ToolBarAmin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gcloud/msdk/view/ToolBarAmin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;


# direct methods
.method public constructor <init>(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$400(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    .line 337
    :cond_0
    iget-object p3, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$500(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tencent/smtt/sdk/WebView;->getContentHeight()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$500(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getScale()F

    move-result v0

    mul-float p3, p3, v0

    float-to-int p3, p3

    .line 339
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$600(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$500(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    if-ge p3, v0, :cond_1

    .line 340
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "contentHeight : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "WebViewHeight"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$500(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/WebView;->getHeight()I

    move-result p2

    add-int/lit8 p2, p2, 0x3c

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return v1

    .line 344
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p3, v0

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$700(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p3, p3, v0

    if-gtz p3, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p3, v0

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$700(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p3, p3, v0

    if-lez p3, :cond_2

    goto/16 :goto_1

    .line 348
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p3, v0

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$800(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x2

    cmpl-float p3, p3, v0

    if-lez p3, :cond_6

    .line 349
    iget-object p3, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$600(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Z

    move-result p3

    if-nez p3, :cond_3

    return v1

    .line 352
    :cond_3
    iget-object p3, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p3, v1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$602(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;Z)Z

    .line 356
    :try_start_0
    iget-object p3, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$900(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)I

    move-result p3

    mul-int/lit16 p3, p3, 0x1388

    int-to-float p3, p3

    neg-float v0, p4

    div-float/2addr p3, v0

    float-to-int p3, p3

    .line 357
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {v0, p3}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$1000(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;I)V

    .line 359
    iget-object p3, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$1100(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 360
    iget-object p3, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$1200(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 362
    :cond_4
    iget-object p3, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$300(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)I

    move-result p3

    if-ne v2, p3, :cond_5

    .line 363
    iget-object p3, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$1300(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 364
    iget-object p3, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$1400(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 365
    iget-object p3, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$1500(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 368
    :cond_5
    iget-object p3, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$1600(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 369
    iget-object p3, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$1400(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 370
    iget-object p3, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$1500(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 388
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    :cond_6
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$800(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_a

    .line 393
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$600(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    .line 396
    :cond_7
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$602(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;Z)Z

    .line 400
    :try_start_1
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$900(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x1388

    int-to-float p1, p1

    div-float/2addr p1, p4

    float-to-int p1, p1

    .line 401
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p2, p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$1000(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;I)V

    .line 403
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$1100(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 404
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$1900(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 406
    :cond_8
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$300(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)I

    move-result p1

    if-ne v2, p1, :cond_9

    .line 407
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$1300(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 408
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$2000(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 409
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$2100(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 412
    :cond_9
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$1600(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 413
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$2000(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 414
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarAmin;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarAmin;->access$2100(Lcom/tencent/gcloud/msdk/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 432
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_1
    return v1
.end method
