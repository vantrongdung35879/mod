.class public Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage;",
        "BType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;",
        "IType::",
        "Lcom/uqm/crashsight/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;"
    }
.end annotation


# instance fields
.field private a:Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;

.field private b:Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBType;"
        }
    .end annotation
.end field

.field private c:Lcom/uqm/crashsight/protobuf/GeneratedMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMType;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessage;Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;",
            "Z)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessage;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->c:Lcom/uqm/crashsight/protobuf/GeneratedMessage;

    .line 81
    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->a:Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;

    .line 82
    iput-boolean p3, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->d:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1212
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1213
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->c:Lcom/uqm/crashsight/protobuf/GeneratedMessage;

    .line 1215
    :cond_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->a:Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;

    if-eqz v0, :cond_1

    .line 1216
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;->a()V

    const/4 v0, 0x0

    .line 1219
    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->d:Z

    :cond_1
    return-void
.end method

.method public final b()Lcom/uqm/crashsight/protobuf/GeneratedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMType;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->c:Lcom/uqm/crashsight/protobuf/GeneratedMessage;

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;->buildPartial()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/GeneratedMessage;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->c:Lcom/uqm/crashsight/protobuf/GeneratedMessage;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->c:Lcom/uqm/crashsight/protobuf/GeneratedMessage;

    return-object v0
.end method

.method public final c()Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBType;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->c:Lcom/uqm/crashsight/protobuf/GeneratedMessage;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessage;->a()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;

    .line 132
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->c:Lcom/uqm/crashsight/protobuf/GeneratedMessage;

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    .line 133
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;->markClean()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;

    return-object v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/MessageOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TIType;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;

    if-eqz v0, :cond_0

    return-object v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->c:Lcom/uqm/crashsight/protobuf/GeneratedMessage;

    return-object v0
.end method
