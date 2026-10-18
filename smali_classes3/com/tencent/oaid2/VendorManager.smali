.class public Lcom/tencent/oaid2/VendorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final v:Ljava/lang/String; = "1.0.8"


# instance fields
.field public a:Lcom/tencent/qimei/a/a;

.field public b:Lcom/tencent/oaid2/IVendorCallback;

.field public c:Landroid/content/Context;

.field public volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    .line 5
    iput-object v0, p0, Lcom/tencent/oaid2/VendorManager;->b:Lcom/tencent/oaid2/IVendorCallback;

    .line 6
    iput-object v0, p0, Lcom/tencent/oaid2/VendorManager;->c:Landroid/content/Context;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/tencent/oaid2/VendorManager;->d:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string p2, ""

    .line 4
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    const-string p3, ""

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/oaid2/VendorManager;->d:Z

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/oaid2/VendorManager;->callbackToUser(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez p4, :cond_4

    .line 10
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 11
    sget-object p2, Lcom/tencent/qimei/b/a;->a:Lcom/tencent/qimei/b/b;

    const-string p4, "qm_ch_od"

    invoke-virtual {p2, p4, p3}, Lcom/tencent/qimei/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p3, "qm_od_is_sup"

    invoke-virtual {p2, p3, p1}, Lcom/tencent/qimei/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    if-eqz p1, :cond_4

    .line 14
    invoke-interface {p1}, Lcom/tencent/qimei/a/a;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public callbackToUser(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "vm onResult "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/af/b;->b(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tencent/oaid2/VendorManager;->b:Lcom/tencent/oaid2/IVendorCallback;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/oaid2/IVendorCallback;->onResult(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/tencent/oaid2/VendorManager;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getVendorInfo(Landroid/content/Context;Lcom/tencent/oaid2/IVendorCallback;)I
    .locals 6

    .line 1
    iput-object p2, p0, Lcom/tencent/oaid2/VendorManager;->b:Lcom/tencent/oaid2/IVendorCallback;

    .line 2
    sget-object p2, Lcom/tencent/qimei/b/a;->a:Lcom/tencent/qimei/b/b;

    .line 3
    iput-object p1, p2, Lcom/tencent/qimei/b/b;->b:Landroid/content/Context;

    .line 4
    invoke-virtual {p2}, Lcom/tencent/qimei/b/b;->b()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0, v1, p2, v0}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/tencent/oaid2/VendorChecker;->values()[Lcom/tencent/oaid2/VendorChecker;

    move-result-object p2

    array-length v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p2, v3

    .line 8
    invoke-virtual {v4}, Lcom/tencent/oaid2/VendorChecker;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_2
    sget-object v4, Lcom/tencent/oaid2/VendorChecker;->UNSUPPORTED:Lcom/tencent/oaid2/VendorChecker;

    :goto_1
    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/oaid2/VendorManager;->c:Landroid/content/Context;

    if-nez p2, :cond_3

    .line 15
    iput-object p1, p0, Lcom/tencent/oaid2/VendorManager;->c:Landroid/content/Context;

    .line 18
    :cond_3
    sget-object p1, Lcom/tencent/qimei/a/b;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 50
    :pswitch_0
    new-instance p1, Lcom/tencent/qimei/d/i;

    invoke-direct {p1}, Lcom/tencent/qimei/d/i;-><init>()V

    iput-object p1, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    .line 52
    :pswitch_1
    iget-object p1, p0, Lcom/tencent/oaid2/VendorManager;->c:Landroid/content/Context;

    .line 53
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "com.coolpad.deviceidsupport"

    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    new-instance p1, Lcom/tencent/qimei/c/g;

    invoke-direct {p1}, Lcom/tencent/qimei/c/g;-><init>()V

    iput-object p1, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    goto :goto_2

    :catchall_0
    nop

    goto :goto_2

    .line 55
    :pswitch_2
    new-instance p1, Lcom/tencent/qimei/h/h;

    invoke-direct {p1}, Lcom/tencent/qimei/h/h;-><init>()V

    iput-object p1, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    goto :goto_2

    .line 56
    :pswitch_3
    new-instance p1, Lcom/tencent/qimei/j/a;

    invoke-direct {p1}, Lcom/tencent/qimei/j/a;-><init>()V

    iput-object p1, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    goto :goto_2

    .line 57
    :pswitch_4
    new-instance p1, Lcom/tencent/qimei/i/e;

    invoke-direct {p1}, Lcom/tencent/qimei/i/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    goto :goto_2

    .line 58
    :pswitch_5
    new-instance p1, Lcom/tencent/qimei/l/g;

    invoke-direct {p1}, Lcom/tencent/qimei/l/g;-><init>()V

    iput-object p1, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    goto :goto_2

    .line 59
    :pswitch_6
    new-instance p1, Lcom/tencent/qimei/e/e;

    invoke-direct {p1}, Lcom/tencent/qimei/e/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    goto :goto_2

    .line 60
    :pswitch_7
    new-instance p1, Lcom/tencent/qimei/g/e;

    invoke-direct {p1}, Lcom/tencent/qimei/g/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    goto :goto_2

    .line 61
    :pswitch_8
    new-instance p1, Lcom/tencent/qimei/k/d;

    invoke-direct {p1}, Lcom/tencent/qimei/k/d;-><init>()V

    iput-object p1, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    goto :goto_2

    .line 62
    :pswitch_9
    new-instance p1, Lcom/tencent/qimei/f/f;

    invoke-direct {p1}, Lcom/tencent/qimei/f/f;-><init>()V

    iput-object p1, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    goto :goto_2

    .line 63
    :pswitch_a
    new-instance p1, Lcom/tencent/qimei/m/b;

    invoke-direct {p1}, Lcom/tencent/qimei/m/b;-><init>()V

    iput-object p1, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    goto :goto_2

    .line 64
    :pswitch_b
    new-instance p1, Lcom/tencent/qimei/n/a;

    invoke-direct {p1}, Lcom/tencent/qimei/n/a;-><init>()V

    iput-object p1, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    .line 104
    :goto_2
    iget-object p1, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    if-nez p1, :cond_5

    .line 105
    const-string p1, "ro.build.version.emui"

    invoke-static {p1}, Lcom/tencent/qimei/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "hw_sc.build.platform.version"

    invoke-static {p1}, Lcom/tencent/qimei/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 106
    :cond_4
    new-instance p1, Lcom/tencent/qimei/f/f;

    invoke-direct {p1}, Lcom/tencent/qimei/f/f;-><init>()V

    iput-object p1, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    .line 109
    :cond_5
    iget-object p1, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    if-nez p1, :cond_6

    .line 110
    invoke-virtual {p0, v2, v1, v1, v2}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    const/16 p1, -0xc

    return p1

    .line 113
    :cond_6
    const-string p1, "init"

    invoke-static {p1}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    const/16 p1, -0xd

    .line 115
    :try_start_1
    iget-object p2, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    iget-object v0, p0, Lcom/tencent/oaid2/VendorManager;->c:Landroid/content/Context;

    invoke-interface {p2, v0, p0}, Lcom/tencent/qimei/a/a;->a(Landroid/content/Context;Lcom/tencent/oaid2/VendorManager;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 123
    iget-object p2, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    invoke-interface {p2}, Lcom/tencent/qimei/a/a;->a()Z

    move-result p2

    if-nez p2, :cond_7

    .line 125
    :try_start_2
    iget-object p2, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    invoke-interface {p2}, Lcom/tencent/qimei/a/a;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 127
    :catchall_1
    invoke-virtual {p0, v2, v1, v1, v2}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    return p1

    .line 131
    :cond_7
    const-string/jumbo p1, "sync"

    invoke-static {p1}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    .line 133
    :try_start_3
    iget-object p1, p0, Lcom/tencent/oaid2/VendorManager;->a:Lcom/tencent/qimei/a/a;

    invoke-interface {p1}, Lcom/tencent/qimei/a/a;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 135
    :catchall_2
    invoke-virtual {p0, v2, v1, v1, v2}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    :goto_3
    return v2

    .line 136
    :catchall_3
    invoke-virtual {p0, v2, v1, v1, v2}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
