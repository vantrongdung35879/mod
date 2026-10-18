.class Lcom/ihoc/mgpa/gradish/u1$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/gradish/u1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ihoc/mgpa/gradish/u1;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/gradish/u1;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/u1$a;->a:Lcom/ihoc/mgpa/gradish/u1;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 39
    :pswitch_0
    const-string p1, "[VmpSubHandler]: no msg type is matched!"

    goto :goto_0

    .line 40
    :pswitch_1
    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorKey;->SuperResolution:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->quoteJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ihoc/mgpa/gradish/m1;->c(ILjava/lang/String;)V

    goto :goto_1

    .line 41
    :pswitch_2
    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorKey;->FrameInterpolation:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->quoteJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ihoc/mgpa/gradish/m1;->c(ILjava/lang/String;)V

    goto :goto_1

    .line 42
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x2

    .line 43
    invoke-static {v1, p1}, Lcom/ihoc/mgpa/gradish/C0;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 44
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x1

    .line 45
    invoke-static {v1, p1}, Lcom/ihoc/mgpa/gradish/C0;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 46
    :pswitch_5
    invoke-static {}, Lcom/ihoc/mgpa/gradish/C0;->f()V

    goto :goto_1

    .line 47
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/C0;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :pswitch_7
    invoke-static {}, Lcom/ihoc/mgpa/gradish/C0;->d()V

    goto :goto_1

    .line 50
    :pswitch_8
    invoke-static {}, Lcom/ihoc/mgpa/gradish/C0;->b()V

    goto :goto_1

    .line 51
    :pswitch_9
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/u1$a;->a:Lcom/ihoc/mgpa/gradish/u1;

    invoke-static {v1, p1}, Lcom/ihoc/mgpa/gradish/u1;->a(Lcom/ihoc/mgpa/gradish/u1;Landroid/os/Message;)V

    goto :goto_1

    .line 52
    :pswitch_a
    invoke-static {}, Lcom/ihoc/mgpa/gradish/h;->d()Lcom/ihoc/mgpa/gradish/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/h;->a()V

    goto :goto_1

    .line 39
    :goto_0
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 89
    :catchall_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[VmpSubHandler]: run exception, ple check!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    :pswitch_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
