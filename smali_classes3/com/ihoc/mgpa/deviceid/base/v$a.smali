.class Lcom/ihoc/mgpa/deviceid/base/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/deviceid/base/v;->a(Landroid/content/Intent;Lcom/ihoc/mgpa/deviceid/base/v$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihoc/mgpa/deviceid/base/v$b;

.field final synthetic b:Lcom/ihoc/mgpa/deviceid/base/v;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/deviceid/base/v;Lcom/ihoc/mgpa/deviceid/base/v$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/deviceid/base/v$a;->b:Lcom/ihoc/mgpa/deviceid/base/v;

    iput-object p2, p0, Lcom/ihoc/mgpa/deviceid/base/v$a;->a:Lcom/ihoc/mgpa/deviceid/base/v$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "the service has been connected."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ihoc/mgpa/deviceid/base/v$a;->a:Lcom/ihoc/mgpa/deviceid/base/v$b;

    invoke-interface {p1, p2}, Lcom/ihoc/mgpa/deviceid/base/v$b;->a(Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "this service has been disconnected."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
