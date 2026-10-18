.class Lcom/ihoc/mgpa/MgpaManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/MgpaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/MgpaManager;->registerCallback(Lcom/ihoc/mgpa/MgpaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/mgpa/MgpaManager;

.field final synthetic val$mgpaCallback:Lcom/ihoc/mgpa/MgpaCallback;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/MgpaManager;Lcom/ihoc/mgpa/MgpaCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/MgpaManager$3;->this$0:Lcom/ihoc/mgpa/MgpaManager;

    iput-object p2, p0, Lcom/ihoc/mgpa/MgpaManager$3;->val$mgpaCallback:Lcom/ihoc/mgpa/MgpaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifySystemInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/MgpaManager$3;->val$mgpaCallback:Lcom/ihoc/mgpa/MgpaCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/MgpaCallback;->notifySystemInfo(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/MgpaManager;->access$000()Lcom/ihoc/mgpa/MgpaCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/MgpaManager;->access$000()Lcom/ihoc/mgpa/MgpaCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/MgpaCallback;->notifySystemInfo(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
