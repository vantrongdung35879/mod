.class public abstract Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;
.super Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method private a()V
    .locals 2

    .line 353
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->c:Z

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    sget-object v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$MethodToInvoke;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 1361
    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    .line 1362
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;)V

    .line 1363
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->c:Z

    :cond_0
    return-void
.end method

.method private static a(Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 419
    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Schema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;)Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 413
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->a()V

    .line 414
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;)V

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1424
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->a:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    .line 1380
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a()Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    .line 2387
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->c:Z

    if-eqz v1, :cond_0

    .line 2388
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    goto :goto_0

    .line 2391
    :cond_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    .line 3171
    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/uqm/crashsight/protobuf/Schema;->d(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 2393
    iput-boolean v1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->c:Z

    .line 2394
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    .line 1381
    :goto_0
    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;)Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method
