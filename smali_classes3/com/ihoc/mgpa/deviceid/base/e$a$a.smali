.class Lcom/ihoc/mgpa/deviceid/base/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/deviceid/base/e$a;->a(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/ihoc/mgpa/deviceid/base/e$a;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/deviceid/base/e$a;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/deviceid/base/e$a$a;->b:Lcom/ihoc/mgpa/deviceid/base/e$a;

    iput-object p2, p0, Lcom/ihoc/mgpa/deviceid/base/e$a$a;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/e$a$a;->b:Lcom/ihoc/mgpa/deviceid/base/e$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/deviceid/base/e$a;->a:Lcom/ihoc/mgpa/deviceid/base/e;

    iget-object v1, p0, Lcom/ihoc/mgpa/deviceid/base/e$a$a;->a:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/deviceid/base/e;->a(Lcom/ihoc/mgpa/deviceid/base/e;Landroid/os/IBinder;)V

    return-void
.end method
