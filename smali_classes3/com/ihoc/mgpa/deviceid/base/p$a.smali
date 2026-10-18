.class Lcom/ihoc/mgpa/deviceid/base/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/deviceid/base/v$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/deviceid/base/p;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihoc/mgpa/deviceid/base/p;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/deviceid/base/p;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/deviceid/base/p$a;->a:Lcom/ihoc/mgpa/deviceid/base/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/base/p$a;->a:Lcom/ihoc/mgpa/deviceid/base/p;

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/deviceid/base/p;->a(Lcom/ihoc/mgpa/deviceid/base/p;Landroid/os/IBinder;)V

    return-void
.end method
