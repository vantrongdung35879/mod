.class public Lcom/ihoc/mgpa/gradish/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static c:Lcom/ihoc/mgpa/MgpaCallback;


# instance fields
.field private a:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/I;->a:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    .line 3
    iput-object p2, p0, Lcom/ihoc/mgpa/gradish/I;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/ihoc/mgpa/MgpaCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/gradish/I;->c:Lcom/ihoc/mgpa/MgpaCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/I;->c:Lcom/ihoc/mgpa/MgpaCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/I;->a:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "no game\' callback is registered, ple check! key: %s ."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/I;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 6
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "no callback data, ple check!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/I;->a:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ihoc/mgpa/gradish/I;->b:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    aput-object v3, v4, v1

    const-string v0, "start to handle callback data. key: %s , value: %s ."

    invoke-static {v0, v4}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    sget-object v0, Lcom/ihoc/mgpa/gradish/I$a;->a:[I

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/I;->a:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 63
    :pswitch_1
    sget-object v0, Lcom/ihoc/mgpa/gradish/I;->c:Lcom/ihoc/mgpa/MgpaCallback;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/I;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ihoc/mgpa/MgpaCallback;->notifySystemInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 64
    :pswitch_2
    sget-object v0, Lcom/ihoc/mgpa/gradish/I;->c:Lcom/ihoc/mgpa/MgpaCallback;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/I;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ihoc/mgpa/MgpaCallback;->notifySystemInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 65
    :pswitch_3
    sget-object v0, Lcom/ihoc/mgpa/gradish/I;->c:Lcom/ihoc/mgpa/MgpaCallback;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/I;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ihoc/mgpa/MgpaCallback;->notifySystemInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :pswitch_4
    sget-object v0, Lcom/ihoc/mgpa/gradish/I;->c:Lcom/ihoc/mgpa/MgpaCallback;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/I;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ihoc/mgpa/MgpaCallback;->notifySystemInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 67
    :pswitch_5
    sget-object v0, Lcom/ihoc/mgpa/gradish/I;->c:Lcom/ihoc/mgpa/MgpaCallback;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/I;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ihoc/mgpa/MgpaCallback;->notifySystemInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :pswitch_6
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isCallbackFucOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ihoc/mgpa/gradish/I;->c:Lcom/ihoc/mgpa/MgpaCallback;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/I;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 69
    invoke-interface {v0, v1}, Lcom/ihoc/mgpa/MgpaCallback;->notifySystemInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "vacant download callback func is not open, or no game\' callback is registered, ple check!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :pswitch_7
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean v0, v0, Lcom/ihoc/mgpa/gradish/L$b;->f:Z

    if-eqz v0, :cond_3

    .line 73
    sget-object v0, Lcom/ihoc/mgpa/gradish/I;->c:Lcom/ihoc/mgpa/MgpaCallback;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/I;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ihoc/mgpa/MgpaCallback;->notifySystemInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "cpu lock check func is not open, ple check!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :pswitch_8
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isCallbackFucOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    sget-object v0, Lcom/ihoc/mgpa/gradish/I;->c:Lcom/ihoc/mgpa/MgpaCallback;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/I;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ihoc/mgpa/MgpaCallback;->notifySystemInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_4
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "yolo data forward func is not open, ple check!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :pswitch_9
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isCallbackFucOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 81
    sget-object v0, Lcom/ihoc/mgpa/gradish/I;->c:Lcom/ihoc/mgpa/MgpaCallback;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/I;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ihoc/mgpa/MgpaCallback;->notifySystemInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_5
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "low power callback func is not open, ple check!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :pswitch_a
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isFpsStrategyFuncOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 85
    sget-object v0, Lcom/ihoc/mgpa/gradish/I;->c:Lcom/ihoc/mgpa/MgpaCallback;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/I;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ihoc/mgpa/MgpaCallback;->notifySystemInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_6
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "fps strategy func is not open, ple check!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
