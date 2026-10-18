.class Lcom/ihoc/mgpa/deviceid/base/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/deviceid/base/v$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/deviceid/base/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihoc/mgpa/deviceid/base/e;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/deviceid/base/e;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/deviceid/base/e$a;->a:Lcom/ihoc/mgpa/deviceid/base/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "huawei device id service connected success! start to check oaid!"

    invoke-static {v0}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ihoc/mgpa/deviceid/base/e$a$a;

    invoke-direct {v1, p0, p1}, Lcom/ihoc/mgpa/deviceid/base/e$a$a;-><init>(Lcom/ihoc/mgpa/deviceid/base/e$a;Landroid/os/IBinder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
