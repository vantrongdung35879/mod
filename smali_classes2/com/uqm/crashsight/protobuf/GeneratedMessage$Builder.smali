.class public abstract Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;
.super Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder$BuilderParentImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder<",
        "TBuilderType;>;>",
        "Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder<",
        "TBuilderType;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;

.field private b:Z

.field private c:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 398
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 401
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;-><init>()V

    .line 395
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;->c:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    const/4 p1, 0x0

    .line 402
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;

    return-void
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Message;->newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;

    .line 441
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;->buildPartial()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method protected final b()V
    .locals 1

    .line 697
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;->a:Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;

    if-eqz v0, :cond_0

    .line 698
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;->a()V

    const/4 v0, 0x0

    .line 701
    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;->b:Z

    :cond_0
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;->a()Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected markClean()V
    .locals 1

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;->b:Z

    return-void
.end method
