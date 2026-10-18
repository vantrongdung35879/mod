.class Lcom/ihoc/mgpa/MgpaManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/MgpaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/MgpaManager;->registerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/mgpa/MgpaManager;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/MgpaManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/MgpaManager$1;->this$0:Lcom/ihoc/mgpa/MgpaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifySystemInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->notifySystemInfoToUnity(Ljava/lang/String;)V

    return-void
.end method
