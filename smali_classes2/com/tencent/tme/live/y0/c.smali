.class public Lcom/tencent/tme/live/y0/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/y0/c$a;
    }
.end annotation


# static fields
.field public static volatile c:Lcom/tencent/tme/live/y0/c;


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/y0/c;->b:Lorg/json/JSONArray;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TMEReporter"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/tencent/tme/live/y0/c$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/tencent/tme/live/y0/c$a;-><init>(Lcom/tencent/tme/live/y0/c;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/tme/live/y0/c;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/tencent/tme/live/y0/c;
    .locals 2

    sget-object v0, Lcom/tencent/tme/live/y0/c;->c:Lcom/tencent/tme/live/y0/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/tme/live/y0/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/tme/live/y0/c;->c:Lcom/tencent/tme/live/y0/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tme/live/y0/c;

    invoke-direct {v1}, Lcom/tencent/tme/live/y0/c;-><init>()V

    sput-object v1, Lcom/tencent/tme/live/y0/c;->c:Lcom/tencent/tme/live/y0/c;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/tme/live/y0/c;->c:Lcom/tencent/tme/live/y0/c;

    return-object v0
.end method

.method public static synthetic a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "reportData:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lorg/json/JSONArray;)V
    .locals 3

    const-string v0, "reportData start:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/tme/live/y0/c$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/tencent/tme/live/y0/c$$ExternalSyntheticLambda0;-><init>()V

    .line 40
    new-instance v1, Lcom/tencent/tme/live/i/i$b;

    invoke-direct {v1}, Lcom/tencent/tme/live/i/i$b;-><init>()V

    const-string v2, "dataReport"

    iput-object v2, v1, Lcom/tencent/tme/live/i/i$b;->a:Ljava/lang/String;

    iput-object p0, v1, Lcom/tencent/tme/live/i/i$b;->b:Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lcom/tencent/tme/live/i/i$b;Lcom/tencent/tme/live/i/i$a;)V

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    .line 1
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/tme/live/framework/common/b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/tencent/tme/live/framework/common/ConstantsAOV$Biz;->CLIENT_TYPE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/tme/live/framework/common/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|aov|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/tme/live/framework/common/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/tencent/tme/live/framework/common/b;->x:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x0

    .line 2
    invoke-static {v3, v4}, Lcom/tencent/tme/live/b1/c;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p2, v3

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 5
    iget-object v5, v0, Lcom/tencent/tme/live/z0/a;->a:Ljava/lang/String;

    .line 7
    iget-object v6, v0, Lcom/tencent/tme/live/z0/a;->b:Ljava/lang/String;

    .line 9
    iget-object v7, v2, Lcom/tencent/tme/live/z0/c;->a:Ljava/lang/String;

    .line 11
    iget-object v8, v2, Lcom/tencent/tme/live/z0/c;->b:Ljava/lang/String;

    .line 13
    iget-object v9, v2, Lcom/tencent/tme/live/z0/c;->c:Ljava/lang/String;

    .line 15
    iget-object v10, v2, Lcom/tencent/tme/live/z0/c;->d:Ljava/lang/String;

    .line 17
    iget-object v11, v2, Lcom/tencent/tme/live/z0/c;->e:Ljava/lang/String;

    .line 19
    iget v0, v3, Lcom/tencent/tme/live/z0/b;->a:I

    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 21
    iget v0, v3, Lcom/tencent/tme/live/z0/b;->b:I

    .line 22
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 23
    iget v0, v3, Lcom/tencent/tme/live/z0/b;->c:I

    .line 24
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 25
    iget v0, v3, Lcom/tencent/tme/live/z0/b;->d:I

    .line 26
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 27
    iget-object v0, v4, Lcom/tencent/tme/live/z0/d;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 29
    iget-object v0, v4, Lcom/tencent/tme/live/z0/d;->b:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 31
    iget-object v0, v4, Lcom/tencent/tme/live/z0/d;->c:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 33
    iget-object v0, v4, Lcom/tencent/tme/live/z0/d;->d:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 35
    iget-object v0, v4, Lcom/tencent/tme/live/z0/d;->e:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 36
    filled-new-array/range {v5 .. v21}, [Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    const-string v2, "CommonReport"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v4, p1

    :try_start_0
    invoke-virtual {v1, v4, v0}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "key"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "value"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 39
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, v1, Lcom/tencent/tme/live/y0/c;->a:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/y0/c;->b:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/y0/c;->b:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/tme/live/y0/c;->a(Lorg/json/JSONArray;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/y0/c;->b:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
