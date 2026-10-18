.class Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6$1;
.super Ljava/lang/Object;
.source "INTLAuthDataBlockStore.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6;->onSuccess(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6;


# direct methods
.method constructor <init>(Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6$1;->this$0:Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6$1;->this$0:Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6;

    iget-object v0, v0, Lcom/intlgame/api/tool/INTLAuthDataBlockStore$6;->val$key:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/intlgame/api/tool/INTLAuthDataBlockStore;->access$300(Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)V

    return-void
.end method
