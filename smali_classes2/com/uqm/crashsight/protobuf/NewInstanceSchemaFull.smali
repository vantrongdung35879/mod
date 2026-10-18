.class final Lcom/uqm/crashsight/protobuf/NewInstanceSchemaFull;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/NewInstanceSchema;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 36
    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;

    sget-object v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;->a:Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;

    .line 37
    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
