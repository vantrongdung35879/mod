.class Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread$1;->this$0:Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
