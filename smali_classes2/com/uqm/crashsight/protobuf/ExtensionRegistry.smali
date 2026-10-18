.class public Lcom/uqm/crashsight/protobuf/ExtensionRegistry;
.super Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/ExtensionRegistry$DescriptorIntPair;,
        Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;
    }
.end annotation


# static fields
.field private static f:Lcom/uqm/crashsight/protobuf/ExtensionRegistry;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistry$DescriptorIntPair;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistry$DescriptorIntPair;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 299
    new-instance v0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;-><init>(B)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->f:Lcom/uqm/crashsight/protobuf/ExtensionRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 270
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;-><init>()V

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->b:Ljava/util/Map;

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->c:Ljava/util/Map;

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->d:Ljava/util/Map;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->e:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    .line 292
    sget-object p1, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->a:Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;-><init>(Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    .line 293
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->b:Ljava/util/Map;

    .line 294
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->c:Ljava/util/Map;

    .line 295
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->d:Ljava/util/Map;

    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->e:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/uqm/crashsight/protobuf/ExtensionRegistry;
    .locals 1

    .line 99
    sget-object v0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->f:Lcom/uqm/crashsight/protobuf/ExtensionRegistry;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->b(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->d:Ljava/util/Map;

    new-instance v1, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$DescriptorIntPair;

    invoke-direct {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$DescriptorIntPair;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;

    return-object p1
.end method
