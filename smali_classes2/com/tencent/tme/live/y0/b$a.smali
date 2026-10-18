.class public Lcom/tencent/tme/live/y0/b$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/y0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/y0/b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/y0/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/y0/b$a;->a:Lcom/tencent/tme/live/y0/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tencent/tme/live/y0/b$a;->a:Lcom/tencent/tme/live/y0/b;

    .line 1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/tencent/tme/live/y0/b;->a(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tencent/tme/live/y0/b$a;->a:Lcom/tencent/tme/live/y0/b;

    .line 4
    iget-object v2, v1, Lcom/tencent/tme/live/y0/b;->c:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 5
    iget-object v0, v1, Lcom/tencent/tme/live/y0/b;->c:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_3

    invoke-virtual {v1}, Lcom/tencent/tme/live/y0/b;->b()V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/y0/b$a;->a:Lcom/tencent/tme/live/y0/b;

    .line 7
    invoke-virtual {v0}, Lcom/tencent/tme/live/y0/b;->b()V

    .line 8
    iget-object v0, p0, Lcom/tencent/tme/live/y0/b$a;->a:Lcom/tencent/tme/live/y0/b;

    .line 9
    iget-object v0, v0, Lcom/tencent/tme/live/y0/b;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
