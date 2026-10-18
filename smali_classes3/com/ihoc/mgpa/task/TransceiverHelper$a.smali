.class Lcom/ihoc/mgpa/task/TransceiverHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/reflectinterface/ITransceiverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/task/TransceiverHelper;->registerCallback(Lcom/ihoc/mgpa/MgpaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihoc/mgpa/MgpaCallback;

.field final synthetic b:Lcom/ihoc/mgpa/task/TransceiverHelper;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/task/TransceiverHelper;Lcom/ihoc/mgpa/MgpaCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/task/TransceiverHelper$a;->b:Lcom/ihoc/mgpa/task/TransceiverHelper;

    iput-object p2, p0, Lcom/ihoc/mgpa/task/TransceiverHelper$a;->a:Lcom/ihoc/mgpa/MgpaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifySystemInfo(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/task/TransceiverHelper$a;->a:Lcom/ihoc/mgpa/MgpaCallback;

    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/MgpaCallback;->notifySystemInfo(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
