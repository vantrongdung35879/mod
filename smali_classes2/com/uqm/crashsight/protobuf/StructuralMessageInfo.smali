.class final Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/MessageInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;
    }
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

.field private final b:Z

.field private final c:[I

.field private final d:[Lcom/uqm/crashsight/protobuf/FieldInfo;

.field private final e:Lcom/uqm/crashsight/protobuf/MessageLite;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/ProtoSyntax;Z[I[Lcom/uqm/crashsight/protobuf/FieldInfo;Ljava/lang/Object;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->a:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    .line 64
    iput-boolean p2, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->b:Z

    .line 65
    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->c:[I

    .line 66
    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->d:[Lcom/uqm/crashsight/protobuf/FieldInfo;

    .line 67
    const-string p1, "defaultInstance"

    invoke-static {p5, p1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageLite;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->e:Lcom/uqm/crashsight/protobuf/MessageLite;

    return-void
.end method

.method public static a(I)Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;
    .locals 1

    .line 107
    new-instance v0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/ProtoSyntax;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->a:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->b:Z

    return v0
.end method

.method public final c()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->e:Lcom/uqm/crashsight/protobuf/MessageLite;

    return-object v0
.end method

.method public final d()[I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->c:[I

    return-object v0
.end method

.method public final e()[Lcom/uqm/crashsight/protobuf/FieldInfo;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->d:[Lcom/uqm/crashsight/protobuf/FieldInfo;

    return-object v0
.end method
