.class public final Lcom/ihoc/mgpa/vendor/utils/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/vendor/utils/h0$a;,
        Lcom/ihoc/mgpa/vendor/utils/h0$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Landroid/app/Application;

.field public d:Lcom/ihoc/mgpa/vendor/utils/z;

.field public e:Lcom/ihoc/mgpa/vendor/utils/e0;

.field public final f:Landroid/os/Binder;

.field public g:I

.field public final h:Lcom/ihoc/mgpa/vendor/utils/h0$a;

.field public final i:Lcom/ihoc/mgpa/vendor/utils/h0$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/h0;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/h0;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/h0;->d:Lcom/ihoc/mgpa/vendor/utils/z;

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/h0;->e:Lcom/ihoc/mgpa/vendor/utils/e0;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/h0;->f:Landroid/os/Binder;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ihoc/mgpa/vendor/utils/h0;->g:I

    new-instance v0, Lcom/ihoc/mgpa/vendor/utils/h0$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ihoc/mgpa/vendor/utils/h0$a;-><init>(Lcom/ihoc/mgpa/vendor/utils/h0;I)V

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/h0;->h:Lcom/ihoc/mgpa/vendor/utils/h0$a;

    new-instance v0, Lcom/ihoc/mgpa/vendor/utils/h0$b;

    invoke-direct {v0, p0, v1}, Lcom/ihoc/mgpa/vendor/utils/h0$b;-><init>(Lcom/ihoc/mgpa/vendor/utils/h0;I)V

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/h0;->i:Lcom/ihoc/mgpa/vendor/utils/h0$b;

    const-string v0, "com.ihoc.mgpa.VENDORSDK_SERVER"

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/h0;->a:Ljava/lang/String;

    const-string v0, "com.ihoc.mgpa.vendorsdk.v2_0.ITGPAServer"

    iput-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/h0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/ihoc/mgpa/vendor/utils/z;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/h0;->c:Landroid/app/Application;

    iput-object p2, p0, Lcom/ihoc/mgpa/vendor/utils/h0;->d:Lcom/ihoc/mgpa/vendor/utils/z;

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/ihoc/mgpa/vendor/utils/h0;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/ihoc/mgpa/vendor/utils/h0;->c:Landroid/app/Application;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/high16 v0, 0x100000

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "can\'t find vendor server in this device!"

    invoke-static {v0, p2}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    iget-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/h0;->c:Landroid/app/Application;

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/h0;->i:Lcom/ihoc/mgpa/vendor/utils/h0$b;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "bind vendor service failed!"

    invoke-static {p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->error(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
