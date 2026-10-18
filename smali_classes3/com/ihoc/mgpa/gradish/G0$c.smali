.class Lcom/ihoc/mgpa/gradish/G0$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/gradish/G0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/ihoc/mgpa/gradish/G0;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/gradish/G0;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/ihoc/mgpa/gradish/G0$c;->a:I

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    :goto_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/m1;->f()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    const-string v0, "cpu_level"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "-1"

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/G0;->k(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->k(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :goto_1
    const-string v0, "gpu_level"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/G0;->l(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->l(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :goto_2
    const-string v0, "cpu_load"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/G0;->m(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->m(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :goto_3
    const-string v0, "gpu_load"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 19
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/G0;->n(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->n(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :goto_4
    const-string v0, "cpu_temp"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 24
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/G0;->o(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->o(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :goto_5
    const-string v0, "fps_limit"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 29
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/G0;->a(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 31
    :cond_5
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->a(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :goto_6
    const-string v0, "fps"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 34
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/G0;->b(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 36
    :cond_6
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->b(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :goto_7
    const-string v0, "game_overheat"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 39
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/G0;->c(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 41
    :cond_7
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->c(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :goto_8
    const-string v0, "frame_drops"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 44
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/G0;->d(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 46
    :cond_8
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->d(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :goto_9
    const-string v0, "rpic_set"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 49
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/G0;->e(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 51
    :cond_9
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->e(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :goto_a
    iget v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->a:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_a

    .line 55
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->f(Lcom/ihoc/mgpa/gradish/G0;)V

    .line 56
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->g(Lcom/ihoc/mgpa/gradish/G0;)V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->a:I

    return-void

    .line 61
    :cond_a
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->k(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->l(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->m(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->n(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->o(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->a(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->b(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->c(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->d(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/G0;->e(Lcom/ihoc/mgpa/gradish/G0;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x3e6

    .line 72
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 16
    invoke-static {}, Lcom/ihoc/mgpa/gradish/G0;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataHandler:handleMessage: can not find msg type."

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/G0;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SSPDataHandler: start to collect data. "

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :try_start_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/G0$c;->a()V

    .line 20
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/G0;->h(Lcom/ihoc/mgpa/gradish/G0;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0xc

    if-lt p1, v0, :cond_1

    .line 21
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/G0;->i(Lcom/ihoc/mgpa/gradish/G0;)V

    .line 22
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/G0$c;->b:Lcom/ihoc/mgpa/gradish/G0;

    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/G0;->j(Lcom/ihoc/mgpa/gradish/G0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    :catch_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/G0;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataHandler:handleMessage: run exception."

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
